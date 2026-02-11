// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Greeter} from "../src/Greeter.sol";

contract GreeterScript is Script {
    Greeter public greeter;

    function setUp() public {}

    function run() public {
        // If using .env private key
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(deployerPrivateKey);

        greeter = new Greeter();

        vm.stopBroadcast();
    }
}
