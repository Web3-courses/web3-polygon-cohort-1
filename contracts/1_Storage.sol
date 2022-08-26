// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract FootballTeam {
    
    string public name;
    uint public counter = 0;

    enum PlayerPosition {GK, DEF, MID, ATT}

    struct FootballPlayer {
        string name;
        uint height;
        uint age;
        PlayerPosition position;
    }
    //FootballPlayer playerType;

    FootballPlayer[11] public team;

    constructor(string memory _name) {
        name = _name;
    }

    function addPlayer(string memory _name, uint _height, uint _age)   
    public {
        team[counter] = FootballPlayer(_name, _height, _age, PlayerPosition.DEF);
        counter++;
    }

    /*function getTeam()
    view
    public
    returns(string memory){
        return team.name;
    }*/

}