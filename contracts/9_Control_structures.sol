// SPDX-License-Identifier: MIT

//Version
pragma solidity ^0.8.4;

contract ControlStructures {

    string res;
    uint len = 1;

    function biggerThanFive(uint nb) public {
        if (nb >= 5){
            res = "Greater or equal than five";
        }else{
            res = "Lower than five";
        }
    }


    function getRes() public view returns (string memory){

        return (res);
    }


    function incrementTenTwices(uint _number) public pure returns (uint){

        for(uint i = 0; i < 10; i++){
            _number ++;
            
        }
        return _number;
    }


    function calcLen(uint num) public returns (uint){

        while(num / 10 != 0){
            num = num / 10; 
            len ++;
        }
        return (len);
    }


    function getLen() public view returns (uint){

        return (len);
    }


    function calculator(string memory operation, uint a, uint b) public pure returns (uint){

        bytes32 hash_operator = keccak256(abi.encodePacked(operation));

        if (hash_operator == keccak256(abi.encodePacked("+"))){
            return ( a + b);
        }else if (hash_operator == keccak256(abi.encodePacked("-"))){
            return (a - b);
        }else if (hash_operator == keccak256(abi.encodePacked("x"))){
            return (a * b);
        }else if (hash_operator == keccak256(abi.encodePacked("/"))){
            if (b == 0){
                return 0;
            } else
            return (a / b);
        }else if (hash_operator == keccak256(abi.encodePacked("^"))){
            return (a ** b);
        }else
        return 0;
    }

}