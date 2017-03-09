using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class goalDoor : MonoBehaviour {
    bool opened;
    Quaternion look;
    Quaternion forward;
    public GameObject message;
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
        if(coll.transform.name == "Player")
        {
            if (coll.gameObject.GetComponent<playerMovement>().hasKey)
            {
                opened = true;
                Debug.Log("Opening door!");
            }
            else
            {
                message.SetActive(true);
                message.transform.FindChild("Message").GetComponent<Text>().text = "The door's locked! I bet there's a key somewhere.";
            }
        }
    }

    void OnTriggerExit(Collider coll)
    {
        if(coll.transform.name == "Player")
        {
            message.SetActive(false);
        }
    }

    public void openDoor()
    {
        opened = true;
    }

    void displayMessage()
    {

    }
}
