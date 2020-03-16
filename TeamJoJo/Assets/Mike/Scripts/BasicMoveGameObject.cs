using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BasicMoveGameObject : MonoBehaviour
{

    public float movementSpeedX = 0.1f;
    public float movementSpeedY = 0.1f;
    public float movementSpeedZ = 0.1f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if(this.transform.position.x < 50)
        {
            this.transform.position = this.transform.position + new Vector3(movementSpeedX, 0, 0);
        }

        if (this.transform.position.y < 50)
        {
            this.transform.position = this.transform.position + new Vector3(0, movementSpeedY, 0);
        }

        if (this.transform.position.z < 50)
        {
            this.transform.position = this.transform.position + new Vector3(0, 0, movementSpeedZ);
        }

    }
}
