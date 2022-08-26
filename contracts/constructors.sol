// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ConstructorExample{

    // Without a constructor
    string public name;
    string public title;

    constructor(string memory _name,string memory _title) public{

        name  = _name;
        title = _title;

    }


    function getValue()
    view
    public
    returns(string memory){
        return name;
    } 

}