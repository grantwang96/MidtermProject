using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyMovement : MonoBehaviour {

    float searchSpeed = 4f;
    float sprintSpeed = 4.5f;
    float pushForce = 16f;
    float obstacleRemovalTime;
    float searchDistance = 30f;
    public GameObject LocNode;

    Vector3[] wanderLocs = {
        new Vector3(25, 1.5f, -25), //0
        new Vector3(25, 1.5f, -10),
        new Vector3(25, 1.5f, 0),
        new Vector3(25, 1.5f, 15),
        new Vector3(15, 1.5f, 15),
        new Vector3(15, 1.5f, 0), // 5
        new Vector3(15, 1.5f, -15),
        new Vector3(10, 1.5f, -15),
        new Vector3(0, 1.5f, 0),
        new Vector3(-10, 1.5f, 15),
        new Vector3(-15, 1.5f, 15), // 10
        new Vector3(-15, 1.5f, 0),
        new Vector3(-15, 1.5f, -15),
        new Vector3(-15, 1.5f, -25),
        new Vector3(-30, 1.5f, -25),
        new Vector3(-30, 1.5f, -53), // 15
        new Vector3(-30, 1.5f, -25),
        new Vector3(0, 1.5f, -25),
        new Vector3(25, 1.5f, -25),
        new Vector3(38, 1.5f, -25f),
        new Vector3(57, 1.5f, -25f), // 20
        new Vector3(42, 1.5f, -25f),
        new Vector3(38, 1.5f, -25),
        new Vector3(38, 1.5f, -35),
        new Vector3(56, 1.5f, -35),
        new Vector3(38, 1.5f, -35), // 25
    };

    int current;
    int radialScanTurns = 0;
    float radialScanSpeed = 40f;
    Vector3 forwardAtTurn;
    List<int> possibleReturnLocs = new List<int>();
    int ghostLayer;
    int obstacleLayer;
    int nodeLayer;

    CharacterController enCharCon;

    moveStates moveController;
    moveStates prevMoveState;
    GameObject player;
    Transform playerLoc;
    Vector3 playerLastKnownLoc;
    Vector3 targetLoc;

    bool couldSeePlayer;
    float recoveryTime;

    public enum moveStates
    {
        sightedChase = 0x01,
        wander = 0x02,
        lastKnownLocation = 0x04,
        radialScan = 0x08,
        recovering = 0x16,
    }

	// Use this for initialization
	void Start () {
        player = GameObject.Find("Player");
        playerLoc = player.transform;
        enCharCon = GetComponent<CharacterController>();

        Debug.Log("Switching to wander");
        moveController = moveStates.wander;

        // System.Array.Reverse(wanderLocs);

        transform.position = wanderLocs[24];
        current = 25;
        targetLoc = wanderLocs[current];
        for(int i = 0; i<wanderLocs.Length; i++)
        {
            GameObject newNode = Instantiate(LocNode);
            newNode.transform.position = wanderLocs[i];
        }
        couldSeePlayer = false;
    }
	
	// Update is called once per frame
	void Update () {

        ghostLayer = 1 << 8;
        obstacleLayer = 1 << 9;
        int obstacleInfLayer = obstacleLayer;
        nodeLayer = 1 << 10;
        
        ghostLayer = ~ghostLayer;
        obstacleLayer = ~obstacleLayer;
        nodeLayer = ~nodeLayer;

        enCharCon.Move(Vector3.up * Time.deltaTime * Physics.gravity.y); // Force of gravity

        if(moveController == moveStates.wander) // If wandering around
        {
            couldSeePlayer = false;
            scanForPlayer();
            if(GameObject.Find("Player Ghost").transform.position != new Vector3(0, -100, 0))
            {
                GameObject.Find("Player Ghost").transform.position = new Vector3(0, -100, 0);
            }
            RaycastHit hit;
            Vector3 rayCastPosition = new Vector3(transform.position.x, transform.position.y + 0.7f, transform.position.z);
            Vector3 nodeTargetPos = new Vector3(wanderLocs[current].x, wanderLocs[current].y, wanderLocs[current].z);
            if (Physics.Raycast(rayCastPosition, nodeTargetPos - transform.position, out hit, searchDistance, obstacleLayer))
            {
                if (hit.transform.tag == "Door")
                {
                    if(hit.transform.gameObject.GetComponent<regularDoor>() == null)
                    {
                        if (current >= wanderLocs.Length - 1) { current = 0; }
                        else { current++; }
                        Debug.Log("Moving on to next node.");
                        Debug.Log("I see a: " + hit.transform.tag);
                    }
                }
            }
            rotateTowardsNode();
            enCharCon.Move(transform.forward * Time.deltaTime * searchSpeed);

        }
        else if(moveController == moveStates.lastKnownLocation)
        {
            couldSeePlayer = false;
            lookForPlayer();
            rotateTowardsLastKnownLocation();
            enCharCon.Move(transform.forward * Time.deltaTime * sprintSpeed);
        }
        else if(moveController == moveStates.radialScan)
        {
            couldSeePlayer = false;
            Debug.Log("Performing Radial Scan");
            Vector3 playerDirection = playerLoc.position - transform.position; // Get player's direction from enemy
            float angle = Vector3.Angle(playerDirection, transform.forward); // Check angle from enemy's front
            // Quaternion angle = Quaternion.AngleAxis(60, transform.forward);
            if (angle < 70f && Vector3.Distance(transform.position, playerLoc.position) < searchDistance) // If player's within field of vision
            {
                RaycastHit hit;
                Vector3 rayCastPosition = new Vector3(transform.position.x, transform.position.y + 0.7f, transform.position.z);
                Vector3 playerTargetPos = new Vector3(playerLoc.position.x, playerLoc.position.y + 0.7f, playerLoc.position.z);
                if (Physics.Raycast(rayCastPosition, playerLoc.position - transform.position, out hit, searchDistance))
                {
                    if (hit.transform.tag == "Player")
                    {
                        Debug.Log("Switching to Sighted Chase!");
                        moveController = moveStates.sightedChase;
                        radialScanTurns = 0;
                    }
                }
            }
            transform.Rotate(0, radialScanSpeed * Time.deltaTime, 0);
            float turnAngle = Vector3.Angle(forwardAtTurn, transform.forward);
            if(turnAngle >= 70f)
            {
                radialScanSpeed *= -1;
                radialScanTurns++;
            }
            if(radialScanTurns >= 2)
            {
                returnToWander();
                radialScanTurns = 0;
            }
        }
        else if(moveController == moveStates.recovering)
        {
            recoveryTime += Time.deltaTime;
            knockBackObjects(obstacleInfLayer);

            RaycastHit hit;
            Vector3 rayCastPosition = new Vector3(transform.position.x, transform.position.y + 0.7f, transform.position.z);
            if (Physics.Raycast(rayCastPosition, playerLoc.position - transform.position, out hit, Vector3.Distance(transform.position, playerLoc.position), ghostLayer))
            {
                if (hit.transform.name == "Player")
                {
                    couldSeePlayer = true;
                    prevMoveState = moveStates.sightedChase;
                }
                else if (hit.transform.tag != "Player" && prevMoveState == moveStates.sightedChase)
                {
                    prevMoveState = moveStates.lastKnownLocation;
                    playerLastKnownLoc = playerLoc.position;
                    GameObject.Find("Player Ghost").transform.position = playerLastKnownLoc;
                    couldSeePlayer = false;
                }
            }

            if (recoveryTime >= 0.2f)
            {
                if (prevMoveState == moveStates.wander)
                {
                    returnToWander();
                }
                else if (prevMoveState == moveStates.lastKnownLocation)
                {
                    moveController = moveStates.lastKnownLocation;
                }
                else
                {
                    moveController = moveStates.radialScan;
                    lookForPlayer();
                }
            }
        }
        /*
        else if(moveController == moveStates.removingObstacles)
        {
            Debug.Log("Switching to Remove Obstacles!");
            bool touching = knockBackObjects(obstacleInfLayer);
            if (couldSeePlayer)
            {
                RaycastHit hit;
                Vector3 rayCastPosition = new Vector3(transform.position.x, transform.position.y + 0.7f, transform.position.z);
                if (Physics.Raycast(rayCastPosition, playerLoc.position - transform.position, out hit, Vector3.Distance(transform.position, playerLoc.position), ghostLayer))
                {
                    if(hit.transform.name == "Player")
                    {
                        couldSeePlayer = true;
                        prevMoveState = moveStates.sightedChase;
                    }
                    else if(hit.transform.tag != "Player")
                    {
                        prevMoveState = moveStates.lastKnownLocation;
                        playerLastKnownLoc = playerLoc.position;
                        GameObject.Find("Player Ghost").transform.position = playerLastKnownLoc;
                        couldSeePlayer = false;
                    }
                }
            }
            
            
            if (!touching)
            {
                if(prevMoveState == moveStates.sightedChase)
                {
                    moveController = moveStates.sightedChase;
                }
                else if(prevMoveState == moveStates.lastKnownLocation) { moveController = moveStates.lastKnownLocation; }
                else { moveController = moveStates.wander; }
                lookForPlayer();
            }
        }*/
        else
        {
            RaycastHit hit;
            Vector3 rayCastPosition = new Vector3(transform.position.x, transform.position.y + 0.7f, transform.position.z);
            couldSeePlayer = true;
            // Physics.Raycast(rayCastPosition, playerLoc.position - transform.position, out hit, Vector3.Distance(transform.position, playerLoc.position))
            
            if (Physics.Raycast(rayCastPosition, playerLoc.position - transform.position, out hit, Vector3.Distance(transform.position, playerLoc.position), ghostLayer))
            {
                if (hit.transform.tag == "Wall" || hit.transform.tag == "Door")
                {
                    Debug.Log("Switching to LastKnownLocation");
                    playerLastKnownLoc = playerLoc.position;
                    couldSeePlayer = false;
                    GameObject.Find("Player Ghost").transform.position = playerLastKnownLoc;
                    GameObject.Find("Player Ghost").transform.rotation = playerLoc.rotation;
                    moveController = moveStates.lastKnownLocation;
                }
            }
            rotateTowardsPlayer();
            enCharCon.Move(transform.forward * Time.deltaTime * sprintSpeed);
        }
    }

    void OnTriggerEnter(Collider coll)
    {
        
    }

    void OnTriggerStay(Collider coll)
    {
        if (coll.transform.name == "Player Ghost" && moveController == moveStates.lastKnownLocation)
        {
            GameObject.Find("Player Ghost").transform.position = new Vector3(0, -100, 0);
            moveController = moveStates.radialScan;
            forwardAtTurn = transform.TransformDirection(Vector3.forward);
            lookForPlayer();
        }
        if (coll.transform.CompareTag("Node") && moveController == moveStates.wander)
        {
            if (coll.transform.position == wanderLocs[current])
            {
                if (current >= wanderLocs.Length - 1) { current = 0; }
                else { current++; }
            }
        }
    }

    void OnControllerColliderHit(ControllerColliderHit coll)
    {
        if (coll.transform.tag == "Floor")
        {
            string currRoom = coll.gameObject.GetComponent<floorConnections>().floorName;
            GameManager.Instance.enemyCurrentRoom = currRoom;
        }
        if (coll.collider.attachedRigidbody != null)
        {
            prevMoveState = moveController;
            moveController = moveStates.recovering;
            recoveryTime = 0f;

        }
        /*
        if (coll.transform.CompareTag("Door"))
        {
            coll.gameObject.GetComponent<regularDoor>().opened = true;
        }
        */
        if(coll.transform.name == "Player")
        {
            Debug.Log("Touching me!");
            GameManager.Instance.lose();
        }
    }

    void nextNode(RaycastHit hit)
    {
        if (hit.transform.position == wanderLocs[current])
        {
            if (current >= wanderLocs.Length - 1) { current = 0; }
            else { current++; }
        }
    }

    void scanForPlayer()
    {
        Vector3 playerDirection = playerLoc.position - transform.position; // Get player's direction from enemy
        float angle = Vector3.Angle(playerDirection, transform.forward); // Check angle from enemy's front
                                                                         // Quaternion angle = Quaternion.AngleAxis(60, transform.forward);
        if (angle < 70f && Vector3.Distance(transform.position, playerLoc.position) < searchDistance) // If player's within field of vision
        {
            lookForPlayer();
        }
    }

    void lookForPlayer()
    {
        RaycastHit hit;
        Vector3 rayCastPosition = new Vector3(transform.position.x, transform.position.y + 0.7f, transform.position.z);
        Vector3 playerTargetPos = new Vector3(playerLoc.position.x, playerLoc.position.y + 0.7f, playerLoc.position.z);
        if (Physics.Raycast(rayCastPosition, playerLoc.position - transform.position, out hit, searchDistance, obstacleLayer))
        {
            if (hit.transform.tag == "Player")
            {
                Debug.Log("Switching to Sighted Chase");
                couldSeePlayer = true;
                GameObject.Find("Player Ghost").transform.position = new Vector3(0, -100, 0);
                moveController = moveStates.sightedChase;
            }
        }
    }

    bool knockBackObjects(int obstacleInfLayer) // knockout objects
    {
        bool touching = false;
        Collider[] inRangeColliders = Physics.OverlapSphere(transform.position, 1.5f);
        foreach (Collider possibleObstacle in inRangeColliders)
        {
            if (possibleObstacle == this.GetComponent<Collider>())
            {
                continue;
            }
            Vector3 pObPos = possibleObstacle.transform.position;
            Vector3 possObDir = pObPos - transform.position;
            float distance = Vector3.Distance(pObPos, transform.position);
            if (Physics.Raycast(transform.position, pObPos - transform.position, distance, obstacleInfLayer))
            {
                if (possibleObstacle.attachedRigidbody != null)
                {
                    touching = true;
                    possibleObstacle.attachedRigidbody
                        .AddForce(new Vector3(possObDir.x, 2f, possObDir.z) * pushForce);
                }
            }
        }
        return touching;
    }

    void rotateTowardsPlayer()
    {
        Vector3 playerPos = new Vector3(playerLoc.position.x, 0, playerLoc.position.z);
        Vector3 enPos = new Vector3(transform.position.x, 0, transform.position.z);
        Quaternion look = Quaternion.LookRotation(playerPos - enPos);
        transform.rotation = Quaternion.Slerp(transform.rotation, look, 3.5f * Time.deltaTime);
    }

    void rotateTowardsNode()
    {
        Vector3 targetNode = wanderLocs[current];
        Vector3 enPos = new Vector3(transform.position.x, 1.5f, transform.position.z);
        Quaternion look = Quaternion.LookRotation(targetNode - enPos);
        transform.rotation = Quaternion.Slerp(transform.rotation, look, 3.5f * Time.deltaTime);
    }

    void rotateTowardsLastKnownLocation()
    {
        Vector3 playerPos = new Vector3(playerLastKnownLoc.x, 0, playerLastKnownLoc.z);
        Vector3 enPos = new Vector3(transform.position.x, 0, transform.position.z);
        Quaternion look = Quaternion.LookRotation(playerPos - enPos);
        transform.rotation = Quaternion.Slerp(transform.rotation, look, 4f * Time.deltaTime);
    }

    void returnToWander()
    {
        possibleReturnLocs.Clear();
        for(int i = 0; i < wanderLocs.Length; i++)
        {
            int ignoreObs = 1 << 9;
            ignoreObs = ~ignoreObs;
            RaycastHit hit2;
            float distance = Vector3.Distance(transform.position, wanderLocs[i]);
            if (Physics.Raycast(transform.position, wanderLocs[i] - transform.position, out hit2, distance, obstacleLayer))
            {
                if(hit2.transform.tag == "Node")
                {
                    possibleReturnLocs.Add(i);
                }
            }
        }
        Debug.Log("Locations: " + possibleReturnLocs.Count);
        if (possibleReturnLocs.Count > 0)
        {

            current = findSmallestInt();
            Debug.Log("Returning to: " + wanderLocs[current]);
        }

        Debug.Log("Switching to wander");
        moveController = moveStates.wander;
    }

    int findSmallestInt()
    {
        int smallestInt = 0;
        for(int i = 0; i < possibleReturnLocs.Count;i++)
        {
            float Dist1 = Vector3.Distance(transform.position, wanderLocs[possibleReturnLocs[i]]);
            float Dist2 = Vector3.Distance(transform.position, wanderLocs[possibleReturnLocs[smallestInt]]);
            if(Dist1 < Dist2)
            {
                smallestInt = i;
            }
        }
        Debug.Log("Closest Node: " + wanderLocs[possibleReturnLocs[smallestInt]]);
        return possibleReturnLocs[smallestInt];
    }
}
