// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract FallbackInputOutput {
    fallback(bytes calldata data) external payable returns (bytes memory) {
        return data;
    }
}

contract SendFallback {
    constructor() payable {}

    function call(address to, uint256 value) public payable returns (string memory) {
        (bool called, bytes memory data) = payable(to).call{value: value}("hello");
        require(called, "called failled");
        return string(abi.encodePacked(data));
    }
}