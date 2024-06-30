// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
memory类型的数组只能是定长的
delete不会改变数组的长度，而是将对应的地方变为默认值
*/
contract Array {
    uint256[] public arr;
    uint256[5] public fixedArr = [1,2,3,4,5];

    function get(uint256 i) public view returns (uint256) {
        return arr[i];
    }

    function getArr() public view returns(uint256[] memory) {
        return arr;
    }

    function push(uint256 j) public {
        arr.push(j);
    }

    function pop() public {
        arr.pop();
    }

    function deletes(uint256 i) public {
        delete arr[i];
    }

    function createArr() public pure returns (uint256[] memory) {
        uint256[] memory a = new uint256[](5);
        return a;
    }

}