using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DD_3D_Puzzle_Solved_Enable : MonoBehaviour {

    public bool bl_enable;
    public GameObject go_target;
    
    private JC_Cryptex cryptex_script;

    //Use this for initialization
    void Start()
    {
        cryptex_script = GameObject.Find("Codex").GetComponent<JC_Cryptex>();
        if (bl_enable) go_target.SetActive(false);

    }//-----

    // Update is called once per frame
    void Update () {
		

        if (cryptex_script.mBL_Finished)
        {
            if (bl_enable)
                go_target.SetActive(true);
            else
                go_target.SetActive(false);
        }
	}//-----

}//==========
