// SPDX-License-Identifier: MIT

//Version
pragma solidity ^0.8.4;


import "@openzeppelin/contracts@4.5.0/token/ERC20/ERC20.sol";

contract GLDToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("Gold", "GLD") {
        _mint(msg.sender, initialSupply);
    }
}