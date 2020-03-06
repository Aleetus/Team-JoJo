using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DD_3D_lock_solved : MonoBehaviour
{

    
   
    private JC_Lockpick lock_script;

    //Use this for initialization
    void Start()
    {
        lock_script = GameObject.Find("lock").GetComponent<JC_Lockpick>();
       

    }//-----

    // Update is called once per frame
    void Update()
    {
        if (lock_script.mBL_isSolved)
        {
         gameObject.SetActive(false);
        }
    }

}//-----
