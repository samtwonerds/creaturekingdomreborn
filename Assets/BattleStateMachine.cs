using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BattleStateMachine : MonoBehaviour
{
    public enum BattleState {  WAIT, TAKEACTION, PERFORMACTION }
    public BattleState battleState;

    public List<HandleTurns> handleTurns = new List<HandleTurns>();
    public List<GameObject> heroesInBattle = new List<GameObject>();
    public List<GameObject> enemiesInBattle = new List<GameObject>();


    // Start is called before the first frame update
    void Start()
    {
        battleState = BattleState.WAIT;
        enemiesInBattle.Add(GameObject.FindGameObjectWithTag("Enemy"));
        heroesInBattle.Add(GameObject.FindGameObjectWithTag("Hero"));
    }

    // Update is called once per frame
    void Update()
    {
        switch (battleState)
        {
            case (BattleState.WAIT):

                break;
            case (BattleState.TAKEACTION):

                break;
            case (BattleState.PERFORMACTION):

                break;
        }
    }

    public void CollectActions(HandleTurns input)
    {
        handleTurns.Add(input);
    }
}
