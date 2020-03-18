using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TimedDestroyFish : MonoBehaviour
{

    // Start is called before the first frame update
    void Start()
    {
        Destroy(gameObject, 24);
    }

    // Update is called once per frame
    void Update()
    {

    }
}
