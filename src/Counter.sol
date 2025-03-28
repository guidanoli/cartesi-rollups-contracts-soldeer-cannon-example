// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IERC20Portal} from "test-project-foo-0.0.2/src/portals/IERC20Portal.sol";

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
