// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

enum ReceiveType {
    receiveType,
    fallbackType
}


/**
transfer 如果交易失败会抛出error回滚，现在已经不推荐
send 返回bool代表交易是否成功，不推荐发送以太币
call 推荐，配合modifier防止重入攻击

接收以太币
如果没有msg.data优先调用receive，否则优先调用fallback
*/
contract ReceiveEther {
    event LogReceive(address indexed addr, ReceiveType receiveType, uint256 data);

    receive() external payable {
        emit LogReceive(msg.sender, ReceiveType.receiveType, msg.value);
    }

    fallback() external payable {
        emit LogReceive(msg.sender, ReceiveType.fallbackType, msg.value);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract SendEther {
    bool locked;
    constructor() payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function transferEther(address payable to, uint256 amount) public payable {
        to.transfer(amount);
    }

    function sendEther(address payable to, uint256 amount) public payable {
        (bool sent) = to.send(amount);
        if(!sent) {
            revert("send failed");
        }
    }

    modifier noReentry() {
        require(!locked, "no reentry");
        locked = true;
        _;
        locked = false;
    }
    function callEther(address payable to, uint256 amount) public payable noReentry {
        (bool called, bytes memory data) = to.call{value: amount}("");
        if(!called) {
            revert(string(abi.encodePacked("called failed,", data)));
        }
    }
}