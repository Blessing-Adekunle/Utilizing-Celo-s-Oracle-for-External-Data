// SPDX-License-Identifier: MIT 
// Importing Celo's Oracle library
import "@celo/protocol/contracts/oracles/Oracle.sol";

// Defining the OracleExample contract
contract OracleExample {
    // Creating an instance of the Oracle contract
    Oracle private oracle;

    // Constructor: Initialize the Oracle contract address
    constructor(address oracleAddress) {
        oracle = Oracle(oracleAddress);
    }

    // Function to get the verified price of a cryptocurrency
    function getVerifiedPrice(string memory currency) public view returns (uint256) {
        // Fetching the verified price from the oracle
        (uint256 price, bool isVerified) = oracle.getDataWithProof(bytes32(keccak256(abi.encodePacked(currency))));

        // Verifying the data using the proof
        require(oracle.oracleVerify(bytes32(keccak256(abi.encodePacked(currency))), price, isVerified), "Invalid data!");

        // Returning the verified price
        return price;
    }
}