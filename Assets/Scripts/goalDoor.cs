using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class goalDoor : MonoBehaviour {
    bool opened;
    Quaternion look;
    Quaternion forward;
	// Use this for initialization
	void Start () {
        opened = false;
        look = Quaternion.LookRotation(Vector3.left);
        forward = Quaternion.LookRotation(Vector3.forward);
	}
	
	// Update is called once per frame
	void Update () {
        if (opened)
        {
            transform.rotation = Quaternion.Slerp(transform.rotation, look, 5f * Time.deltaTime);
        }
	}

    void OnTriggerEnter(Collider coll)
    {
        /*
        if(coll.transform.name == "Player")
        {
            Debug.Log("Opening door!");
            if (coll.gameObject.GetComponent<playerMovement>().hasKey)
            {
                opened = true;
            }
        }
        */
    }

    public void openDoor()
    {
        opened = true;
    }
}
