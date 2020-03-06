using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DD_3D_PC_Animation : MonoBehaviour {

    private Animator PC_Animator;

    // Use this for initialization
    void Start()
    {
        PC_Animator = GameObject.Find("PC_Mesh").GetComponent<Animator>();
    }//-----

    // Update is called once per frame
    void Update()
    {
        // Only move if the game state allows
        if (DD_3D_Game_Manager.st_game_state == "free")
        {
            AnimatePC();
        }

    }//-----


    //-------------------------------------------------------------------------
    // Animate PC
    void AnimatePC()
    {
        // reset the mesh position
        GameObject.Find("PC_Mesh").transform.localPosition = new Vector3(0, -1, 0);



        // Standing ----------------------------------------

        // Magic
        if (Input.GetKeyDown(KeyCode.G)) PC_Animator.SetTrigger("t_magic");

        // Melee
        if (Input.GetMouseButtonDown(1)) PC_Animator.SetTrigger("t_melee");
        
        
        
        //  Jump 
        if (Input.GetButtonDown("Jump")) PC_Animator.SetBool("bl_jump", true);
        else PC_Animator.SetBool("bl_jump", false);

        //  Walking ---------------------------------------
        if (Input.GetAxis("Vertical") == 0) PC_Animator.SetBool("bl_walkF", false);
        else PC_Animator.SetBool("bl_walkF", true);

        if (Input.GetAxis("Horizontal") > 0) PC_Animator.SetBool("bl_walkR", true);
        else PC_Animator.SetBool("bl_walkR", false);

        if (Input.GetAxis("Horizontal") < 0) PC_Animator.SetBool("bl_walkL", true);
        else PC_Animator.SetBool("bl_walkL", false);

        


        
        
        // Crouch --------------------------------------------
        if (Input.GetKey(KeyCode.C))
        {
            PC_Animator.SetBool("bl_crouch", true);
            GetComponent<CharacterController>().height = 1;
            GetComponent<CharacterController>().center = new Vector3 (0, -0.45F,0);
        }
        else
        {
            PC_Animator.SetBool("bl_crouch", false);
            GetComponent<CharacterController>().height = 1.8F;
            GetComponent<CharacterController>().center = new Vector3(0, 0, 0);
        }
    
    


        //  Run --------------------------------------------
        if (Input.GetKey(KeyCode.LeftShift)) PC_Animator.SetBool("bl_run", true);
        else PC_Animator.SetBool("bl_run", false);



    }//-----


}//-==========
