using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DD_3D_anim_portcullis : MonoBehaviour {


    private Animator anim_portcullis;
    private JC_CogsPuzzle cogpuzzlescript;

    
    // Use this for initialization
	void Start () {

        anim_portcullis = GetComponent<Animator>();
        cogpuzzlescript = GameObject.Find("CogsPuzzle").GetComponent<JC_CogsPuzzle>();

	}//-----
	
	// Update is called once per frame
	void Update () {

        if (cogpuzzlescript.mBL_IsSolved) anim_portcullis.SetBool("bl_open", true);

	}//-----

}//===============
