using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pickUpRayCast : MonoBehaviour {
    float pickUpDistance = 2f;
    GameObject currentlyHeld;
    bool dropping;
    Vector3 localPos;
    float distanceFromPlayer;
	// Use this for initialization
	void Start () {
        dropping = false;
        localPos = new Vector3(0, 1, 1.5f);
        distanceFromPlayer = 0;
	}
	
	// Update is called once per frame
	void Update () {

        if(currentlyHeld != null)
        {
            distanceFromPlayer = Vector3.Distance(transform.position, currentlyHeld.transform.position);
        }

        // 1. constract a "Ray" based on the way the camera is looking
        Ray ray = new Ray(Camera.main.transform.position, Camera.main.transform.forward);
        
        //2. Reserve some space in memory to remember what we hit
        RaycastHit rayHit = new RaycastHit(); // this is just a blank variable right now

        
        //3. Shoot our raycast
        if (Physics.Raycast(ray, out rayHit, pickUpDistance))
        {
            //4. Did player click?
            if (Input.GetMouseButton(0) && rayHit.transform.tag == "canBeHeld" && currentlyHeld == null)
            {
                Debug.Log("Picked up object!");
                currentlyHeld = rayHit.collider.gameObject;
                currentlyHeld.transform.parent = Camera.main.transform; // parent thing to camera
                currentlyHeld.transform.localPosition = Vector3.Lerp(currentlyHeld.transform.localPosition, localPos, 0.5f);
            }
        }
        
        // 5. did player stop clicking? then drop the object
        if (Input.GetMouseButton(0) == false && currentlyHeld != null)
        {
            // currentlyHeld.GetComponent<Rigidbody>().useGravity = true;
            currentlyHeld.transform.parent = null; // unparent object
            currentlyHeld = null; // forget about it
            Debug.Log("Dropped Object");
        }

    }
}
