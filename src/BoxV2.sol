// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract BoxV2 is Initializable, OwnableUpgradeable, UUPSUpgradeable {
    uint256 internal number;

    constructor() {
        _disableInitializers();
    }

    function initialize() public initializer {
        __Ownable_init(); // sets owner msg.sender;
        __UUPSUpgradeable_init();
    }

    function setNumber(uint256 _number) external {}

    function getNumber() external view returns (uint256) {
        return number;
    }

    function version() external pure returns (uint256) {
        return 2;
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override {}
}