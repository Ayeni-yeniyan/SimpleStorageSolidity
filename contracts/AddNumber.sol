// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from './SimpleStorage.sol';

contract AddNumber is SimpleStorage{
    function store(uint256 _index) public  override {
        favouriteNumber=_index;
    }
}
