using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NPC1Behavior : MonoBehaviour {

    public GameObject message;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    void OnTriggerEnter(Collider coll)
    {
        if (coll.transform.name == "Player")
        {
            message.SetActive(true);
            message.GetComponent<Text>().text = "You're looking for Greenie? He's in room 101.";
        }
    }

    void OnTriggerExit(Collider coll)
    {
        if (coll.transform.name == "Player")
        {
            message.SetActive(false);
        }
    }
}
