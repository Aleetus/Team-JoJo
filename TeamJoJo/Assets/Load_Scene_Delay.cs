using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Load_Scene_Delay : MonoBehaviour
{
    public float delay = 440;
    public string NewLevel = "Room_27E";
    void Start()
    {
        StartCoroutine(LoadLevelAfterDelay(delay));
    }

    IEnumerator LoadLevelAfterDelay(float delay)
    {
        yield return new WaitForSeconds(delay);
        SceneManager.LoadScene(NewLevel);
    }
}