// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract NoraCoin is ERC20, Ownable {

    address private owner; 
    
    constructor() ERC20("NoraCoin", "NORA") Ownable(owner) {

    }

    function mint(address to, uint _amount) public onlyOwner {
        _mint(to, _amount);
    }

}