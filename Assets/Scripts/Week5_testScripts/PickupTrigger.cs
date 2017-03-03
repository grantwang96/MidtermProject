using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickupTrigger : MonoBehaviour {

    Collider thingHolding;
    Vector3 localPos;
	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update ()
    {
        if (Input.GetMouseButton(0) == false && thingHolding != null)
        {
            thingHolding.GetComponent<Rigidbody>().useGravity = true;
            thingHolding.transform.SetParent(null); // unparent object
            thingHolding = null; // forget about it.
        }
	}

    void FixedUpdate()
    {
        if(thingHolding != null)
        {
            thingHolding.transform.localPosition = new Vector3(0, 0, 0.8f);
        }
    }

    void OnTriggerStay(Collider other)
    {
        if(Input.GetMouseButton(0) == true && other.transform.CompareTag("canBeHeld") && thingHolding == null)
        {
            thingHolding = other; // remember it
            thingHolding.transform.SetParent(transform); // parenting it to us, to pick it up.
            thingHolding.GetComponent<Rigidbody>().useGravity = false;
            Debug.Log("Picked up object");
        }
    }

    void OnTriggerExit(Collider other)
    {
        if(other == thingHolding)
        {
            thingHolding.GetComponent<Rigidbody>().useGravity = true;
            thingHolding.transform.parent = null;
            thingHolding = null;
            Debug.Log("Dropped object");
        }
    }
}
