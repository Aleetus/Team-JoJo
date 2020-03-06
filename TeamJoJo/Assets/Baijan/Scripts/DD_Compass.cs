// ----------------------------------------------------------------------
// -------------------- 3D Compass
// --------------------  David Dorrington, UEL Games, 2018
// ----------------------------------------------------------------------
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DD_Compass : MonoBehaviour
{
    // ----------------------------------------------------------------------
    private GameObject go_PC;
    private Image im_compass;

    // ----------------------------------------------------------------------
    // Use this for initialization
    void Start()
    {
        im_compass = GameObject.Find("Compass").GetComponent<Image>();
        go_PC = GameObject.Find("PC");

    }//-----

    // ----------------------------------------------------------------------
    // Update is called once per frame
    void Update()
    {       

        im_compass.rectTransform.eulerAngles = new Vector3(0, 0, go_PC.transform.eulerAngles.y);

    }//-----
}//==========
