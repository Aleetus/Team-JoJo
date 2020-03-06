using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DD_3D_Stealth_Trigger : MonoBehaviour
{

    private void OnTriggerEnter(Collider cl_detected)
    {
        if (cl_detected.gameObject.tag == "Player")
            GetComponentInParent<DD_3D_NPC_Stealth>().bl_PC_detected = true;
    }//-----

    private void OnTriggerExit(Collider cl_detected)
    {
        if (cl_detected.gameObject.tag == "Player")
            GetComponentInParent<DD_3D_NPC_Stealth>().bl_PC_detected = false;
    }//-----

}//==========
