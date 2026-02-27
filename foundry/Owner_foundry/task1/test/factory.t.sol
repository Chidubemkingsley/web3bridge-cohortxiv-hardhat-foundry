// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {ChildFactory} from "../src/ChildFactory.sol";
import {Child} from "../src/child.sol";

contract ChildFactoryTest is Test {
    ChildFactory public factory;
    address public user = address(1);

    function setUp() public {
        factory = new ChildFactory();
    }

    function test_CreateChild() public {
        vm.prank(user);
        address childAddr = factory.createChild(10);

        assertEq(factory.getChildrenCount(), 1);

        Child child = Child(childAddr);

        assertEq(child.owner(), user);
        assertEq(child.number(), 10);
    }

    function test_IncrementThroughFactoryCreatedChild() public {
        vm.prank(user);
        address childAddr = factory.createChild(5);

        Child child = Child(childAddr);

        vm.prank(user);
        child.increment();

        assertEq(child.number(), 6);
    }

    function test_RevertIfNotOwner() public {
        vm.prank(user);
        address childAddr = factory.createChild(3);

        Child child = Child(childAddr);

        vm.expectRevert("Not owner");
        child.increment();
    }

    function testFuzz_CreateChild(uint256 x) public {
        vm.prank(user);
        address childAddr = factory.createChild(x);

        Child child = Child(childAddr);

        assertEq(child.number(), x);
        assertEq(child.owner(), user);
    }
}