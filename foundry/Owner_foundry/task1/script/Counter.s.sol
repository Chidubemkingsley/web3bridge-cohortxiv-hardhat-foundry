// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {ChildFactory} from "../src/ChildFactory.sol";

contract ChildFactoryScript is Script {
    ChildFactory public factory;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        factory = new ChildFactory();

        vm.stopBroadcast();
    }
}