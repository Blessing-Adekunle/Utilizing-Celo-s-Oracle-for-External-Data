// SPDX-License-Identifier: MIT 
uint256 constant public TIMEOUT = 10 minutes;

function requestData() public {
    // Make the data request

    // Start the timeout timer
    uint256 requestTime = block.timestamp;
}

function handleResponse(bytes32 requestId, uint256 result) external {
    // Check if the response was received within the timeout period
    if (block.timestamp - requestTime <= TIMEOUT) {
        // Process the response
    } else {
        // Handle timeout error
    }
}