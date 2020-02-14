using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateObject : MonoBehaviour
{

    public float rotateSpeed = 1.5f;

    void Update()
    {
        transform.Rotate(0f, rotateSpeed, 0f);
    }

}
