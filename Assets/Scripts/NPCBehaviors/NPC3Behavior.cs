using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NPC3Behavior : MonoBehaviour {

    public GameObject message;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    void OnTriggerEnter(Collider coll)
    {
        if (coll.transform.name == "Player")
        {
            message.SetActive(true);
            message.transform.FindChild("Message").GetComponent<Text>().text = "Rick McRed said he was looking for you.";
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
