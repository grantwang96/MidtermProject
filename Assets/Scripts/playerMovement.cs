using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class playerMovement : MonoBehaviour {

    float moveSpeed = 3f; // Movement speed
    float maxSpeed = 4f;
    float sprintMult = 1.25f;
    float jumpPower = 21f; // Jump power
    float stoppingPower = 10f;
    float horizontal;
    float vertical;
    float jumpVelocity;
    float fallVelocity;
    float gravity = -2.5f;
    float pushForce = 3f;
    public bool hasKey = false;

    CharacterController playerCharCon; // For quick access to player's character controller
    Rigidbody rbody; // For quick access to player's rigidbody
    Vector3 inputVector; //To calculate player's movement based on inputs

    public bool canJump; // To check if playing can jump.
    public bool jumping; // To check if player has commenced jumping for FixedUpdate()

	// Use this for initialization
	void Start () {

        //INITIALIZE PLAYER'S COMPONENTS
        playerCharCon = this.GetComponent<CharacterController>();
        rbody = GetComponent<Rigidbody>();
        jumpVelocity = 0;
        fallVelocity = 0;
        hasKey = false;
	}
	
	// Update is called once per frame
	void Update () {
        int handLayer = 1 << 12;
        handLayer = ~handLayer;

        //GRAB INPUT FROM DEVICES
        horizontal = Input.GetAxis("Horizontal"); // this is bound to the horizontal axis: A and D (left/right movement)
        vertical = Input.GetAxis("Vertical"); // this is bound to the vertical axis: W and S (up/down movement)

        //ROTATING BASED ON MOUSE!
        transform.Rotate(0f, Input.GetAxis("Mouse X") * Time.deltaTime * 150f, 0f); // Turn with mouse movement

        if (Input.GetKey(KeyCode.LeftShift)) { sprintMult = 1.25f; }
        else { sprintMult = 1f; }

        //GETTING PLAYER'S MOVEMENT
        playerCharCon.Move(transform.forward * Time.deltaTime * maxSpeed * vertical * sprintMult); // move along forward facing
        playerCharCon.Move(transform.right * Time.deltaTime * maxSpeed * horizontal * sprintMult); // move along right/left

        //CHECKING FOR JUMP
        canJump = Physics.Raycast(transform.position, Vector3.down, 1.51f);
        canJump = Physics.Raycast(transform.position, Vector3.down, 1.51f, handLayer);
        if(canJump && Input.GetButtonDown("Jump"))
        {
            jumping = true;
            jumpVelocity = jumpPower;
            fallVelocity = 0f;
            //jumpCalculator();
        }
        //GRAVITY
        //playerCharCon.Move(Physics.gravity * 0.2f); // move the controller down

    }

    // For the silly Unity Physics
    void FixedUpdate()
    {
        if (jumping)
        {
            jumpVelocity = jumpCalculator();
            playerCharCon.Move(transform.up * Time.deltaTime * jumpVelocity);
            if(jumpVelocity <= 0) { jumping = false; }
        }
        else
        {
            playerGravity();
            // Debug.Log("Fall Velocity: "+fallVelocity);
            playerCharCon.Move(transform.up * Time.deltaTime * fallVelocity); // move the controller down
        }
        //FOR STOPPING
        //if (horizontal == 0 && canJump) { rbody.velocity = new Vector3(0, rbody.velocity.y, rbody.velocity.z); }
        //if (vertical == 0 && canJump) { rbody.velocity = new Vector3(rbody.velocity.x, rbody.velocity.y, 0); }
    }

    float jumpCalculator()
    {
        float jumpResult = jumpVelocity + (Physics.gravity.y * 0.2f);
        // Debug.Log(jumpResult);
        return jumpResult;
    }

    float playerGravity()
    {
        fallVelocity += gravity;
        if(fallVelocity > 10) { fallVelocity = 10; }
        return fallVelocity;
    }
    

    void OnTriggerStay(Collider coll)
    {
        if (coll.transform.name == "Enemy")
        {
            Debug.Log("Touching me!");
            GameManager.Instance.lose();
        }
        if (coll.transform.name == "Key")
        {
            hasKey = true;
            Destroy(coll.gameObject);
        }
    }

    void OnControllerColliderHit(ControllerColliderHit coll)
    {
        if (coll.collider.attachedRigidbody != null)
        {
            Vector3 pushDir = playerCharCon.velocity;
            coll.collider.attachedRigidbody.AddForce(pushDir * pushForce);
        }
        if(coll.transform.tag == "Door")
        {
            // Debug.Log("Touching Door!");
            // regularDoor doorCon = coll.gameObject.GetComponent<regularDoor>();
            // if (!doorCon.getOpCl()) { doorCon.open(); }
            // else { doorCon.close(); }
        }
        if(coll.transform.name == "Target")
        {
            Debug.Log("Got you!");
            GameManager.Instance.win();
        }
        /*
        if (coll.transform.name == "GoalDoor" && hasKey)
        {
            coll.gameObject.GetComponent<goalDoor>().openDoor();
        }else if(coll.transform.name == "GoalDoor" && !hasKey)
        {
            coll.gameObject
        }
        */
    }
    /*
    void OnCollisionEnter(Collision coll)
    {
        if (coll.transform.name == "Target")
        {
            Debug.Log("Got you!");
            GameManager.Instance.win();
        }
    }
    */
}
