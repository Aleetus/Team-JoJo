using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DD_3D_Minimap : MonoBehaviour
{
    private GameObject go_minimap;
    private Camera cam_minimap;
    
    // Use this for initialization
    void Start()
    {
        cam_minimap = GameObject.Find("PC/MiniMap_Camera").GetComponent<Camera>();
        go_minimap = GameObject.Find("GameManager/MiniMap");
        go_minimap.SetActive(false);
    }//------

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.M))
        {
            if (go_minimap.activeSelf)
                go_minimap.SetActive(false);
            else
                go_minimap.SetActive(true);
        }

        if (go_minimap.activeSelf)
        {
            // Zoom in and out with Mouse Scroll
            if (Input.mouseScrollDelta.y > 0 && cam_minimap.orthographicSize < 30) cam_minimap.orthographicSize++;
            if (Input.mouseScrollDelta.y < 0 && cam_minimap.orthographicSize > 5) cam_minimap.orthographicSize--;
        }
    }//-------

}//==========================
