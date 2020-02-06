using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadScene : MonoBehaviour {

    public string Load_Scene;

    public void LoadNewScene()
    {
        SceneManager.LoadScene(Load_Scene);
    }
}
