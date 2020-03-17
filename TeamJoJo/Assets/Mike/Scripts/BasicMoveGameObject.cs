using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BasicMoveGameObject : MonoBehaviour
{

    public float movementSpeedX = 0;
    public float movementSpeedY = 0;
    public float movementSpeedZ = 0;


    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {

        this.transform.position = this.transform.position + new Vector3(movementSpeedX, 0, 0);
        this.transform.position = this.transform.position + new Vector3(0, movementSpeedY, 0);
        this.transform.position = this.transform.position + new Vector3(0, 0, movementSpeedZ);

    }
}
