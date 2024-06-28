// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
local 本地变量，函数中声明。临时的，程序运行完销毁
state 链上变量，函数外声明。存储在链上
global 全局变量，区块上的一些信息
*/
contract Variables {
    uint256 public timestamp;
    address public addr;

    function set() public {
        timestamp = block.timestamp;
        addr = msg.sender;
    }
}