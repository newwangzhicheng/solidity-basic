// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
要存储并改变的非基础类型数据，请使用storage，只能作用于array，struct，mapping
*/
contract DataLocation {
    mapping(string => uint256) public person;

    function changePerson() public {
        mapping(string => uint256) storage p = person;
        p['a'] = 25;
    }

    function returnGet(string[] calldata arr) public pure returns (string[] calldata) {
        return arr;
    }
}