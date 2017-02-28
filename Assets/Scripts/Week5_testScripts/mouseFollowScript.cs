using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class mouseFollowScript : MonoBehaviour {

    float upDownLook = 0f;

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
        // 1. get mouse input data
        // float mouseX = Input.GetAxis("Mouse X") * Time.deltaTime * 150f; // horizontal mousespeed
        float mouseY = Input.GetAxis("Mouse Y") * Time.deltaTime * 150f; // vertical mousespeed

        //2. rotate the camera
        transform.Rotate(-mouseY, 0f, 0f);

        //2b. clamp
        upDownLook -= mouseY; // minus-equals un-inverts the mouse-look-y
        upDownLook = Mathf.Clamp(upDownLook, -80f, 60f); // constrain look 80 degrees up or down

        //3. unroll the camera
        // transform.eulerAngles.z = 0f; // This will NOT work. You can't WRITE/EDIT vector values. You can only READ!
        transform.eulerAngles = new Vector3(upDownLook, transform.eulerAngles.y, 0f);
	}
}
