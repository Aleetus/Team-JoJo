using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class DD_Small_Message : MonoBehaviour
{
    public float fl_distance = 1;
    public GameObject go_trigger_object;
    
    public string st_message;
    private GameObject go_panel;
    private Text text_small;
    private int in_message_index = 0;
    public bool bl_destroy_when_done;

    // ----------------------------------------------------------------------
    // Use this for initialization
    void Start()
    {

        go_panel = GameObject.Find("GameManager").transform.Find("SmallMessagePanel").gameObject;
        text_small = go_panel.transform.Find("SmallMessageText").gameObject.GetComponent<Text>();
              
    }//-----

    // ----------------------------------------------------------------------
    // Update is called once per frame
    void Update()
    {
        // In trigger distance
        if (Vector3.Distance(go_trigger_object.transform.position, transform.position) < fl_distance)
        {
            // Is the panel active
            if (!go_panel.activeInHierarchy)
            {
                // Turn on Message Panel
                go_panel.SetActive(true);
                text_small.text = st_message;
            }
            
        }
        else if (go_trigger_object && Vector3.Distance(go_trigger_object.transform.position, transform.position) < fl_distance + 1)
        {
            go_panel.SetActive(false);
        }

    }//-----

}//==========
