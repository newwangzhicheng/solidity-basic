// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
require(condition, msg) 如果不符合condition就报错msg回滚
revert(msg) 回滚并报错msg
assert(condition) 如果不符合condition就报错并回滚，一般用于测试
可以声明一个自定义的error
*/
contract Errors {
    function requireError(uint256 x) public pure {
        require(x >= 10, 'x must bigger than 10');
    }

    function revertError(uint256 x) public pure {
        if (x < 10) {
            revert('');
        }
    }

    function assertError(uint256 x) public pure {
        assert(x >= 10);
    }

    error CusErr(uint256 x, string msg);

    function revertCusErr(uint256 x) public pure {
        if (x < 10) {
            revert CusErr(x, 'x must bigger than 10');
        }
    }
}