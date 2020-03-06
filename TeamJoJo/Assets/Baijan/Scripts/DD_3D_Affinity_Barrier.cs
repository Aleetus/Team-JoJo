using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DD_3D_Affinity_Barrier : MonoBehaviour {


    public bool  bl_allow_if_good = true;
    public int in_affinity_threshold = 5;
    private Collider cl_attached;


    // Message variables
    private GameObject go_PC;
    private GameObject go_message_panel;
    private Text text_message;
    public string st_message = "Your Affinity status does not allow you through here";

    public float fl_distance = 2;

    // Use this for initialization
    void Start () {

        go_PC = GameObject.FindWithTag("Player");
        go_message_panel = GameObject.Find("GameManager").transform.Find("SmallMessagePanel").gameObject;
        text_message = go_message_panel.transform.Find("SmallMessageText").gameObject.GetComponent<Text>();

        cl_attached = GetComponent<Collider>();

	}

    // Update is called once per frame

    void Update()
    {

        // Only target the PC if the status is appropriate
        if ((bl_allow_if_good && DD_3D_Game_Manager.fl_affinity > in_affinity_threshold) ||
            (!bl_allow_if_good && DD_3D_Game_Manager.fl_affinity < in_affinity_threshold))
        {
            cl_attached.enabled = false;
            st_message = "You have appropriate stutus to enter";
        }
        else
        {
            cl_attached.enabled = true;
            st_message = "Your Affinity status does not allow you through here";
        }


        // In trigger distance - Display Message
        if (Vector3.Distance(go_PC.transform.position, transform.position) < fl_distance)
        {
            // Is the panel active
            if (!go_message_panel.activeInHierarchy)
            {
                // Turn on Message Panel
                go_message_panel.SetActive(true);
                text_message.text = st_message;
            }
        }
        else if (go_PC && Vector3.Distance(go_PC.transform.position, transform.position) < fl_distance + 1)
        {
            go_message_panel.SetActive(false);
        }



    }//-----

}//==========
