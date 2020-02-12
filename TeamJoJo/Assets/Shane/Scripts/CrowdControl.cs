using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CrowdControl : MonoBehaviour
{
    public GameObject go_target;
    public float fl_range = 10;
    public float fl_speed = 1;
    CharacterController cc_NPC;

    // ----------------------------------------------------------------------
    // Use this for initialization
    void Start()
    {

        cc_NPC = GetComponent<CharacterController>();
        go_target = GameObject.Find("NPC_Crowd Manager");

    }//-----

    // ----------------------------------------------------------------------
    // Update is called once per frame
    void Update()
    {

        if (Vector3.Distance(go_target.transform.position, transform.position) > fl_range)
        {
            transform.LookAt(go_target.transform.position);
            cc_NPC.SimpleMove(2 * fl_speed * transform.TransformDirection(Vector3.forward));

        }
        else if (Vector3.Distance(go_target.transform.position, transform.position) <= fl_range)
        {
            cc_NPC.SimpleMove(fl_speed * transform.TransformDirection(Vector3.forward));

        }

        if ((cc_NPC.collisionFlags & CollisionFlags.Sides) != 0) transform.Rotate(0, Random.Range(-180, 180), 0);
    }
}
