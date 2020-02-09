using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public enum BattleState { START, PLAYERTURN, ENEMYTURN, WON, LOST}


public class BattleSystem : MonoBehaviour
{
    public GameObject playerPrefab;
    public GameObject enemyPrefab;

    public Transform playerBattleStation;
    public Transform enemyBattleStation;

    BaseHero playerUnit;
    BaseHero enemyUnit;

    public Text dialogueText;

    public BattleHud playerHud;
    public BattleHud enemyHud;

    public BattleState state;


    // Start is called before the first frame update
    void Start()
    {
        state = BattleState.START;
        StartCoroutine(SetupBattle()); 
    }

    private void Update()
    {
        enemyHud.SetHP(enemyUnit.currentHP);
        playerHud.SetHP(playerUnit.currentHP);
    }

    IEnumerator SetupBattle()
    {
        GameObject playerGameObject = Instantiate(playerPrefab, playerBattleStation);
        playerUnit = playerGameObject.GetComponent<BaseHero>();

        GameObject enemyGameObject = Instantiate(enemyPrefab, enemyBattleStation);
        enemyUnit = enemyGameObject.GetComponent<BaseHero>();

        dialogueText.text = "A wild " + enemyUnit.unitName + " approaches";

        playerHud.SetHud(playerUnit); // this method requires a (Unit unit) parameter passing through
        enemyHud.SetHud(enemyUnit);

        yield return new WaitForSeconds(2f);

        state = BattleState.PLAYERTURN;
        PlayerTurn();

    }

    void PlayerTurn()
    {
        dialogueText.text = "Choose an action:";
    }

    IEnumerator EnemyTurn()
    {
        // put enemy logic in here //
        dialogueText.text = enemyUnit.unitName + " attacks!";

        yield return new WaitForSeconds(1f);

        bool playerIsDead = playerUnit.TakeDamage(enemyUnit.damage); // set a boolean variable, then execute this method and set the boolean equal to the return value from this method

        yield return new WaitForSeconds(1f);

        if(playerIsDead) // if the isDead variable is true // 
        {
            state = BattleState.LOST;
            EndBattle();
        }
        else
        {
            state = BattleState.PLAYERTURN;
            PlayerTurn();
        }
    }

    public void OnAttackButton()
    {
        if (state != BattleState.PLAYERTURN)
            return;

        StartCoroutine(PlayerAttack());
    }

    public void OnHealButton()
    {
        if (state != BattleState.PLAYERTURN)
            return;

        StartCoroutine(PlayerHeal());
    }


    IEnumerator PlayerAttack()
   {        
        bool isDead = enemyUnit.TakeDamage(playerUnit.damage); // set a boolean variable, then execute this method and set the boolean equal to the return value from this method
        dialogueText.text = "The attack is successful";
        yield return new WaitForSeconds(2f);

        if (isDead)
        {
            state = BattleState.WON;
            EndBattle();
            // end the battle
        }
        else
        {
            state = BattleState.ENEMYTURN;
            StartCoroutine(EnemyTurn());
        }
            

            // check if enemy is dead
            // change state based on what happened
   }

    IEnumerator PlayerHeal()
    {
        playerUnit.Heal(5);
        dialogueText.text = "You feel renewed strength.";
        yield return new WaitForSeconds(2f);
        state = BattleState.ENEMYTURN;
        StartCoroutine(EnemyTurn());
    }

    void EndBattle()
    {
        if (state == BattleState.WON)
        {
            dialogueText.text = "You won the battle!";
        }
        else if (state == BattleState.LOST)
        {
            dialogueText.text = "Bad luck.";
        }
        else print("wtf is happening?");
    }

}
