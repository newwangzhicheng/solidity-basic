// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
和js一样
不用记
*/
contract ForWhile {
    function add() public pure returns (uint) {
        uint i = 0;
        uint j = 0;

        for(; i < 10; i++) {
            j++;
        }

        while(j < 20) {
            j++;
        }

        return j;
    }
}