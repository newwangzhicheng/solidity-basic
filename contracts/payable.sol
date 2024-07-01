// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
constructor加payable的意义：部署合约的时候可以给合约添加以太币
如何让合约接收以太币：合约有receive和fallback函数
函数中使用了payable，transfer，call等关键字，函数必须声明payable
*/
contract Payable {
    address public owner;
    constructor() payable  {
        owner = msg.sender;
    }

    receive() external payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function sendEther(address payable recipient, uint256 value) public payable {
        require(owner == msg.sender, "not owner");
        require(address(this).balance > value, "balance not enough");
        recipient.transfer(value);
    }
}