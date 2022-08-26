// Solidity program to demonstrate 
// how to deploy a library
pragma solidity ^0.8.0;

// Defining Library
library LibExample {

    // Function to power of 
    // an unsigned integer
    function pow(
      uint a, uint b) public view returns (
      uint, address) {
        return (a ** b, address(this));
    }
}

// Defining calling contract
contract LibraryExample  {
    
    // Deploying library using 
    // "for" keyword
    using LibExample for unit;
    // import method from the file;
    address owner = address(this);
    
    // Calling function pow to 
    // calculate power 
    function getPow(
      uint num1, uint num2) public view returns (
      uint, address) {
        return num1.pow(num2);
    }
}