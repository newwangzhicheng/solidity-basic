// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
view代表函数要访问链上的变量
public表示函数的访问权限，外部合约可见
*/
contract Counter {
    int256 public count;

    function get() public view returns (int256) {
        return count;
    }

    function inc() public {
        count++;
    }

    function dec() public {
        count--;
    }
}