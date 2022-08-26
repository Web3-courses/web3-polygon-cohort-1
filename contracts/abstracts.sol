// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract Parent{// Ethereum
    uint private a;
    uint private b;
    uint private sum;

    event added(uint indexed key);// emitting an event --> 3 indexes per event
    event addedAgain(uint indexed addedAGain);
    // Function to add
    function add(uint _a,uint _b)
    external{
        a = _a;
        b = _b;
        sum = a + b;
        emit added(sum);
    }

    // Function to get values
    function get()
    view // Im looking at state variables
    external
    returns(uint){
        return sum;       
    }
}

abstract contract child is Parent{// Polygon

    uint public multiply;

    // Multiply function
    function multi(uint _a,uint _b)
    public{
        multiply = _a * _b;
    }


}

contract grandchild is child{// Our class students

}