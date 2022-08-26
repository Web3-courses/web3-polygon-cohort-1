// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract VToken is ERC20 {
    constructor() ERC20("VToken", "VTK") {

   
        _mint(msg.sender, 100 * 10**uint(decimals()));

    }
    
}