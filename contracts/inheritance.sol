// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
    A
   / \
  B   C
 / \ /
F  D,E
*/
/**
多重继承中，更顶层的放前面，顺序不能变
super.foo() 自底向上执行所有的合约的函数
*/
contract A {
    function foo() public pure virtual returns (string memory) {
        return 'A';
    } 
}

contract B is A {
    function foo() public pure virtual override returns (string memory) {
        return 'B';
    }
}

contract C is A {
    function foo() public pure virtual override returns (string memory) {
        return 'C';
    }
}

contract D is B, C {
    function foo() public pure virtual override(B, C) returns (string memory) {
        return super.foo();
    }
}

contract E is B, C {
    function foo() public pure virtual override(B, C) returns (string memory) {
        return B.foo();
    }
}

contract F is A, B {
    function foo() public pure virtual override(A, B) returns (string memory) {
        return super.foo();
    }
}