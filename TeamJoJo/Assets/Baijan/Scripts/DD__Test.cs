using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DD__Test : MonoBehaviour
{

    public string[] st_target_classes;


    private void Start()
    {
        if (st_target_classes.Length > 0)
        {
            print(FindClosestNPC(st_target_classes));
        }

    }//------

    
    public GameObject FindClosestNPC(string[] st_tags)
    {
        // temp variables
        GameObject _go_closest = null;
        float _dist = Mathf.Infinity;
        GameObject _GO_nearest = null;

        // Find the nearest Target     
        for (int i = 0; i < st_tags.Length; i++)
        {
            // Create a List of potential targets
            GameObject[] _GO_Enemies = GameObject.FindGameObjectsWithTag(st_tags[i]);

            // Are there any tagged targets in the scene?
            if (_GO_Enemies.Length > 0)
            {
                // Loop through the list of targets
                foreach (GameObject _GO in _GO_Enemies)
                {
                    float _cur_dist = Vector3.Distance(_GO.transform.position, transform.position);
                    if (_cur_dist < _dist)
                    {
                        _GO_nearest = _GO;
                        _dist = _cur_dist;
                    }
                }
            }
        }
        return _GO_nearest;
    }//-----

}//=====
