using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HUD : MonoBehaviour
{
    GameObject image;
    Text text;
    string currentMessage;
    float timeDisplayed;
    public float howLongToDisplayMessage; //defaults to 1.5 seconds

    // Start is called before the first frame update
    void Start()
    {
        image = transform.GetChild(0).gameObject;
        text = GetComponent<Text>();
        if (howLongToDisplayMessage == 0)
            howLongToDisplayMessage = 1.5f;
    }

    // Update is called once per frame 
    void Update()
    {
        text.text = currentMessage;
        if (Time.time > (timeDisplayed + howLongToDisplayMessage))
            currentMessage = "";
    }

    public void DisplayConstantMessage(string newMessage)
    {
        timeDisplayed = Time.time + howLongToDisplayMessage;
        currentMessage = newMessage;
    }

    public void DisplayMessage(string newMessage)
    {
        timeDisplayed = Time.time;
        currentMessage = newMessage;
    }

    public void ToggleImage()
    {

        print("bollocks");
        if(!image.activeSelf)
            image.gameObject.SetActive(true);
        else
            image.gameObject.SetActive(false);
    }
}
