using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Breathe : MonoBehaviour
{
    [SerializeField] private GameObject breatheEnabled;

    [SerializeField] private bool isEnabled;

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            isEnabled = !isEnabled;
        }

        if (isEnabled)
        {
            ActivateMenu();
        }

        else
        {
            DeactivateMenu();
        }
    }


    void ActivateMenu()
    {
        breatheEnabled.SetActive(true);
    }

    public void DeactivateMenu()
    {
        breatheEnabled.SetActive(false);
        isEnabled = false;
    }

}
