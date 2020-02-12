using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PushObject : MonoBehaviour
{
    public float fl_force = 10;

    // ----------------------------------------------------------------------
    // Char Controller has Hit something 
    void OnControllerColliderHit(ControllerColliderHit _CC_Hit)
    {
        // Has the PC bumped into an object it can push 
        if (_CC_Hit.collider.attachedRigidbody && _CC_Hit.moveDirection.y > -0.2)
        {
            // Convert the local Character direction to world coords
            Vector3 _V3_direction = transform.TransformDirection(Vector3.forward);

            // Apply the force to the object
            _CC_Hit.collider.attachedRigidbody.AddForce(fl_force * new Vector3(_V3_direction.x, 0, _V3_direction.z));
        }
    }
}
