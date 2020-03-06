using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DD_3D_Affinity_Boost : MonoBehaviour {


    public int in_affinity_change = 20;


    private void OnTriggerEnter(Collider other)
    {
        // Modify Affinity
        DD_3D_Game_Manager.fl_affinity += in_affinity_change;
        Destroy(gameObject);
    }

}
