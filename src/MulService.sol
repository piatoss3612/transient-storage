// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract MulService {
    uint256 transient _multiplier;

    function setMultiplier(uint256 multiplier) external {
        _multiplier = multiplier;
    }

    function getMultiplier() private view returns (uint256 multiplier) {
        multiplier = _multiplier;
    }

    function multiply(uint256 value) external view returns (uint256) {
        return value * getMultiplier();
    }
}
