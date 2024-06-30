// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
mapping 是可以嵌套的
key可以是内置的值，string, bytes，另一个contract，但不可以是mapping
value可以是任意值
*/
contract Mapping {
    mapping(string => mapping(string => uint8)) public profile;

    function set(string memory province, string memory name, uint8 age) public {
        profile[province][name] = age;
    }

    function get(string memory province, string memory name) public view returns (uint8) {
        return profile[province][name];
    }

    function remove(string memory province, string memory name) public {
        delete profile[province][name];
    }
}