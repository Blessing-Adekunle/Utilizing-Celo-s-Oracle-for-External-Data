// SPDX-License-Identifier: MIT 
function verifyData(bytes32 requestId, uint256 result, bytes memory signature) internal view returns (bool) {
    bytes32 messageHash = keccak256(abi.encodePacked(requestId, result));
    address signer = recoverSigner(messageHash, signature);

    // Compare the signer's address with the trusted data source
    if (signer == trustedDataSource) {
        return true;
    }
    return false;
}