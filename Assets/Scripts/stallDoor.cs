using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class stallDoor : MonoBehaviour {
    public bool opened;
    bool moving;
    float moveTime;
    Vector3 OpenState;
    Quaternion look;
    Quaternion forward;
    // Use this for initialization
    void Start () {
        moveTime = 0;
        moving = false;
        OpenState = new Vector3(0, 90, 0);
        // look = Quaternion.Euler(OpenState);
        look = Quaternion.LookRotation(transform.right);
        forward = Quaternion.LookRotation(transform.forward);
    }
	
	// Update is called once per frame
	void Update () {
        if (opened)
        {
            transform.rotation = Quaternion.Slerp(transform.rotation, look, 5f * Time.deltaTime);
        }
        else
        {
            transform.rotation = Quaternion.Slerp(transform.rotation, forward, 5f * Time.deltaTime);
        }
        if (moving)
        {
            moveTime += Time.deltaTime;
            if (moveTime > 0.5f) { moving = false; }
        }
    }

    void OnTriggerStay(Collider coll)
    {

        if (coll.transform.name == "Hands" && Input.GetKeyDown(KeyCode.E))
        {
            if (!opened && !moving)
            {
                GetComponent<AudioSource>().Play();
                Debug.Log("Opening Door!");
                opened = true;
            }
            else if (opened && !moving)
            {
                GetComponent<AudioSource>().Play();
                Debug.Log("Closing Door!");
                opened = false;
            }
            moving = true;
            moveTime = 0;
        }
    }
    public bool getOpCl()
    {
        return opened;
    }
}
