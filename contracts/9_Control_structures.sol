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

}