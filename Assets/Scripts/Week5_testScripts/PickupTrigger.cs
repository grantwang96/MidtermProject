using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickupTrigger : MonoBehaviour {

    Collider thingHolding;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetMouseButton(0) == false && thingHolding != null)
        {
            thingHolding.transform.SetParent(null); // unparent object
            thingHolding = null; // forget about it.
        }
	}

    void OnTriggerStay(Collider other)
    {
        if(Input.GetMouseButton(0) == true && other.transform.CompareTag("canBeHeld") && thingHolding == null)
        {
            thingHolding = other; // remember it
            thingHolding.transform.SetParent(transform); // parenting it to us, to pick it up.
            thingHolding.transform.position = new Vector3(transform.position.x, 1f, transform.position.z);
        }
    }

    void OnTriggerExit(Collider other)
    {
        if(other == thingHolding)
        {
            thingHolding.transform.parent = null;
            thingHolding = null;
        }
    }
}
