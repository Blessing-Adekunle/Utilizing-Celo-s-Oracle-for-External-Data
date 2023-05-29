// SPDX-License-Identifier: MIT 
function scheduleEvent(uint256 eventId, uint256 startTime, uint256 endTime) external {
    // Schedule an event using the provided parameters
    IOracle(oracleAddress).scheduleEvent(eventId, startTime, endTime);

    // Perform further actions or notify users about the scheduled event
    // ...
}