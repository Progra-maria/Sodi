// SPDX-License-Identifier: MIT

//Version
pragma solidity ^0.8.4;

contract Food {
    //Plates struct
    struct dinnerPlate {
        string name;
        string ingredients;
    }

    //Daily menu
    dinnerPlate [] public menu; //Try with private and see the behaviour

    //New menu creation
    function newMenu(string memory _name, string memory _ingredients) internal {
        menu.push(dinnerPlate(_name, _ingredients));
    }

}

contract Hamburguer is Food {

    address public owner;

    constructor () {
        owner = msg.sender;
    }

    //Cooking a hamburguer from main Smart Contract
    function doHamburguer(string memory _ingredients, uint _units) external {
        require ((_units <= 5), "Ups, the maximum number of hamburguers per order is five. Try again with another quanity");
        newMenu("Hamburguer" , _ingredients);
    }

    //Modifier: allow the access to the owner and only to tyhe owner
    modifier onlyOwner(){
        require (owner == msg.sender, "Forbidden access. You are not allowed to do this action");
        _;
    }

    function hahsPrivateNumber(uint _number) public view onlyOwner returns (bytes32){
        return keccak256(abi.encodePacked(_number));
    }
}