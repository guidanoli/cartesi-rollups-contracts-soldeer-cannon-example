// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.13;

import {IInputBox} from "cartesi-rollups-contracts-2.0.0-rc.17/src/inputs/IInputBox.sol";
import {IEtherPortal} from "cartesi-rollups-contracts-2.0.0-rc.17/src/portals/IEtherPortal.sol";
import {IERC20Portal} from "cartesi-rollups-contracts-2.0.0-rc.17/src/portals/IERC20Portal.sol";
import {IERC721Portal} from "cartesi-rollups-contracts-2.0.0-rc.17/src/portals/IERC721Portal.sol";
import {IERC1155SinglePortal} from "cartesi-rollups-contracts-2.0.0-rc.17/src/portals/IERC1155SinglePortal.sol";
import {IERC1155BatchPortal} from "cartesi-rollups-contracts-2.0.0-rc.17/src/portals/IERC1155BatchPortal.sol";

contract Registry {
    IInputBox public immutable inputBox;
    IEtherPortal public immutable etherPortal;
    IERC20Portal public immutable erc20Portal;
    IERC721Portal public immutable erc721Portal;
    IERC1155SinglePortal public immutable erc1155SinglePortal;
    IERC1155BatchPortal public immutable erc1155BatchPortal;

    constructor (
        IInputBox _inputBox,
        IEtherPortal _etherPortal,
        IERC20Portal _erc20Portal,
        IERC721Portal _erc721Portal,
        IERC1155SinglePortal _erc1155SinglePortal,
        IERC1155BatchPortal _erc1155BatchPortal
    ) {
        inputBox = _inputBox;
        etherPortal = _etherPortal;
        erc20Portal = _erc20Portal;
        erc721Portal = _erc721Portal;
        erc1155SinglePortal = _erc1155SinglePortal;
        erc1155BatchPortal = _erc1155BatchPortal;
    }
}
