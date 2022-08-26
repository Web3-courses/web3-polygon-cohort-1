// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;



interface IAddition{// Polygon

    struct person{
        string name;
    }

    function add(uint _a,uint _b) external;
    function get() view external returns(uint);

}


contract addition is IAddition{// Ethereum
    uint private a;
    uint private b;
    uint private sum;

    event added(uint indexed added);// emitting an event

    // Function to add
    function add(uint _a,uint _b)
    override
    external{
        a = _a;
        b = _b;
        sum = a + b;
        emit added(sum);
    }

    // Function to get values
    function get()
    override
    view // Im looking at state variables
    external
    returns(uint){
        return sum;       
    }
}


// My own smart contract

contract myown{
    uint public a;
    uint public b;
    uint public sum;

    // step 1 for now
    IAddition obj;


    function call()
    public{
        obj = new addition();
    }

    function setValue(uint _a,uint _b)
    public{
        a = _a;
        b = _b;
        obj.add(a,b);
        obj.get();
    }



}
