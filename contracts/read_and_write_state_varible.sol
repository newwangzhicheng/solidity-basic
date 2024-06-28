// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
读取链上的变量不消耗gas
执行函数消耗gas
修改链上的变量消耗更多的gas
*/
contract ReadAndWriteStateVariable {
    uint public num = 12;

    function get() public view returns (uint) {
        return num;
    }

    function set() public {
        num++;
    }
}