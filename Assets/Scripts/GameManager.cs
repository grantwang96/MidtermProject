using System.Collections;
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
		
	}

    public void lose()
    {
        SceneManager.LoadScene("Lose");
    }
}
