using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class checkpoint : MonoBehaviour
{
    public bool bl_destoy_when_hit = true;

    public Vector3 V3_respawn_position { get; private set; }

    // ----------------------------------------------------------------------
    // Detect if something enters the Trigger
    void OnTriggerStay(Collider _cl_collider)
    {
        if (_cl_collider.gameObject.tag == "Player")
        {   // update the PC respawn postition
            _cl_collider.GetComponent<checkpoint>().V3_respawn_position = transform.position;

            if (bl_destoy_when_hit) Destroy(gameObject);
        }
    }//-----
}//==========
