// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// Official people have created parent contracts for general public
abstract contract ERC20{

    // State variables
    uint public number;
    // Constructor
    constructor(uint _number,uint _anotherNumber) internal{
        number = _number;
    }
    // array
    // struct
    // enums
    // mappings
    // events --., event something(string memory someInfo)
    // modifiers
    // Functions

}


contract VERC20 is ERC20{

    constructor(uint _number) ERC20(_number){}

    // My own functionality
}