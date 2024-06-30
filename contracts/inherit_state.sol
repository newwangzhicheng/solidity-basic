// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
正确修改继承的state的方法，在constructor中修改
*/
contract A {
    string public x = 'A';
}

contract B is A {
    constructor() {
        x = 'B';
    }
}