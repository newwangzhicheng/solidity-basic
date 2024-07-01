// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Payable {
    address payable public owner;
    constructor()  {
        owner = payable(msg.sender);
    }

    function sendEther(address payable recipient, uint256 value) public payable {
        require(value < owner.balance, "over");
        owner.transfer(value);
    }
}