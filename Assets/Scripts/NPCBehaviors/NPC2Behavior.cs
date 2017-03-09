using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NPC2Behavior : MonoBehaviour {

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
            message.transform.FindChild("Message").GetComponent<Text>().text = "If you're looking for keys to room 101, Mr. Polinski\n";
            message.transform.FindChild("Message").GetComponent<Text>().text += "usually keeps a set on his desk in room 102. \n";
            message.transform.FindChild("Message").GetComponent<Text>().text += "I just saw him walking to the bathroom.";
        }
    }

    void OnTriggerStay(Collider coll)
    {
        if (coll.transform.name == "Player")
        {
            Debug.Log("Turning");
            Vector3 dir = coll.transform.position - transform.position;
            Quaternion look = Quaternion.LookRotation(dir);
            transform.rotation = Quaternion.Lerp(transform.rotation, look, 3.5f * Time.deltaTime);
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
