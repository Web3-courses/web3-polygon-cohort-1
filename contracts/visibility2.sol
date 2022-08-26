// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

abstract contract parent{// contract ius deployed by someone

    address public owner;
     // EVENTS
    event sample(address indexed ownerAddress);// I want to emit address of the owner

    constructor() internal{
       owner  = msg.sender;
       emit sample(owner);
    }

    string publicValue   = "PUBLIC"; 
    string priavteValue  = "PRIVATE"; 
    string internalValue = "INTERNAL"; 
    string externalValue = "EXTERNAL"; 
    // VISIBILITY --> Public, Private, Internal, External
    // Functions

    // MODIFIER
    modifier onlyOwner(){

        // SECURITY CHECKS
        // Check the address of the owner
        // Check whether owner has sufficient funds in the account

        require(msg.sender == owner,"Not the owner");
        // Require is a keyword
        _; // This is the place where the execution starts

    }

   // PUBLIC 
   function getPublic()// this function could be your withdrawal amount function
   view
   public // it is universal
   onlyOwner // modifier
   returns(string memory){
       // require statements
       return publicValue;// Before main code execution
       // When the owner tries to call this function
       // Broadcast the information
       
   }

   // PRIVATE
  function getPrivate()
   view
   private // it is universal
   returns(string memory){
       return publicValue;
   }

    // Internal --> this contreact and the child contracts can access
    // BUT
    // It will not be public to everyone
   function getInternal()
   view
   internal // to this contract and child contracts
   returns(string memory){
       return internalValue;
   }


   // EXTERNAL
   function getExternal()
   view
   external // to child contracts only
   returns(string memory){
       return externalValue;
   }


   /*function Check()
   view
   public{
       getPublic();
       //getPrivate();// Private so I cant access
       getInternal();
       // BUT
       this.getExternal();// This is from external source
   }*/


    

}

contract child is parent{


   // I can get public functions without declaring it
   // Internal 

   function Check()
   view
   public{
       getPublic();
       //getPrivate();// Private so I cant access
       getInternal();
       // BUT
       this.getExternal();// This is from external source
   }
   
   

}