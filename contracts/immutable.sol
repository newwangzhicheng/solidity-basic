// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
immutable类型只能在constructor中
*/
contract Immutable {
    int public immutable year;
    constructor () {
        year = 2021;
        year = 2022;
    }
}