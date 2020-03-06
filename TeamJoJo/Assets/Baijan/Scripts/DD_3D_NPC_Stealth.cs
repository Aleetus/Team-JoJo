using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DD_3D_NPC_Stealth : MonoBehaviour
{

    // ----------------------------------------------------------------------
    // Combat Variables
    public GameObject go_projectile;
    public float fl_range = 5;
    public float fl_cool_down = 1;

    private float fl_delay;
    public bool bl_line_of_sight;


    // Movement
    public GameObject[] gos_waypoints;
    public float fl_speed = 3;
    private int in_next_wp = 0;

    public bool bl_PC_detected;
    private GameObject go_target;
    private CharacterController cc_NPC;

    // ----------------------------------------------------------------------
    // Use this for initialization
    void Start()
    {   // Find the Game Objects we need to interact with
        cc_NPC = GetComponent<CharacterController>();


        // if no target is set find the first tagged as the enemy
        if (!go_target)
            go_target = GameObject.FindWithTag("Player");
    }//-----

    // ----------------------------------------------------------------------
    // Update is called once per frame
    void Update()
    {
        // Only move if the game state allows
        if (DD_3D_Game_Manager.st_game_state == "free")
        {

            if (bl_PC_detected || (Vector3.Distance(go_target.transform.position, transform.position) < fl_range))
            {
                AttackTarget();
            }
            else
            {
                Patrol();
            }
        }
    }//-----

    // ----------------------------------------------------------------------
    void Patrol()
    {
        //Are there any waypoints defined?
        if (gos_waypoints.Length > 0)
        {   // Look at the next WP
            transform.LookAt(gos_waypoints[in_next_wp].transform.position);

            // Move towards the WP
            cc_NPC.SimpleMove(fl_speed * transform.TransformDirection(Vector3.forward));

            // if we get close move to WP target the next
            if (Vector3.Distance(gos_waypoints[in_next_wp].transform.position, transform.position) < 1)
            {
                if (in_next_wp < gos_waypoints.Length - 1)
                    in_next_wp++;
                else
                    in_next_wp = 0;
            }
        }
    }//-----


    // ----------------------------------------------------------------------
    void AttackTarget()
    {
        // Does the NPC have ammo and has the cooldown passed
        if (Time.time > fl_delay)
        {
            // Face the Target
            transform.LookAt(go_target.transform.position);
            cc_NPC.SimpleMove(Vector3.zero);
            FireProjectile();

        }
    }//------

    // ----------------------------------------------------------------------
    void FireProjectile()
    {
        // Spawn an arrow     
        Instantiate(go_projectile, transform.position + transform.TransformDirection(new Vector3(0, 0, 1F)), transform.rotation);

        fl_delay = Time.time + fl_cool_down;

    }//-----


}//==========
