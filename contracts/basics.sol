// SPDX-License-Identifier: GPL-3.0
// SEMANTIC VERSIONING
pragma solidity >=0.7.0 <0.9.0;

contract Person{

    // STATE VARIABLES by default are storage
    // Syntax for state variables
    // dataType visibility name
    // String 
    string public name;
    // Float
    uint public age; 

    constructor(string memory _name,uint _age) public{

        name = _name; // _name and _age are local scope --> LOCAL VARIABLES
        age  = _age;

    }

    // ARRAYS
    // Two different arrays
    // 1. Fixed array --> the length is fixed
    // dataType[size] visibility name
    uint[2] public luckyNumbers;// Global scope state variable

    // 2. Dynamic Array --> you can have infinite items
    // dataType[] visibility name
    uint[] public luckNumbers2;

    function enterValues(uint a, uint b) public {

       luckyNumbers[0] = a;
       luckyNumbers[1] = b;
        
    }

    function enterValuesAgain(uint a, uint b,uint c,uint d) public {

        luckNumbers2.push(a);
        luckNumbers2.push(b);
        luckNumbers2.push(c);
        luckNumbers2.push(d);


    }

    // STRCTS --> Strcutures
    // Requirement : Person traits should be included
    /*struct structName{

        dataType name1;
        dataType name2;

    }*/

    // CREATING
    struct Traits{
        string color;
        string country;
        uint height;
    }
    // Declaring the STRUCT
    Traits public characterOfAPerson;

    // ASSIGNING
    function 
    assignValues(string memory _color,string memory _country,uint _height) 
    public{
         characterOfAPerson = Traits(_color,_country,_height);
         /*characterOfAPerson.color = _color;
         characterOfAPerson.country = _country;
         characterOfAPerson.height = _height;*/
    }

    // GETTING
    function getTraits() public view returns(string memory){
        return characterOfAPerson.color;
    }


    // ENUMS --> Enumerators --> NOT IMPORTANT
    enum interest {likes,dislikes}
    interest public choice;
    interest constant defaultValue = interest.likes;
    
    // ASSIGN
    function dislikeButton()
    public{
        
        // By default enum will take the first value
        // now you need to chnage the state of enum variable
        choice = interest.likes;
    }
    // READ
    function getEnumValue()
    view
    public
    returns(interest){
        return choice;
    }


    // MAPPINGS
    // mapping(key(dataType) => values(dataTypes)) visbility name;
    mapping(address => string[]) public listOfNFTNames;
    //string[] public listsOfNFTs; 

    // SETTER
    function assignMappingValue( string memory _value)
    public{
        listOfNFTNames[msg.sender].push(_value);
    }

    // GETTER
    function getMappingValue()
    view
    public
    returns(string[] memory){
         return listOfNFTNames[msg.sender];
    }

}