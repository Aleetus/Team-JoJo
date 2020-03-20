using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MessageArea : MonoBehaviour
{
    public AudioClip animalSound;
    public string message;

    HUD hud;
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
        
    }

    private void OnTriggerEnter(Collider other)
    {
        
        if (other.gameObject.GetComponent<Movement>() != null)
        {
            AudioSource.PlayClipAtPoint(animalSound, transform.position);
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if(other.gameObject.GetComponent<Movement>() != null)
        {
            hud.DisplayMessage(message);
        }
    }
}
