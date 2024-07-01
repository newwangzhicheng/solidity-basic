// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
调用目标合约的函数，但是使用当前的state, msg.sender, msg.value参数
要求当前合约和目标合约的state保持一样的形状
*/
contract B {
    uint256 num;

    function getValue(uint256 n) public payable returns (uint256, address, uint256) {
        num = n;
        return (num, msg.sender, msg.value);
    }
}

contract A {
    uint256 num;

    function delegateCall(address c) public payable returns (string memory) {
        (bool called, bytes memory data) = c.delegatecall(
            abi.encodeWithSignature("getValue(uint256)", 12)
        );
        require(called, 'failed');
        return string(abi.encodePacked(data));
    }
}