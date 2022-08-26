// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract functionsContract{

    // State Variables

    string name = "Polygon";

    // Mappings

    // Arrays

    // Strcuts

    // Enums (if any)

    // Events

    // Functions or methods
    // What is the syntax?
    /* function functionName(args with datatypes)//local scope
       stateMutability --> View/Pure/Payable
       Visibility 
       returns(return-type){
           // code here
           }
    */

    // How to get a value
    // View only reads info from state
    function getname()
    view // visbility
    public
    returns(string memory){
        return name;// State variable
    }

    // Pure only reads info from the local function
    function getPureName(uint a, uint b)
    pure // visbility
    public
    returns(uint){
        string memory name = "V";// Local variable 
        
        uint result = a+b;
        return result;// State variable
    }

    // Payable
    /*function payOwner(address from,address to, uint value)
    payable // visbility
    public
    returns(uint){

        address[] memory balances;
        balances[msg.sender] = balances[msg.sender]-value;
        return balances[0];// State variable
    }*/

    address payable public owner;

    /*function transfer(address payable _to, uint _amount)
    payable
    public{
        _to.transfer(_amount);
    }*/

    function sendViaTransfer(address payable _to) public payable {
        // This function is no longer recommended for sending Ether.
        _to.transfer(msg.value);
    }


    // NO VISIBILTY PARAMETER
    function changeName(string memory _newName)
    public{
        name = _newName;
    }




}