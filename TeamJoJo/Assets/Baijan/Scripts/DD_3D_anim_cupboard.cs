using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DD_3D_anim_cupboard : MonoBehaviour
{


    public string st_bool = "bl_open";
    private Animator anim_attached;
    private GameObject go_PC;
    public float fl_range = 3;

    // Use this for initialization
    void Start()
    {
        anim_attached = GetComponent<Animator>();
        go_PC = GameObject.Find("PC");

    }//------

    // Update is called once per frame
    void Update()
    {
        if (Vector3.Distance(go_PC.transform.position, transform.position) < fl_range)
        {
            if (Input.GetKeyDown("e"))
            {
                if (anim_attached.GetBool(st_bool))
                {
                    anim_attached.SetBool(st_bool, false);
                }
                else
                {
                    anim_attached.SetBool(st_bool, true);
                }
            }
        }
    }//-----

}//==========

