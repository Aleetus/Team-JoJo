using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Breathing : MonoBehaviour
{
    public float maxScale; //largest circle size. defaults to 150f
    public float minScale; //smallest circle size. defaults to 50f
    float currentScale = 0; //defaults to minScale. This value is assigned to the circle's scale per frame.

    public float scaleTime; //How long transition takes. defaults to 5.0f 
    float currentScaleTime = 0; //stores how much time has passed in this iteration. Will be reset once this value reaches scaleTime.

    int scaleStage; //if 0 the circle will shrink until minScale. if 1 will expand till maxScale. if 2 pause for 5 secs. Starts at 1. 

    public string breathInText;
    public string breathOutText;
    public string holdText;
    BreathingText bText;
    RectTransform rectTransform;
    
    // Start is called before the first frame update
    void Start()
    {
        bText = transform.GetChild(0).GetComponent<BreathingText>();
        rectTransform = GetComponent<RectTransform>();
        if (minScale == 0)
            minScale = 50f;
        if (maxScale == 0)
            maxScale = 150f;
        if (scaleTime == 0)
            scaleTime = 5f;
        scaleStage = 1;
    }

    // Update is called once per frame
    void Update()
    {
        if(scaleStage == 1)
        {
            if (currentScaleTime == 0)
                bText.DisplayMessageFadey(breathInText);
            currentScaleTime += Time.deltaTime;
            if (currentScaleTime > scaleTime)
                currentScaleTime = scaleTime;
            float lerpAmount = currentScaleTime / scaleTime;
            currentScale = Mathf.Lerp(minScale, maxScale, lerpAmount);
            rectTransform.sizeDelta = new Vector2(currentScale, currentScale);
            if (Mathf.Approximately(currentScale, maxScale))
            {         
                scaleStage = 2;
                currentScaleTime = 0;
            }

        }
        else if(scaleStage == 0)
        {
            if (currentScaleTime == 0)
                bText.DisplayMessageFadey(breathOutText);
            currentScaleTime += Time.deltaTime;
            if (currentScaleTime > scaleTime)
                currentScaleTime = scaleTime;
            float lerpAmount = currentScaleTime / scaleTime;
            currentScale = Mathf.Lerp(maxScale, minScale, lerpAmount);
            rectTransform.sizeDelta = new Vector2(currentScale, currentScale);
            if (Mathf.Approximately(currentScale, minScale))
            {
                scaleStage = 1;
                currentScaleTime = 0;
            }
        }
        else if(scaleStage == 2)
        {
            if (currentScaleTime == 0)
                bText.DisplayMessageFadey(holdText);
            currentScaleTime += Time.deltaTime;
            if(currentScaleTime >= scaleTime)
            {
                scaleStage = 0;
                currentScaleTime = 0;
            }
        }
        
    }
}
