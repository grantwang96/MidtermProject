using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pickUpRayCast : MonoBehaviour {
    float pickUpDistance = 5f;
    Collider currentlyHeld;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        // 1. constract a "Ray" based on the way the camera is looking
        Ray ray = new Ray(Camera.main.transform.position, Camera.main.transform.forward);

        //2. Reserve some space in memory to remember what we hit
        RaycastHit rayHit = new RaycastHit(); // this is just a blank variable right now

        //3. Shoot our raycast
        if(Physics.Raycast(ray, out rayHit, pickUpDistance))
        {
            //4. Did player click?
            if (Input.GetMouseButton(0) && rayHit.transform.tag == "canBeHeld")
            {
                currentlyHeld = rayHit.collider; // remember the thing the raycast hit
                currentlyHeld.transform.parent = Camera.main.transform; // parent thing to camera
            }
        }

        // 5. did player stop clicking? then drop the object
        if(Input.GetMouseButton(0) == false && currentlyHeld != null)
        {
            currentlyHeld.transform.parent = null; // unparent object
            currentlyHeld = null; // forget about it
        }
	}
}
