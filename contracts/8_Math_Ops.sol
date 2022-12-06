// SPDX-License-Identifier: MIT

//Version
pragma solidity ^0.8.4;

contract MathOps {

    function sum(int a, int b) public pure returns (int){
        return (a +b);
    }

    function sub(int a, int b) public pure returns (int){
        return (a -b);
    }

    function mult(int a, int b) public pure returns (int){
        return (a * b);
    }

    function div(int a, int b) public pure returns (int){
        return (a / b);
    }

    function mod(int a, int b) public pure returns (int){
        return (a % b);
    }

    function pow(uint a, uint b) public pure returns (uint){
        return (a ** b);
    }

    //(a+b) % c
    function _addmod(uint a, uint b, uint c) public pure returns (uint){
        return (addmod(a, b, c));
    }

    //(a*b) % c
    function _mulmod(uint a, uint b, uint c) public pure returns (uint){
        return (mulmod(a, b, c));
    }
}