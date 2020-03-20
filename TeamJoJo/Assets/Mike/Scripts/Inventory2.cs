using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Inventory : MonoBehaviour
{
    HUD hud;
    PickUp currentObject;
    public AudioClip pickUpSound;
    public AudioClip munchSound;

    //public Text text;
    // Start is called before the first frame update
    void Start()
    {
        hud = GameObject.FindGameObjectWithTag("Respawn").GetComponent<HUD>();
        if (hud == null)
            Debug.Log("!!!Warning!!! No HUD found. Set HUD tag to \"Respawn\" to fix");
    }

    // Update is called once per frame
    void Update()
    {
        if (currentObject != null)
        {
            currentObject.gameObject.SetActive(false);

            //SHOW APPLE LOGO

            //Debug.Log("hah yeah");
            //text.text = "haha yeah";
        }
    }
    public bool HasItem()
    {
        if (currentObject != null)
            return true;
        else
            return false;
    }

    public void PickUpItem(PickUp item)
    {
        //pickUpSound.
        AudioSource.PlayClipAtPoint(pickUpSound, transform.position);
        currentObject = item;
        hud.DisplayMessage("A tasty fruit! Take it to your cub.");
        hud.ToggleImage();
    }

    public void DropItem()
    {

        hud.ToggleImage();
        AudioSource.PlayClipAtPoint(munchSound, transform.position);
        if (currentObject == null)
            return;
        //just deletes for now
        //Destroy(currentObject);
        currentObject = null;
    }
}
