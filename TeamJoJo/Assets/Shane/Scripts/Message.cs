using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Message : MonoBehaviour
{
    public string[] st_message;
    public float fl_distance = 1;
    public GameObject go_PC;
    public GameObject go_panel;
    public Text txt_window;
    private int in_message_stage = 0;

    // ----------------------------------------------------------------------
    // Use this for initialization
    void Start()
    {
        go_PC = GameObject.FindWithTag("Player");
        go_panel = GameObject.Find("GameManager").transform.Find("MessagePanel").gameObject;
        txt_window = go_panel.transform.Find("MessageText").GetComponent<Text>();

    }//-----

    // ----------------------------------------------------------------------
    // Update is called once per frame
    void Update()
    {
        // Is the PC in trigger distance
        if (Vector3.Distance(go_PC.transform.position, transform.position) < fl_distance)
        {
            // Enable the message panel active
            if (!go_panel.activeInHierarchy) go_panel.SetActive(true);

            // Step through the messages if there are more than 1
            if (Input.GetKeyDown(KeyCode.E))
            {
                if (st_message.Length > 1 && (in_message_stage < st_message.Length - 1))
                    in_message_stage++;
            }

            // update the text box
            txt_window.text = st_message[in_message_stage];
        }
        else if (go_PC && Vector3.Distance(go_PC.transform.position, transform.position) < fl_distance + 1)
        {
            go_panel.SetActive(false);
        }

    }
}
