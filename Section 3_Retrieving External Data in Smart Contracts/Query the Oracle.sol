// SPDX-License-Identifier: MIT 
function requestData() public {
    bytes32 requestId = oracle.request(
           oracleDataSource,    // External data source address
        dataRequest,         // Data request identifier
        fee,                 // Fee to pay for the request
        callbackFunction     // Callback function to handle the response
    );
}