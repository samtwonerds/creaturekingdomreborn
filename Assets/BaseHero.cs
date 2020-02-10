using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class BaseHero : MonoBehaviour
{
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

    public int maxHP;
    public int currentHP;

    public int damage;
    public int heal;

    public enum Element { FIRE, ICE, NATURE, ELECTRIC, WATER, COMBAT, ARCANE }
    public enum Rarity { COMMON, RARE, EPIC, LEGENDARY }

    public Element element;
    public Rarity rarity;
    
}
