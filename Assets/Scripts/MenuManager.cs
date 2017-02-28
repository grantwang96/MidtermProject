using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MenuManager : MonoBehaviour {

	public void play()
    {
        SceneManager.LoadScene("Play");
    }

    public void lose()
    {
        SceneManager.LoadScene("Lose");
    }

    public void win()
    {
        SceneManager.LoadScene("Win");
    }

    public void mainMenu()
    {
        SceneManager.LoadScene("Menu");
    }
}
