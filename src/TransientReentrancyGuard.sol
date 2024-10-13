// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

abstract contract TransientReentrancyGuard {
    uint256 transient _locked;

    modifier noReentrant() {
        if (_locked == 1) {
            revert("ReentrancyGuard: reentrant call");
        }
        _locked = 1;
        _;
        // Unlocks the guard, making the pattern composable.
        // After the function exits, it can be called again, even in the same transaction.
        _locked = 0;
    }
}

abstract contract BrokenTransientReentrancyGuard {
    uint256 transient _locked;

    modifier noReentrant() {
        if (_locked == 1) {
            revert("ReentrancyGuard: reentrant call");
        }
        _locked = 1;
        _;
    }
}
