// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
创建结构体可以是
直接传递Todo(name, complete)
也可以像js传递对象一样Todo({name: name, complete: complete})
*/
contract Struct {
    struct Todo {
        string name;
        bool complete;
    }

    Todo[] public myTodos;

    function set1(string memory name, bool complete) public {
        myTodos.push(Todo(name, complete));
    }

    function set2(string memory name, bool complete) public {
        myTodos.push(Todo({name: name, complete: complete}));
    }
}