// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
call 推荐发送以太币的时候使用
不推荐直接底层执行函数
1. 不确定合约是否有该函数
2. 跳过了类型检查
3. 执行的函数的回滚不会向上传递，需要自己判断
*/
contract Call {
    function callOther(address c) public returns (bytes memory) {
        (bool called, bytes memory data) = c.call{value: 0}(
            abi.encodeWithSignature('add(uint256,uint256)', 1, 2)
        );
        require(called, 'failed');
        return data;
    }
}

contract Add {
    function add(uint256 x, uint256 y) public pure returns (uint256) {
        return x + y;
    }
}