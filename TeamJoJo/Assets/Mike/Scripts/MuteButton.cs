using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MuteButton : MonoBehaviour
{
    public GameObject muted;
    public GameObject unmuted;

    bool isMute;

    public void Mute()
    {
        isMute = !isMute;
        AudioListener.volume = isMute ? 0 : 1;

        if (isMute == true)
        {
            muted.SetActive(true);
            unmuted.SetActive(false);
        }
        
        if (isMute == false)
        {
            muted.SetActive(false);
            unmuted.SetActive(true);
        }

    }
}
