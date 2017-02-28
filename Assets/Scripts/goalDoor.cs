using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class goalDoor : MonoBehaviour {
    bool opened;
    Quaternion look;
	// Use this for initialization
	void Start () {
        opened = false;
        look = Quaternion.LookRotation(Vector3.left);
	}
	
	// Update is called once per frame
	void Update () {
        if (opened)
        {

            transform.rotation = Quaternion.Slerp(transform.rotation, look, 0.5f);
        }
	}

    void OnTriggerEnter(Collider coll)
    {
        if(coll.transform.name == "Player")
        {
            if (coll.gameObject.GetComponent<playerMovement>().hasKey)
            {
                opened = true;
            }
        }
        
    }
}
