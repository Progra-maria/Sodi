// SPDX-License-Identifier: MIT

//Vesrion
pragma solidity ^0.8.4;

contract Hashing{

    //Bytes variables (from 1 to 32)
    bytes1 q; //1 byte
    bytes4 r; //4 bytes variable

    //Working with bytes variables -> Hash algorithm
    //keccak256 & sha256 return a 32 bytes value
    bytes32 public hashing_keccak256 = keccak256(abi.encodePacked("hola", "amigo", uint(32), msg.sender, 0x583031D1113aD414F02576BD6afaBfb302140225));
    bytes32 public hashing_sha256 = sha256(abi.encodePacked("hola", "amigo", uint(32), msg.sender, 0x583031D1113aD414F02576BD6afaBfb302140225));
    //Ripemd160 returns a 20bytes value
    bytes20 public hashing_ripemd160 = ripemd160(abi.encodePacked("hola", "amigo", uint(32), msg.sender, 0x583031D1113aD414F02576BD6afaBfb302140225));

}