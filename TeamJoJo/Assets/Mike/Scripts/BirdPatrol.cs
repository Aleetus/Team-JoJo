using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class BirdPatrol : MonoBehaviour
{
    public Transform pos1;
    public Transform pos2;
    public Transform pos3;
    public Transform pos4;

    private NavMeshAgent agent;

    // Start is called before the first frame update
    void Start()
    {
        agent = gameObject.GetComponent<NavMeshAgent>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == "1")
        {
            agent.SetDestination(pos2.position);
        }
        if (other.tag == "2")
        {
            agent.SetDestination(pos3.position);
        }
        if (other.tag == "3")
        {
            agent.SetDestination(pos4.position);
        }
        if (other.tag == "4")
        {
            agent.SetDestination(pos1.position);
        }
    }

}
