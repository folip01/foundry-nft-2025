// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; // Match your contract's pragma

import {Script} from "forge-std/Script.sol";
import {BasicNft} from "../src/BasicNft.sol"; // Import the actual contract definition
import {console} from "lib/forge-std/src/console.sol";

// Name the script contract something descriptive
contract MintBasicNftScript is Script {
    // 1. Define the Deployed Address
    // This is the address from your successful deployment trace: 0x8D453CA3b32F6bf3AEc070A4E3225EB8Fb259285
    address constant NFT_CONTRACT_ADDRESS = 0x8D453CA3b32F6bf3AEc070A4E3225EB8Fb259285;

    // Assume you need a token URI to mint
    string constant PUG_URI = "ipfs://QmbF6tT4JmJvG7J4T9Z2mF6X2C8S7XvY9C2L6K2M4P6Q8R";

    function run() external {
        // --- 2. Connect to the Existing Contract ---
        // This line is the crucial fix: it casts the address as an instance of BasicNft.
        // It does NOT deploy a new contract, thus avoiding the 'source info format' error.
        BasicNft nft = BasicNft(NFT_CONTRACT_ADDRESS);

        // --- 3. Start Broadcast and Execute the Transaction ---
        vm.startBroadcast();

        // Call the minting function on the existing contract
        // Assuming your minting function is called `mintNft` and takes the PUG_URI
        // You'll need to send the NFT to the owner of the private key used for broadcasting (msg.sender)
        // Adjust the function call to match your BasicNft's actual mint function signature
        nft.mintNft(PUG_URI);

        vm.stopBroadcast();

        // Log the result for confirmation (optional but helpful)
        console.log("Minted NFT on contract:", NFT_CONTRACT_ADDRESS);
    }

    // The `_deployment` function and PUG constant shown in your partial script
    // were likely remnants of using the `foundry-devops` library which is unnecessary here.
}
