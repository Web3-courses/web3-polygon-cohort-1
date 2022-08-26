// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;


contract checkOverLoad{

    // the same anme can be used multiple times

    function add(uint a,uint b)// You can have different arguments or different datatypes
    pure
    public
    returns(uint){

        return a+b;

    }

    // What if???

    function add(string memory a, string memory b, string memory c)
    pure
    public
    returns(uint){
        return 1;
    }



}