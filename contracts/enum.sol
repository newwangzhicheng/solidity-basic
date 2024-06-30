// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
delete会将变量值设为enum第一个
*/
contract Enum {
    enum Direction {
        top,
        left,
        bottom,
        right
    }

    Direction public dir = Direction.left;

    function get() public view returns (Direction) {
        return dir;
    }

    function set(Direction newDir) public {
        dir = newDir;
    }

    function reset() public {
        delete dir;
    }

}