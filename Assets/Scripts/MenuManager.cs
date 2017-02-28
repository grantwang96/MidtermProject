using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MenuManager : MonoBehaviour {

	public void play()
    {
        SceneManager.LoadScene("Play");
        Cursor.visible = false;
    }

    public void lose()
    {
        SceneManager.LoadScene("Lose");
        Cursor.visible = true;
    }

    public void win()
    {
        SceneManager.LoadScene("Win");
        Cursor.visible = true;
    }

    public void mainMenu()
    {
        SceneManager.LoadScene("Menu");
        Cursor.visible = true;
    }
}
