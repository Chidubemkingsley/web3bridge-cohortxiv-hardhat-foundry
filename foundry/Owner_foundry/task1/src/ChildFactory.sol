// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Child} from "./child.sol";

contract ChildFactory {
    address[] public allChildren;

    event ChildCreated(address indexed owner, address child);

    function createChild(uint256 _initialNumber) external returns (address child) {
        child = address(new Child(msg.sender, _initialNumber));
        allChildren.push(child);

        emit ChildCreated(msg.sender, child);
    }

    function getChildrenCount() external view returns (uint256) {
        return allChildren.length;
    }
}