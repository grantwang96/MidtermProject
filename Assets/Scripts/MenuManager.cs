using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MenuManager : MonoBehaviour {

	public void play()
    {
        SceneManager.LoadScene("Play");
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
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

    public void mainMenu()
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
