// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract IfElse {
    function isPositive(int256 x) public pure returns (bool) {
        if (x > 0) {
            return true;
        } else {
            return false;
        }
    }
}