// SPDX-License-Identifier: MIT

//Version
pragma solidity ^0.8.4;

//Imports an star contract from Openzeppelin
import "@openzeppelin/contracts@4.5.0/token/ERC721/ERC721.sol";

//Smart Contract Declaration
contract FirstContract is ERC721{
    address public owner;

//Storing the deployer address in the variable "owner"
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol){
        owner = msg.sender;
    }
}