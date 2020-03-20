﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Cub2 : MonoBehaviour
{
    public Color color;
    //public GameObject newWox;
    HUD hud;
    GameObject player;
    bool following;
    NavMeshAgent agent;
    private Animator anim;
    Material mat;

    // Start is called before the first frame update
    void Start()
    {

        mat = GetComponentInChildren<Renderer>().material;
        anim = GetComponent<Animator>();
        agent = GetComponent<NavMeshAgent>();
        if (agent == null)
            print("nein");
        following = false;
        player = GameObject.FindGameObjectWithTag("Player");
        if (player == null)
            print("nooo");
        hud = GameObject.FindGameObjectWithTag("Respawn").GetComponent<HUD>();
        if (hud == null)
            Debug.Log("!!!Warning!!! No HUD found. Set HUD tag to \"Respawn\" to fix");
    }

    // Update is called once per frame
    void Update()
    {
        if (!following)
        {
            if (Vector3.Distance(transform.position, player.transform.position) < 2.5f)
            {
                if (player.GetComponent<Inventory2>().HasItem())
                {
                    hud.DisplayMessage("Press E to feed");
                    //HERE WE CHANGE

                    if (Input.GetKey(KeyCode.E))
                    {
                        mat.color = color;
                        player.GetComponent<Inventory2>().DropItem();
                        following = true;
                        hud.DisplayMessage("Maru: That was delicious... and WOW look at my coat!!!" + "\n \n Task: Return home with Maru");
                    }
                }
                else
                    hud.DisplayMessage("Maru: A little birdy told me a Pink fruit will change my fur!?" + "\n \n Task: Return with a Pink fruit to feed your cub");
            }
        }
        else
        {
            if (agent.velocity.magnitude > 0.5f)
                anim.SetBool("IsRunning", true);
            else
                anim.SetBool("IsRunning", false);
            if (agent == null)
                print("nein");
            if (player == null)
                print("nooo");
            agent.destination = player.transform.position;
        }
    }
}
