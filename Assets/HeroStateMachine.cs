using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HeroStateMachine : MonoBehaviour
{
    public string unitName;
    public int unitLevel;
    public int unitRank;

    public int strength;
    public int defence;
    public float agility;
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

    public BaseHero hero;

    public enum TurnState { PROCESSING, ADDTOLIST, WAITING, SELECTING, ACTION, DEAD }
    TurnState turnState;

    private float currentCooldown = 1f;
    private float maximumCooldown = 100f;

    public Slider actionBar;

    // Start is called before the first frame update
    void Start()
    {
        turnState = TurnState.PROCESSING;
    }

    // Update is called once per frame
    void Update()
    {
        
        switch (turnState)
        {
            case (TurnState.PROCESSING):
                IncreaseActionBar();

                break;
            case (TurnState.ADDTOLIST):

                break;
            case (TurnState.WAITING):

                break;
            case (TurnState.SELECTING):

                break;
            case (TurnState.ACTION):

                break;
            case (TurnState.DEAD):

                break;        
            
        }
    }

    void IncreaseActionBar()
    {
        currentCooldown = currentCooldown + (agility / 300);
        actionBar.value = currentCooldown;
        if(currentCooldown >= maximumCooldown)
        {
            turnState = TurnState.ADDTOLIST;
        }
    }
}
