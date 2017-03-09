using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class lockedDoor : MonoBehaviour {

    public GameObject message;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    void OnTriggerEnter(Collider coll)
    {
        if (coll.transform.name == "Hands")
        {
            Debug.Log("Hello!");
            message.SetActive(true);
            message.transform.FindChild("Message").GetComponent<Text>().text = "Mr. Polinski must've locked it. Someone \n must know where he is.";
        }
    }

    void OnTriggerExit(Collider coll)
    {
        if (coll.transform.name == "Hands")
        {
            message.SetActive(false);
        }
    }
}
