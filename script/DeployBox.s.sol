// SPDX-License-Identifier: MIT

pragma solidity ^0.8.21;

import {Script} from "forge-std/Script.sol";
import {BoxV1} from "../src/BoxV1.sol";
import {ERC1967Proxy} from "../lib/openzeppelin-contracts/contracts/proxy/ERC1967/ERC1967Proxy.sol";

contract DeployBox is Script {
    function run() external returns (address) {
        return deployBox();
    }

    function deployBox() public returns (address) {
        vm.startBroadcast();
        BoxV1 box = new BoxV1(); //implementation
        ERC1967Proxy proxy = new ERC1967Proxy(address(box), "");
        vm.stopBroadcast();

        return address(proxy);
    }
}