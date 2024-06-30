// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
函数
支持隐式返回
支持对象格式的请求参数
*/
contract Function {
    function implicitReturn() public pure returns (uint256 x, uint256 y) {
        x = 12;
        y = 25;
    }

    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    function objectParams() public pure returns (uint256) {
        return add({a: 1, b: 2});
    }
}