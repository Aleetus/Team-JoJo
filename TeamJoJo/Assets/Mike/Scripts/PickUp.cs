using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickUp : MonoBehaviour
{
    public AudioClip sound;
    Inventory inv;

    void Start()
    {
        inv = GameObject.FindGameObjectWithTag("Player").GetComponent<Inventory>();
    }

    void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.tag == "Player")
        {
            print("Item picked up");
            inv.PickUpItem(this);
            //hasApple = true;
        }
    }

}