// SPDX-License-Identifier: MIT 
function getAssetPrice(string calldata assetSymbol) external view returns (uint256) {
    // Retrieve the price of the specified asset from the oracle
    uint256 price = IOracle(oracleAddress).getAssetPrice(assetSymbol);

    // Perform further calculations or use the price data as needed
    // ...

    return price;
}