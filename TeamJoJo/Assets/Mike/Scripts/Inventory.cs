using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Inventory : MonoBehaviour
{
    public string pickUpText;
    HUD hud;
    PickUp currentObject;
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
        currentObject = item;
        hud.DisplayMessage(pickUpText);
        hud.ToggleImage();
    }

    public void DropItem()
    {
        if (currentObject == null)
            return;
        //just deletes for now
        //Destroy(currentObject);
        currentObject = null;
    }
}
