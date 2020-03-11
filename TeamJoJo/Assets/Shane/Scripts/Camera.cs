﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Camera : MonoBehaviour
{

    public float fl_min_cam_height = -1F;
    public float fl_max_cam_height = 3F;
    public float fl_cam_distance = 2.5F;
    public float fl_mouse_turn_rate = 5;
    public float fl_cam_speed = 1;
    public bool bl_invert;
    public GameObject GO_PC_camera;



    // ----------------------------------------------------------------------
    // Update is called once per frame
    void Update()
    {

        MouseLook();

    }



    // Mouse Look ----------------------------------------------------------------------

    void MouseLook()
    {
        // Zoom in and out with Mouse Scroll
        if (Input.mouseScrollDelta.y > 0 && fl_cam_distance > 0.5F) fl_cam_distance -= 0.2F;
        if (Input.mouseScrollDelta.y < 0 && fl_cam_distance < 3) fl_cam_distance += 0.2F;


        // Mouse Rotate
        transform.Rotate(0, 3 * fl_mouse_turn_rate * Time.deltaTime * Input.GetAxis("Mouse X"), 0);

        // Move Cam up and Down
        if (bl_invert)
        {
            if (Input.GetAxis("Mouse Y") > 0 && GO_PC_camera.transform.localPosition.y < fl_max_cam_height) GO_PC_camera.transform.Translate(0, fl_cam_speed * Time.deltaTime, 0);
            if (Input.GetAxis("Mouse Y") < 0 && GO_PC_camera.transform.localPosition.y > fl_min_cam_height) GO_PC_camera.transform.Translate(0, -fl_cam_speed * Time.deltaTime, 0);
        }
        else
        {
            if (Input.GetAxis("Mouse Y") > 0 && GO_PC_camera.transform.localPosition.y > fl_min_cam_height) GO_PC_camera.transform.Translate(0, -fl_cam_speed * Time.deltaTime, 0);
            if (Input.GetAxis("Mouse Y") < 0 && GO_PC_camera.transform.localPosition.y < fl_max_cam_height) GO_PC_camera.transform.Translate(0, fl_cam_speed * Time.deltaTime, 0);
        }

        // look at PC Object
        GO_PC_camera.transform.LookAt(transform.position + new Vector3(0, 1, 0));

        // Move the Camera
        GO_PC_camera.transform.localPosition = new Vector3(0, GO_PC_camera.transform.localPosition.y, -fl_cam_distance);

    }

}
