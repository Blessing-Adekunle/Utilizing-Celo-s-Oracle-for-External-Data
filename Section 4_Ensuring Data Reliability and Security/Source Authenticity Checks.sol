// SPDX-License-Identifier: MIT 
function validateDataSource(address dataSource) internal view returns (bool) {
    // Check if the data source is in the list of trusted sources
    if (trustedDataSources[dataSource]) {
        return true;
    }
    return false;
}