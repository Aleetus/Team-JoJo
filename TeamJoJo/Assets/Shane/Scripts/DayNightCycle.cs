using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DayNightCycle : MonoBehaviour
{
    [Header("Time")]
    [Tooltip("Day Length in Minutes")]
    [SerializeField]
    private float _targetDayLength = 13f;
    public float targetDayLength
    {
        get
        {
            return _targetDayLength;
        }
    }
    [SerializedField]
    [Range(0f, 1f)]
    private float _timeOfDay;
    public float timeOfday
    {
        get
        {
            return _timeOfDay;
        }

    }
    [SerializedField]
    private int _dayNumber = 0;
    public int dayNumber
    {
        get
        {
            return _dayNumber;
        }
    }
    [SerializedField]
    private int _yearNumber = 0;
    public int yearNumber
    {
        get
        {
            return _yearNumber;
        }
    }
    private float _timeScale = 100f;
    [SerializedField]
    private int _yearLength = 100;
    public float yearLength
    {
        get
        {
            return _yearLength;
        }
    }
    public bool pause = false;

    private void Update()
    {
        if(!pause)
        {
            UpdateTimeScale();
        }
    }

    private void UpdateTimeScale()
    {
        _timeScale = 24 / (_targetDayLength / 60);
    }

    private void UpdateTime()
    {
        _timeOfDay += Time.deltaTime * _timeScale / 86400;
        if(_timeOfDay > 1)
        {
            _dayNumber++;
            _timeOfDay -= 1;

            if(_dayNumber > _yearLength)
            {
                _yearNumber++;
                _dayNumber = 0;
            }
        }

    }

    
    

}
