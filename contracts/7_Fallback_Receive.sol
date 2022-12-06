// SPDX-License-Identifier: MIT

//Version
pragma solidity ^0.8.4;

//Fallback contract
contract FallBack_Receive {

event log(string _name, address _sender, uint _amount, bytes);

fallback() external payable {
emit log("fallback", msg.sender, msg.value, msg.data);
}

receive() external payable {
  emit log("receive", msg.sender, msg.value, "");
}
}