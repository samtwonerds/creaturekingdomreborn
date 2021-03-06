﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class BaseEnemy : MonoBehaviour
{
    [Header("Core Stats")]
    public string unitName;
    public int unitLevel;
    public int unitRank;

    public int strength;
    public int defence;
    public int agility;
    public int critChance;
    public int critDamage;
    public int evasion;
    public int accuracy;

    public float maxHP;
    public float currentHP;

    public float damage;
    public float heal;

    public enum Element { FIRE, ICE, NATURE, ELECTRIC, WATER, COMBAT, ARCANE }
    public enum Rarity { COMMON, RARE, EPIC, LEGENDARY }

    public Element element;
    public Rarity rarity;

    [Header("General")]
    [SerializeField] GameObject ability1; // this should be changed to an ability class maybe???
    [SerializeField] GameObject ability2; // use a list
    [SerializeField] GameObject ability3;


    public bool TakeDamage(int dmgAmount)
    {
        currentHP -= dmgAmount; // subtracts dmg from current HP.. apparently

        if (currentHP <= 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public void Heal(int healAmount)
    {
        currentHP += healAmount;
        if (currentHP > maxHP)
        {
            currentHP = maxHP;
        }
    }
}
