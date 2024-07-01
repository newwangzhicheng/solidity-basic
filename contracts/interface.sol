// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
interface
合约可以通过is继承，必须实现其中声明的方法
方法必须是external的，通常是pure或view的
不可以声明state变量
*/
interface IMyContract {
    function addStr(string memory x, string memory y) pure external returns (string memory);
}