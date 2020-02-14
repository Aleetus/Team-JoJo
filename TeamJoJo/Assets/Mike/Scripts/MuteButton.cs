using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MuteButton : MonoBehaviour
{
    Image myImageComponent;
    public Sprite sprite1; // Drag your first sprite here
    public Sprite sprite2; // Drag your second sprite here


    bool isMute;

    void Start()
    {
        myImageComponent = GetComponent<Image>(); // we are accessing the SpriteRenderer that is attached to the Gameobject
        if (myImageComponent.sprite == null) // if the sprite on spriteRenderer is null then
            myImageComponent.sprite = sprite1; // set the sprite to sprite1
    }
    public void Mute()
    {

        isMute = !isMute;
        AudioListener.volume = isMute ? 0 : 1;

    }

   public void ChangeTheDamnSprite()
    {
        if (myImageComponent.sprite == sprite1) // if the spriteRenderer sprite = sprite1 then change to sprite2
        {
            myImageComponent.sprite = sprite2;
        }
        else
        {
            myImageComponent.sprite = sprite1; // otherwise change it back to sprite1
        }
    }
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.M)) // If the M key is pushed down
        {
            ChangeTheDamnSprite(); // call method to change sprite
            isMute = !isMute;
            AudioListener.volume = isMute ? 0 : 1;

        }



    }






}

