// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract MappingsSample{

    // Mappings have one to one or one to many relationship
    // ONE to ONE relationship for now

    // State Variables
    mapping(address => string[]) public names;

    constructor() public{     

    }

    // What we need?
    /* names[0] = "V";
       names[1] = "Toyin";
       names[2] = "Mark";
       names[3] = "Milad";
       names[4] = "Taher"; */

       // why we cant use array for the purpose?


     function setValues (string memory _name)
     public{
         names[0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2].push(_name);
     }  

     /* names[address of the owner] = [0,1,2,3,4,5,6];*/

     function getOwner()
     view
     public
     returns(address){
         return msg.sender;
     }  


     // USINg STRUCT
     struct Traits{
         string color;
         string country;
     }

     /* Requirements?

     traits["V"] = {color: "Blue",country:"India"};
     traits["Mark"] = {color:"White",country:"Ghana"}*/

     mapping(string => Traits) public traits;

     function
     pushValues(string memory actualName,string memory _color,string memory _country)
     public{
         traits[actualName] = Traits(_color,_country);
     }

}