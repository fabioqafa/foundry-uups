// SPDX-License-Identifier: MIT

//import {UUPSUpgradeable} from "@openzeppelin/contracts-ugpgradeable/proxy/utils/UUPSUpgradeable.sol";
//import {Initializable} from "@openzeppelin/contracts-ugpgradeable/proxy/utils/Initializable.sol";
//import {OwnableUpgradeable} from "@openzeppelin/contracts-ugpgradeable/access/OwnableUpgradeable.sol";

import {UUPSUpgradeable} from "../lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
//import {Initializable} from "../lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";
//import {OwnableUpgradeable} from "../lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";

pragma solidity ^0.8.21;

//inherit Initializable, OwnableUpgradeable if you want to work with owner and initializors
contract BoxV1 is UUPSUpgradeable {
    uint256 internal number;

    // @dev If you want to work with proxy constructors (a.k.a initialiazors)
    // /// @custom:oz-upgrades-unsafe-allow constructor
    // constructor() {
    //     _disableInitializers();
    // }

    // function initialize() public initializer {
    //     __Ownable_init(msg.sender);
    //     __UUPSUpgradeable_init();
    // }

    function getNumber() external view returns (uint256) {
        return number;
    }

    function version() external pure returns (uint256) {
        return 1;
    }

    // @dev If you want only the owner to upgrade the smart contract, add onlyOwner modifier
    function _authorizeUpgrade(address newImplementation) internal override {}
}
