// SPDX-License-Identifier: MIT 
// Importing Celo's Oracle library
import "@celo/protocol/contracts/oracles/Oracle.sol";

// Defining the Oracle contract
contract OracleExample {
    // Creating an instance of the Oracle contract
    Oracle private oracle;

    // Constructor: Initialize the Oracle contract address
    constructor(address oracleAddress) {
        oracle = Oracle(oracleAddress);
    }

    // Function to get the current price of a cryptocurrency
    function getCurrentPrice(string memory currency) public view returns (uint256) {
        // Fetching the price from the oracle
        (uint256 price, ) = oracle.getData(bytes32(keccak256(abi.encodePacked(currency))));

        // Returning the current price
        return price;
    }
}