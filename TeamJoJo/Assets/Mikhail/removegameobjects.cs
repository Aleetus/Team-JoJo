using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class removegameobjects : MonoBehaviour

{
    public GameObject go_activator;
    public float fl_distance;

    // Update is called once per frame
    void Update()
    {
        if (Vector3.Distance(transform.position, go_activator.transform.position) < fl_distance)
        {
            Destroy(gameObject);
        }
    }//--------
}//==============



