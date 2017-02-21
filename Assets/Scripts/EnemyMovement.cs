using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyMovement : MonoBehaviour {

    float searchSpeed = 4f;
    float sprintSpeed = 8f;
    float pushForce = 8f;
    float wanderRotateSpeed = 60f;
    float searchDistance = 30f;
    float startRotateTime;
    int turnRight;
    bool rotating;

    CharacterController enCharCon;

    Transform previousTransform;

    moveStates moveController;
    GameObject player;
    Transform playerLoc;
    Vector3 playerLastKnownLoc;
    Vector3 targetLoc;
    Transform wallLoc;

    public enum moveStates
    {
        sightedChase = 0x01,
        wander = 0x02,
        lastKnownLocation = 0x04,
    }

	// Use this for initialization
	void Start () {
        player = GameObject.Find("Player");
        playerLoc = player.transform;
        enCharCon = GetComponent<CharacterController>();
        moveController = moveStates.sightedChase;
    }
	
	// Update is called once per frame
	void Update () {
        
        enCharCon.Move(Vector3.up * Time.deltaTime * Physics.gravity.y); // Force of gravity
        if(moveController == moveStates.wander)
        {
            Vector3 playerDirection = playerLoc.position - transform.position;
            float angle = Vector3.Angle(playerDirection, transform.forward);
            // Quaternion angle = Quaternion.AngleAxis(60, transform.forward);
            if(angle < 45f && Vector3.Distance(transform.position, playerLoc.position) < searchDistance)
            {
                Debug.Log("I know you're there!");
                lookForPlayer();
            }
            if(rotating && startRotateTime + 1.5f > Time.time)
            {
                transform.Rotate(0, wanderRotateSpeed * Time.deltaTime * turnRight, 0);
            }
            else
            {
                rotating = false;
            }
            enCharCon.Move(transform.forward * Time.deltaTime * searchSpeed);
        }
        else if(moveController == moveStates.lastKnownLocation)
        {
            rotateTowardsLastKnownLocation();
            enCharCon.Move(transform.forward * Time.deltaTime * sprintSpeed);
        }
        else
        {
            RaycastHit hit;
            Vector3 rayCastPosition = new Vector3(transform.position.x, transform.position.y + 0.7f, transform.position.z);
            if (Physics.Raycast(rayCastPosition, transform.forward, out hit, Vector3.Distance(transform.position, playerLoc.position)))
            {
                if (hit.transform.tag == "Wall")
                {
                    moveController = moveStates.wander;
                    playerLastKnownLoc = playerLoc.position;
                    GameObject.Find("Player Ghost").transform.position = playerLastKnownLoc;
                    Debug.Log("Where'd he go?");
                }
            }
            rotateTowardsPlayer();
            enCharCon.Move(transform.forward * Time.deltaTime * sprintSpeed);
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
            Debug.Log("Nudging: " + coll.transform.name);
            Vector3 pushDir = enCharCon.velocity;
            coll.collider.attachedRigidbody.AddForce(pushDir * pushForce);
        }
        if (coll.transform.tag == "Wall" && !rotating && moveController == moveStates.wander)
        {
            previousTransform = transform;
            Vector3 collLocalTransform = previousTransform.InverseTransformDirection(coll.transform.position);

            if (collLocalTransform.x >= 0 && !rotating) { turnRight = -1; }
            else { turnRight = 1; }
            Debug.Log("Turn Right: "+turnRight);
            Debug.Log("Bumped wall!");
            Debug.Log("Set to wander!");
            startRotateTime = Time.time;
            rotating = true;
        }
        if (coll.transform.name == "Player Ghost")
        {
            moveController = moveStates.wander;
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
                Debug.Log("That's the player!");
                moveController = moveStates.sightedChase;
            }
        }
    }

    void rotateTowardsPlayer()
    {
        Vector3 playerPos = new Vector3(playerLoc.position.x, 0, playerLoc.position.z);
        Vector3 enPos = new Vector3(transform.position.x, 0, transform.position.z);
        Quaternion look = Quaternion.LookRotation(playerPos - enPos);
        transform.rotation = Quaternion.Slerp(transform.rotation, look, 3f * Time.deltaTime);
    }

    void rotateTowardsLastKnownLocation()
    {
        Vector3 playerPos = new Vector3(playerLastKnownLoc.x, 0, playerLastKnownLoc.z);
        Vector3 enPos = new Vector3(transform.position.x, 0, transform.position.z);
        Quaternion look = Quaternion.LookRotation(playerPos - enPos);
        transform.rotation = Quaternion.Slerp(transform.rotation, look, 3f * Time.deltaTime);
    }

    void pathFinder()
    {

    }
}
