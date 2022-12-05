// SPDX-License-Identifier: MIT

//Version
pragma solidity ^0.8.4;

//Pure type functions

contract Functions {

function getName()  public pure returns (string memory){
    return "Pepe";
}

//View type functions
uint256 x = 100;
function getNumber()  public view returns (uint256) {
    return x * 2;
}

}
