// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IERC20Portal} from "test-project-foo-0.0.2/src/portals/IERC20Portal.sol";

contract PortalProvider {
    IERC20Portal public immutable erc20Portal;

    constructor (IERC20Portal _erc20Portal) {
        erc20Portal = _erc20Portal;
    }
}
