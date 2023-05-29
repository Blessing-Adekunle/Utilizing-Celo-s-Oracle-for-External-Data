// SPDX-License-Identifier: MIT 
function getCurrentPrice(string memory currency) public view returns (uint256) {
    (uint256 price, ) = oracle.getData(bytes32(keccak256(abi.encodePacked(currency))));
    return price;
}