// SPDX-License-Identifier: MIT

//Version
pragma solidity ^0.8.4;

contract Variables_modifiers{

    //Unsigned int variables
    uint a; //uint is equal to uint256 (256 bytes)
    uint8 b = 130; //8 bytes

    //signed int variables
    int8 c;
    int8 f = -42;

    //string variables
    string g;
    string h = "Hello World";

    //boolean variables
    bool m;
    bool n = true;

    //Bytes variables (from 1 to 32)
    bytes1 q; //1 byte
    bytes4 r; //4 bytes variable

    //Address variables
    address my_adrress1;

    //Enum variables DON´T ADMIT SEMICOLON
    enum options1 {ON, OFF}
    options1 state;
    options1 constant defaultChoice = options1.ON;

    //Working with enums
    //Sets state to ON (0)
    function turnOn() public {
        state = options1.ON;
    }
    //Sets state to OFF (1)
    function turnOff() public {
        state = options1.OFF;
    }

    //Shows the options1 variable state, with the option number starting at 0
    function displayState()public view returns(options1){
        return state;
    }
    //Variable modifiers
    //Public variables
    uint8 public d = 6; //the public modifier makes visible our variable
    int8 public e = -8;
    string public i = "My public string";
    bool public o = false;
    address public public_address1;
    address public public_address2 = 0x0A098Eda01Ce92ff4A4CCb7A4fFFb5A43EBC70DC;
    address public public_address3 = msg.sender;

    //Private variables
    uint private j = 234;
    int private k = -266;
    string private l = "My private string";
    bool private p = false;

    //Working with bytes variables -> Hash algorithm
    bytes32 public hashing = keccak256(abi.encodePacked("hola", "amigo"));

}