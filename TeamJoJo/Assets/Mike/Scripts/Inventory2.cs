using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickUp2 : MonoBehaviour
{
    public AudioClip sound;
    Inventory2 inv2;

    void Start()
    {
        inv2 = GameObject.FindGameObjectWithTag("Player").GetComponent<Inventory2>();
    }

    void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.tag == "Player")
        {
            print("Item picked up");
            inv2.PickUpItem(this);
            //hasApple = true;
        }
    }

}