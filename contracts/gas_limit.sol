// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**

*/
contract GasLimit {
    uint public a;
    function add() public {
        while(true) {
            a++;
        }
    }
}