// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @title Soulbound token receiver interface
 * @dev Interface for any contract that wants to support safeTransfers
 * from Soulbound asset contracts.
 */
interface ISoulboundReceiver {
    /**
     * @dev Whenever an {Soulbound} `tokenId` token is transferred to this contract via {ISoulbound-safeTransferFrom}
     * by `operator` from `from`, this function is called.
     *
     * It must return its Solidity selector to confirm the token transfer.
     * If any other value is returned or the interface is not implemented by the recipient, the transfer will be reverted.
     *
     * The selector can be obtained in Solidity with `ISoulboundReceiver.onSoulboundReceived.selector`.
     */
    function onSoulboundReceived(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4);
}