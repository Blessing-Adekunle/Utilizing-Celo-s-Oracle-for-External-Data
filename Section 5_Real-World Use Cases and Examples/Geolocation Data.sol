// SPDX-License-Identifier: MIT 
function getLocation(address user) external view returns (string memory) {
    // Retrieve the geolocation data for the specified user
    string memory location = IOracle(oracleAddress).getLocation(user);

    // Use the location data for relevant functionalities
    // ...

    return location;
}