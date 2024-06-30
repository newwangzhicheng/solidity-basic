// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
函数修饰符像public修饰符一样，可以在函数前/后执行
*/
contract FunctionModifier {
    address owner;
    bool lock;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(owner == msg.sender, 'not owner');
        _;
    }

    modifier validAddress(address addr) {
        require(addr != address(0), 'not valid address');
        _;
    }

    function changeOwner(address addr) public onlyOwner validAddress(addr) {
        owner = addr;
    }

    modifier noReentry() {
        require(!lock, 'reentry');
        lock = true;
        _;
        lock = false;
    }

    function dec(uint256 x) public noReentry {
        if(x > 1) {
            dec(x - 1);
        }
    }
}