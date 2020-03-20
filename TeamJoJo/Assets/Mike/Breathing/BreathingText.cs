using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BreathingText : MonoBehaviour
{
    Text text;

    string currentMessage = "hello";

    bool newMessageToShow;

    public Color transparent;
    public Color opaque;
    Color currentColor; //starts transparent

    public float colorTime; //How long transition takes. defaults to 1.0f 
    float currentColorTime; //stores how much time has passed in this iteration. Will be reset once this value reaches colorTime.

    int colorStage = 0; //if 0 the text will fade in. if 1 hold for a moment. if 2 fades out. Starts at 0. 

    // Start is called before the first frame update
    void Start()
    {
        text = GetComponent<Text>();
        currentColor = transparent;
        currentColorTime = 0;
        newMessageToShow = false;
    }

    // Update is called once per frame
    void Update()
    {
        text.text = currentMessage;
        if (newMessageToShow)
        {
            //fade in
            if(colorStage == 0)
            {
                currentColorTime += Time.deltaTime;
                if (currentColorTime > colorTime)
                    currentColorTime = colorTime;
                float lerpAmount = currentColorTime / colorTime;
                currentColor = Color.Lerp(transparent, opaque, lerpAmount);
                text.color = currentColor;
                if(Color.Equals(currentColor, opaque))
                {
                    colorStage = 1;
                    currentColorTime = 0;
                }

            }
            //hold
            else if(colorStage == 1)
            {
                currentColorTime += Time.deltaTime;
                if (currentColorTime >= colorTime)
                {
                    colorStage = 2;
                    currentColorTime = 0;
                }
            }
            //fade out
            else if (colorStage == 2)
            {
                currentColorTime += Time.deltaTime;
                if (currentColorTime > colorTime)
                    currentColorTime = colorTime;
                float lerpAmount = currentColorTime / colorTime;
                currentColor = Color.Lerp(opaque, transparent, lerpAmount);
                text.color = currentColor;
                if (Color.Equals(currentColor, transparent))
                {
                    colorStage = 0;
                    currentColorTime = 0;
                    newMessageToShow = false;
                }
            }
        }
    }

    public void DisplayMessageQuickly(string message)
    {
        text.text = message;
        //set fadeyness to 100% opaque.
    }

    public void DisplayMessageFadey(string message)
    {
        currentMessage = message;
        newMessageToShow = true;
        colorStage = 0;
        currentColor = transparent;
    }
}
