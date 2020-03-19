using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Cub : MonoBehaviour
{
    HUD hud;
    GameObject player;
    bool following;
    NavMeshAgent agent;
    private Animator anim;

    // Start is called before the first frame update
    void Start()
    {
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
            if (Vector3.Distance(transform.position, player.transform.position) < 2f)
            {
                if (player.GetComponent<Inventory>().HasItem())
                {
                    hud.DisplayMessage("Press E to feed");
                    if (Input.GetKey(KeyCode.E))
                    {
                        player.GetComponent<Inventory>().DropItem();
                        following = true;
                        hud.DisplayMessage("Thank you! Now, LEAD ON COMRADE");
                    }
                }
                else
                    hud.DisplayMessage("Return with an apple");
            }
        }
        else
        {
            if(agent.velocity.magnitude > 0.5f)
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
