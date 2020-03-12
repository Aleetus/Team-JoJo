using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Animations : MonoBehaviour {

    private Animator anim;

    void Start() {
        anim = GetComponent<Animator>();
    }

        void Update(){
            if(Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.D) || Input.GetKey(KeyCode.W)
                || Input.GetKey(KeyCode.S)) 
            {
                anim.SetBool("isRunning", true);

            }
            else
            {
                anim.SetBool("isRunning", false);
            }
        }

    }