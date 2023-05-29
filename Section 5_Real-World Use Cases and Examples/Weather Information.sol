// SPDX-License-Identifier: MIT
function getWeatherTemperature(string calldata location) external view returns (uint256) {
    // Retrieve the weather temperature for the specified location
    uint256 temperature = IOracle(oracleAddress).getWeatherTemperature(location);

    // Perform further actions based on the temperature
    // ...

    return temperature;
}