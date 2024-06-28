// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
bool 默认false

int 默认0
uint 默认0
uint256 默认0 步长为8，最大256

address 默认0x000...000(20字节)

bytes 默认0x
bytes1 默认0x00 步长为1，最大32

fixed 默认fixed128x19
ufixed 默认ufixed128x19 整数部分步长8，小数部分0-80，步长1
*/
contract Primitive {
    bool public boolVar;

    int public intVar;
    int256 public int256Var = type(int256).max;

    uint public uintVar;
    uint256 public uint256Var = type(uint256).max;

    address public addVar;

    bytes public bytesVar;
    bytes1 public bytes1Var;
    bytes32 public bytes22Var;
}