// ----------------------------------------------------------------------
// -------------------- 3D Display Character Cards
// -------------------- David Dorrington, UEL Games, 2018
// ----------------------------------------------------------------------
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DD_Card : MonoBehaviour
{
    // ----------------------------------------------------------------------
    public Texture2D tx_card;
    public float fl_distance = 3;
    public bool bl_show_card_above;
    public GameObject go_PC;
    private GameObject go_card_panel;
    private Sprite sp_card;

    // ----------------------------------------------------------------------
    // Use this for initialization
    void Start()
    {
        // Set the card texcure to the attached object's material
        GetComponent<Renderer>().material.mainTexture = tx_card;
        // Find Objects
        go_PC = GameObject.FindGameObjectWithTag("Player");
        go_card_panel = GameObject.Find("GameManager/Card_Image");

        // Create a sprite for the GUI.
        sp_card = Sprite.Create(tx_card, 
            new Rect(0.0f, 0.0f, tx_card.width, tx_card.height), new Vector2(1f, 1f), 100.0f);


        if (!bl_show_card_above)
            GetComponent<Renderer>().enabled = false;
    }//-----

    // ----------------------------------------------------------------------
    // Update is called once per frame
    void Update()
    {
        // Make the card face the camera
        if (bl_show_card_above)
            transform.LookAt(Camera.main.transform.position);

        DisplayCardUI();

    }//-----

    // ----------------------------------------------------------------------
    void DisplayCardUI()
    {      
        // Is the PC in trigger distance
        if (Vector3.Distance(go_PC.transform.position, transform.position) < fl_distance)
        {
            // Is the panel active
            if (!go_card_panel.activeInHierarchy)
            {   // Turn on Message Panel
                go_card_panel.SetActive(true);
            }
            // Set the card
            go_card_panel.GetComponent<Image>().sprite = sp_card;
        }
        else if (go_PC && Vector3.Distance(go_PC.transform.position, transform.position) < fl_distance + 1)
        {   // Turn off Panel
            go_card_panel.SetActive(false);
        }
    }//-----

}//==========
