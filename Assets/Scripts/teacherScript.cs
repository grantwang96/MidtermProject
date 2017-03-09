using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class teacherScript : MonoBehaviour {

    public enum moveStates
    {
        sittingInBathroom = 0x01,
        movingTowardsClassroom = 0x02,
        openingClassroom = 0x04,
        movingTowardsEndNode = 0x08,
        sittingOutsideClassroom = 0x16,
    }

    CharacterController charCon;
    public GameObject potentialDoorObstacle;
    public GameObject teacherNode;
    public GameObject NPCMessage;
    bool startingMovement;

    Vector3[] travelNodes =
    {
        new Vector3(42, 1.5f, -35),
        new Vector3(30, 1.5f, -35),
        new Vector3(20, 1.5f, -25),
        new Vector3(-20, 1.5f, -25),
        new Vector3(-30, 1.5f, -39),
    };

    string[] messages =
    {
        "You left something in room 102? Hold on."+"\n"+"I'll go unlock the door for you.",
        "I'm going. Hold on.",
        "The door's unlocked. Hurry up and get what you need.",
    };

    int currentTravelNode;

    Vector3 endNode = new Vector3(-37, 1.5f, -30);

    moveStates moveController;
    float speed = 2f;
    float textTime;

	// Use this for initialization
	void Start () {
        moveController = moveStates.sittingInBathroom;
        currentTravelNode = 0;
        for(int i = 0; i< travelNodes.Length; i++)
        {
            GameObject newTeacherNode = Instantiate(teacherNode);
            newTeacherNode.transform.position = travelNodes[i];
        }
        GameObject finalTeacherNode = Instantiate(teacherNode);
        finalTeacherNode.transform.position = endNode;
        charCon = this.GetComponent<CharacterController>();
        startingMovement = false;
	}
	
	// Update is called once per frame
	void Update () {
        if(moveController == moveStates.sittingInBathroom && startingMovement)
        {
            if (textTime < 3f)
            {
                textTime += Time.deltaTime;
            }
            if (textTime >= 3f)
            {
                moveController = moveStates.movingTowardsClassroom;
            }
        }
		if(moveController == moveStates.movingTowardsClassroom)
        {
            if(currentTravelNode < travelNodes.Length) { rotateTowardNode(travelNodes[currentTravelNode]); }
            charCon.Move(transform.forward * Time.deltaTime * speed);

            if (!potentialDoorObstacle.GetComponent<regularDoor>().opened) {
                potentialDoorObstacle.GetComponent<regularDoor>().opened = true;
            }

        }
        else if(moveController == moveStates.openingClassroom)
        {
            GameObject.Find("KeyDoor").AddComponent<regularDoor>();
            GameObject.Find("KeyDoor").GetComponent<regularDoor>().opened = false;
            Destroy(GameObject.Find("KeyDoor").GetComponent<lockedDoor>());
            moveController = moveStates.movingTowardsEndNode;
        }
        else if(moveController == moveStates.movingTowardsEndNode)
        {
            rotateTowardNode(endNode);
            charCon.Move(transform.forward * Time.deltaTime * speed);
        }
	}

    void OnTriggerEnter(Collider coll)
    {
        if(coll.transform.name == "Hands" && moveController == moveStates.sittingInBathroom)
        {
            textTime = 0;
            startingMovement = true;
        }
        if(coll.transform.name == "Player")
        {
            if(moveController == moveStates.sittingInBathroom) { NPCMessage.transform.FindChild("Message").GetComponent<Text>().text = messages[0]; }
            else if(moveController == moveStates.movingTowardsClassroom)
            {
                if(textTime < 3f) { NPCMessage.transform.FindChild("Message").GetComponent<Text>().text = messages[0]; }
                else { NPCMessage.transform.FindChild("Message").GetComponent<Text>().text = messages[1]; }
            }else if(moveController == moveStates.movingTowardsEndNode || moveController == moveStates.sittingOutsideClassroom) { NPCMessage.GetComponent<Text>().text = messages[2]; }
            NPCMessage.SetActive(true);
        }
        if(coll.transform.tag == "teacherNode" && moveController == moveStates.movingTowardsClassroom)
        {
            if(currentTravelNode < travelNodes.Length)
            {
                if(coll.transform.position == travelNodes[currentTravelNode])
                {
                    currentTravelNode++;
                }
            }
            else
            {
                moveController = moveStates.openingClassroom;
            }
        }
        if(coll.transform.tag == "teacherNode" && moveController == moveStates.movingTowardsEndNode) { moveController = moveStates.sittingOutsideClassroom; }
    }

    void OnTriggerStay(Collider coll)
    {
        if (coll.transform.name == "Player"
            && (moveController == moveStates.sittingInBathroom ||
            moveController == moveStates.sittingOutsideClassroom))
        {
            Debug.Log("Turning");
            Vector3 dir = coll.transform.position - transform.position;
            Quaternion look = Quaternion.LookRotation(dir);
            transform.rotation = Quaternion.Lerp(transform.rotation, look, 3.5f * Time.deltaTime);
        }
    }

    void OnTriggerExit(Collider coll)
    {
        if(coll.transform.name == "Player")
        {
            NPCMessage.SetActive(false);
        }
    }

    void rotateTowardNode(Vector3 targetNode)
    {
        Vector3 pos = new Vector3(transform.position.x, 1.5f, transform.position.z);
        Quaternion look = Quaternion.LookRotation(targetNode - pos);
        transform.rotation = Quaternion.Slerp(transform.rotation, look, 3.5f * Time.deltaTime);
    }
}
