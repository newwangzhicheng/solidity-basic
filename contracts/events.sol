// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
最多3个indexed用于索引
*/
contract Events {
    event Log(address indexed addr, string msg);

    function log() public {
        emit Log(msg.sender, 'hello');
        emit Log(msg.sender, 'world');
    }
}