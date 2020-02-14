using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Chase : MonoBehaviour
{
    // Start is called before the first frame update
    public bool bl_line_of_sight;
    public string st_target_class = "Fruit";
    private float fl_delay;

    // Movement
    public bool bl_chase = true;
    public float fl_chase_dist_max = 10;
    public float fl_chase_dist_min = 3;
    public float fl_chase_speed = 3;

    public GameObject GO_home;
    public GameObject GO_target;
    private CharacterController CC_NPC;

    // ----------------------------------------------------------------------

    // Use this for initialization
    void Start()
    {
        CC_NPC = GetComponent<CharacterController>();

        // if no target is set find the first tagged as the enemy
        if (!GO_target)
            GO_target = GameObject.FindWithTag(st_target_class);
    }//-----

    // ----------------------------------------------------------------------
    // Update is called once per frame
    void Update()
    {
  
       if (bl_chase)
       {
          NPC_Move();
       }

    }

    // ----------------------------------------------------------------------
    void NPC_Move()
    {
        // Is the target in Range
        if (Vector3.Distance(transform.position, GO_target.transform.position) < fl_chase_dist_max)
        {   // Face the Target
            transform.LookAt(GO_target.transform.position);

            if (Vector3.Distance(transform.position, GO_target.transform.position) > fl_chase_dist_min)
            {   // Move towards the target
                CC_NPC.SimpleMove(fl_chase_speed * transform.TransformDirection(Vector3.forward));
            }
        }
        else if (GO_home) // is there a home object set
        {
            if (Vector3.Distance(transform.position, GO_home.transform.position) > fl_chase_dist_min * 2)
            {
                // Head Home
                transform.LookAt(GO_home.transform.position);
                transform.eulerAngles = new Vector3(0, transform.eulerAngles.y, 0);
                CC_NPC.SimpleMove(fl_chase_speed * transform.TransformDirection(Vector3.forward));
            }
        }
        else
        {  // stop moving
            CC_NPC.SimpleMove(Vector3.zero);
        }
    }
}
