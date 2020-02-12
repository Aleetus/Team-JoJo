using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectCarry : MonoBehaviour
{
    private GameObject GO_PC;
    public bool bl_carrying;
    public float fl_distance = 2;

    private Rigidbody RB_attached_to_this_object;

    // ----------------------------------------------------------------------
    // Use this for initialization
    void Start()
    {
        GO_PC = GameObject.FindWithTag("Player");

        if (GetComponent<Rigidbody>() != null) RB_attached_to_this_object = GetComponent<Rigidbody>();

    }//-----

    // ----------------------------------------------------------------------
    // Update is called once per frame
    void Update()
    {

        if (Vector3.Distance(GO_PC.transform.position, transform.position) < fl_distance)
        {
            if (Input.GetKeyDown("f") && !bl_carrying)
            {
                bl_carrying = true;
                // child this object to the target and postition it in front
                if (RB_attached_to_this_object) RB_attached_to_this_object.isKinematic = true;
                transform.position = GO_PC.transform.position + GO_PC.transform.TransformDirection(0, 0, 1.2F);
                transform.rotation = GO_PC.transform.rotation;
                transform.parent = GO_PC.transform;
            }
            else if (Input.GetKeyDown("f") && bl_carrying)
            {  //drop the object              
                transform.parent = null;
                if (RB_attached_to_this_object) RB_attached_to_this_object.isKinematic = false;
                bl_carrying = false;
            }

        }
        else if (GO_PC && Vector3.Distance(GO_PC.transform.position, transform.position) < fl_distance + 1)
        {

        }

    }

}

