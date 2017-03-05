using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class enemyHandScript : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    void OnTriggerEnter(Collider coll)
    {
        if (coll.transform.CompareTag("Door"))
        {
            coll.gameObject.GetComponent<regularDoor>().opened = true;
        }
    }
}
