// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { IProxy } from '@axelar-network/axelar-gmp-sdk-solidity/contracts/interfaces/IProxy.sol';

/**
 * @title ITokenManagerProxy Interface
 * @notice This interface is for a proxy for token manager contracts.
 */
interface ITokenManagerProxy is IProxy {
    error ZeroAddress();

    /**
     * @notice Returns implementation type of this token manager.
     * @return uint256 The implementation type of this token manager.
     */
    function implementationType() external view returns (uint256);

    /**
     * @notice Returns the interchain token ID of the token manager.
     * @return bytes32 The interchain token ID of the token manager.
     */
    function interchainTokenId() external view returns (bytes32);
}
