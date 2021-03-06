﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {

    public List<GameObject> floors;
    
    public static GameManager Instance;
    public Vector3 playerPosition;
    public string playerCurrentRoom;

    public Vector3 enemyPosition;
    public string enemyCurrentRoom;

    public Vector3 targetPosition;
    public string targetCurrentRoom;

	// Use this for initialization
	void Start () {
        Instance = this;
        int nextRoom = (int)Random.Range(1, 4);
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKey(KeyCode.I))
        {
            instructions();
        }
        if (Input.GetKeyDown(KeyCode.Q))
        {
            menu();
        }
	}

    public void lose()
    {
        SceneManager.LoadScene("Lose");
        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.None;
    }

    public void win()
    {
        SceneManager.LoadScene("Win");
        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.None;
    }

    public void play()
    {
        SceneManager.LoadScene("Play");
        Cursor.visible = false;
    }
    
    public void menu()
    {
        SceneManager.LoadScene("Menu");
        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.None;
    }
    public void instructions()
    {
        SceneManager.LoadScene("Instructions");
        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.None;
    }
}
