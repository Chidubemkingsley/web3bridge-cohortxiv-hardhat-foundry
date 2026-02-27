// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Child {
    address public immutable owner;
    uint256 public number;

    event NumberUpdated(uint256 newNumber);

    constructor(address _owner, uint256 _initialNumber) {
        owner = _owner;
        number = _initialNumber;
    }

    function setNumber(uint256 _number) external {
        require(msg.sender == owner, "Not owner");
        number = _number;
        emit NumberUpdated(_number);
    }

    function increment() external {
        require(msg.sender == owner, "Not owner");
        number += 1;
        emit NumberUpdated(number);
    }
}