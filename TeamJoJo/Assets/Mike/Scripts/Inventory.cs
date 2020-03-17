using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Inventory : MonoBehaviour
{
    PickUp currentObject;
    public Text text;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if(currentObject != null)
        {
            Debug.Log("hah yeah");
            text.text = "haha yeah";
        }
    }



    void OnTriggerEnter(Collider other)
    {
        Debug.Log("here");
        currentObject = other.gameObject.GetComponent<PickUp>();
    }
}
