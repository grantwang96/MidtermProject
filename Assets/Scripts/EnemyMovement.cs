using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyMovement : MonoBehaviour {

    float searchSpeed = 3f;
    float sprintSpeed = 4f;
    float pushForce = 8f;
    float searchDistance = 30f;
    public GameObject LocNode;

    Vector3[] wanderLocs = {
        new Vector3(25, 1.5f, -25),
        new Vector3(25, 1.5f, 15),
        new Vector3(15, 1.5f, 15),
        new Vector3(15, 1.5f, -15),
        new Vector3(10, 1.5f, -15),
        new Vector3(-10, 1.5f, 15),
        new Vector3(-15, 1.5f, 15),
        new Vector3(-15, 1.5f, -15),
        new Vector3(-15, 1.5f, -25),
        new Vector3(-30, 1.5f, -25),
        new Vector3(-30, 1.5f, -40),
        new Vector3(-20, 1.5f, -50),
        new Vector3(-30, 1.5f, -60),
        new Vector3(-40, 1.5f, -50),
        new Vector3(-30, 1.5f, -25),
        new Vector3(0, 1.5f, -25),
        new Vector3(25, 1.5f, -25),
        new Vector3(50, 1.5f, -20),
        new Vector3(30, 1.5f, -30),
        new Vector3(50, 1.5f, -40),
        new Vector3(30, 1.5f, -30),
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
    GameObject player;
    Transform playerLoc;
    Vector3 playerLastKnownLoc;
    Vector3 targetLoc;

    public enum moveStates
    {
        sightedChase = 0x01,
        wander = 0x02,
        lastKnownLocation = 0x04,
        radialScan = 0x08,
    }

	// Use this for initialization
	void Start () {
        player = GameObject.Find("Player");
        playerLoc = player.transform;
        enCharCon = GetComponent<CharacterController>();

        Debug.Log("Switching to wander");
        moveController = moveStates.wander;

        transform.position = wanderLocs[0];
        current = 1;
        targetLoc = wanderLocs[current];
        for(int i = 0; i<wanderLocs.Length; i++)
        {
            GameObject newNode = Instantiate(LocNode);
            newNode.transform.position = wanderLocs[i];
        }
    }
	
	// Update is called once per frame
	void Update () {

        ghostLayer = 1 << 8;
        obstacleLayer = 1 << 9;
        nodeLayer = 1 << 10;
        
        ghostLayer = ~ghostLayer;
        obstacleLayer = ~obstacleLayer;
        nodeLayer = ~nodeLayer;

        enCharCon.Move(Vector3.up * Time.deltaTime * Physics.gravity.y); // Force of gravity

        if(moveController == moveStates.wander) // If wandering around
        {
            Vector3 playerDirection = playerLoc.position - transform.position; // Get player's direction from enemy
            float angle = Vector3.Angle(playerDirection, transform.forward); // Check angle from enemy's front
            // Quaternion angle = Quaternion.AngleAxis(60, transform.forward);
            if(angle < 70f && Vector3.Distance(transform.position, playerLoc.position) < searchDistance) // If player's within field of vision
            {
                lookForPlayer();
            }
            rotateTowardsNode();
            enCharCon.Move(transform.forward * Time.deltaTime * searchSpeed);
        }
        else if(moveController == moveStates.lastKnownLocation)
        {
            lookForPlayer();
            rotateTowardsLastKnownLocation();
            enCharCon.Move(transform.forward * Time.deltaTime * sprintSpeed);
        }
        else if(moveController == moveStates.radialScan)
        {
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
            }
        }
        else
        {
            RaycastHit hit;
            Vector3 rayCastPosition = new Vector3(transform.position.x, transform.position.y + 0.7f, transform.position.z);

            // Physics.Raycast(rayCastPosition, playerLoc.position - transform.position, out hit, Vector3.Distance(transform.position, playerLoc.position))
            
            if (Physics.Raycast(rayCastPosition, playerLoc.position - transform.position, out hit, Vector3.Distance(transform.position, playerLoc.position), ghostLayer))
            {
                if (hit.transform.tag == "Wall")
                {
                    Debug.Log("Switching to LastKnownLocation");
                    playerLastKnownLoc = playerLoc.position;
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
        if (coll.transform.name == "Player Ghost" && moveController == moveStates.lastKnownLocation)
        {
            GameObject.Find("Player Ghost").transform.position = new Vector3(0, -100, 0);
            moveController = moveStates.radialScan;
            forwardAtTurn = transform.TransformDirection(Vector3.forward);
        }
        if(coll.transform.CompareTag("Node") && moveController == moveStates.wander)
        {
            if(coll.transform.position == wanderLocs[current])
            {
                if (current >= wanderLocs.Length-1) { current = 0; }
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
            Vector3 pushDir = enCharCon.velocity;
            coll.collider.attachedRigidbody.AddForce(pushDir * pushForce);
        }
    }

    void lookForPlayer()
    {
        RaycastHit hit;
        Vector3 rayCastPosition = new Vector3(transform.position.x, transform.position.y + 0.7f, transform.position.z);
        Vector3 playerTargetPos = new Vector3(playerLoc.position.x, playerLoc.position.y + 0.7f, playerLoc.position.z);
        if (Physics.Raycast(rayCastPosition, playerLoc.position - transform.position, out hit, searchDistance))
        {
            if (hit.transform.tag == "Player")
            {
                Debug.Log("Switching to Sighted Chase");
                GameObject.Find("Player Ghost").transform.position = new Vector3(0, -100, 0);
                moveController = moveStates.sightedChase;
            }
        }
    }

    void rotateTowardsPlayer()
    {
        Vector3 playerPos = new Vector3(playerLoc.position.x, 0, playerLoc.position.z);
        Vector3 enPos = new Vector3(transform.position.x, 0, transform.position.z);
        Quaternion look = Quaternion.LookRotation(playerPos - enPos);
        transform.rotation = Quaternion.Slerp(transform.rotation, look, 4f * Time.deltaTime);
    }

    void rotateTowardsNode()
    {
        Vector3 targetNode = wanderLocs[current];
        Vector3 enPos = new Vector3(transform.position.x, 1.5f, transform.position.z);
        Quaternion look = Quaternion.LookRotation(targetNode - enPos);
        transform.rotation = Quaternion.Slerp(transform.rotation, look, 4f * Time.deltaTime);
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
            RaycastHit hit2;
            float distance = Vector3.Distance(transform.position, wanderLocs[i]);
            if(Physics.Raycast(transform.position, wanderLocs[i] - transform.position, out hit2))
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
                Debug.Log("Closest Node: " + wanderLocs[possibleReturnLocs[smallestInt]]);
            }
        }
        Debug.Log("Closest Node: " + wanderLocs[possibleReturnLocs[smallestInt]]);
        return possibleReturnLocs[smallestInt];
    }
}
