// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract functionsContract{// contract ius deployed by someone


    // VISIBILITY --> Public, Private, Internal, External
    // Varaibles

    uint public num1;
    uint private num2 = 2;
    uint internal num3 = 3;
    //uint external num4 = 4;

    function setValue(uint _num1)
    public{
        num1 = _num1;
    }

    // getter function
    function privateNumber()
    view
    public
    returns(uint){
        return num2;
    }


    function externalNumber()
    external
    view
    returns(uint){
        return num3;
    }

    


}

contract latest is functionsContract{// extension of the parent contract

    function getValue()
    view
    public
    returns(uint){
        return num1;
    }


    //num3
    function getInternal()
    view
    public
    returns(uint){
        return num3;
    }

}