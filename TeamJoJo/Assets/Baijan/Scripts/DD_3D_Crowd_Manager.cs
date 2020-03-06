// ----------------------------------------------------------------------
// -------------------- 3D Crowd Manager
// -------------------- David Dorrington, UEL Games, 2019
// ----------------------------------------------------------------------
using UnityEngine;
using System.Collections;

public class DD_3D_Crowd_Manager : MonoBehaviour
{

    // ----------------------------------------------------------------------
    private GameObject[] go_crowd;
    Vector3 v3_average_pos;

    // ----------------------------------------------------------------------
    // Update is called once per frame
    void Start()
    {

        // call funftion every 2 seconds
        InvokeRepeating("FindAveragePosition", 1, 2);
    }//-----


    // ----------------------------------------------------------------------
    void FindAveragePosition()
    {
        v3_average_pos = Vector3.zero;

        go_crowd = GameObject.FindGameObjectsWithTag("Crowd");

        foreach (GameObject _go in go_crowd)
        {
            v3_average_pos += _go.transform.position;
        }

       // v3_average_pos = v3_average_pos / go_crowd.Length;
        print(v3_average_pos);

         transform.position = v3_average_pos;

    }//------

}//=========
