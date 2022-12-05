// SPDX-License-Identifier: MIT

//Version
pragma solidity ^0.8.4;

//Payable functions

contract EthSend {

constructor() payable {}
receive() external payable {}

//Events
event sendStatus(bool);
event callStatus(bool, bytes);

//Transfer (2.300 Gas)
function sendViaTransfer(address payable _to) public payable {
    _to.transfer(1 ether);
    /*To transfer gas to a function:
    _to.transfer(1); 
    NOTE: 1 Ether = 1^18 Gas
    */
}
//Send returns a boolean value // (2.300 Gas)
function sendViaSend(address payable _to) public payable {
    bool sent = _to.send(1 ether);
    emit sendStatus(sent);
    require(sent == true, "Sending Failed");

}
//Call (all the gas)
function sendViaCall(address payable _to) public payable {
    (bool success, bytes memory data) = _to.call{value: 1 ether}("");
    emit callStatus(success, data);
    require(success == true, "Sending Failed");
}
}

contract EthReceiver {
    event log(uint amount, uint gas);
    receive() external payable {
        emit log(address(this).balance, gasleft());
    }

}