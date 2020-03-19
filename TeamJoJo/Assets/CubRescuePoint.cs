using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CubRescuePoint : MonoBehaviour
{
    int cubsRescued;
    public int numberOfCubs;
    GameObject[] cubs;
    public string Load_Scene;

    // Start is called before the first frame update
    void Start()
    {

        cubsRescued = 0;
        cubs = GameObject.FindGameObjectsWithTag("Finish");

        if (numberOfCubs == 0)
        {
            numberOfCubs = cubs.Length;
        }

        print("cubs length: " + cubs.Length);


    }

    // Update is called once per frame
    void Update()
    {
        if (cubsRescued == cubs.Length)
        {
            SceneManager.LoadScene(Load_Scene);
        }
        foreach(GameObject cub in cubs)
        {

            if(Vector3.Distance(cub.transform.position, transform.position) < 2f)
            {
                cubsRescued++;
                GameObject.Destroy(cub);

            }
        }

    }
}
