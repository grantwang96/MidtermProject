using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class goalDoor : MonoBehaviour {
    bool opened;
	// Use this for initialization
	void Start () {
        opened = false;
	}
	
	// Update is called once per frame
	void Update () {
        if (opened)
        {
            
            transform.rotation = Quaternion.Slerp(transform.rotation, )
        }
	}

    void OnTriggerEnter(Collider coll)
    {
        opened = true;
    }
}
