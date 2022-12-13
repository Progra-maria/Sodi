// SPDX-License-Identifier: MIT

//Version
pragma solidity ^0.8.4;

import "./13_ERC20_MyOwn.sol";

contract CustomERC20 is ERC20 {
    //Cosntructor
    constructor() ERC20("Maria", "MC"){}

    //New Tokens Creator
    function createTokens() public {
        _mint(msg.sender, 1000);
    }
}
