// SPDX-License-Identifier: MIT 
function getPrice(address tokenAddress) external view returns (uint256) {
    // Retrieve the price feed for the specified token
    uint256 price = IOracle(oracleAddress).getPrice(tokenAddress);

    // Perform further calculations or use the price as needed
    // ...

    return price;
}