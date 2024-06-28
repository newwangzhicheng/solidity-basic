// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
1 ether = 1e18
1 gwei = 1e9
1 wei = 1
*/
contract EtherWei {
    uint oneEther = 1 ether;
    uint oneWei = 1 wei;
    uint oneGWei = 1 gwei;

    bool public isOneEther = (oneEther == 1e18);
    bool public isOneWei = (oneWei == 1);
    bool public isOneGwei = (oneGWei == 1e9);

}