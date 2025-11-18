# NFT Project - BasicNft & MoodNft

A Foundry-based NFT project featuring two different NFT implementations:
1. **BasicNft** - Traditional ERC721 NFT with IPFS metadata storage
2. **MoodNft** - Dynamic on-chain SVG NFT that changes based on mood

## 🎯 Features

### BasicNft
- ERC721 standard implementation
- IPFS metadata storage
- Simple minting functionality
- Deployed and verified on Sepolia testnet

### MoodNft
- **100% on-chain** - No external dependencies
- Dynamic SVG images stored on-chain
- Mood-based NFT that can flip between HAPPY 😊 and SAD 😢
- Base64 encoded metadata
- Owner can change NFT mood

## 🛠️ Built With

- **Solidity ^0.8.19** - Smart contract language
- **Foundry** - Development framework
- **OpenZeppelin** - ERC721 implementation
- **IPFS** - Decentralized metadata storage (BasicNft)
- **SVG** - On-chain graphics (MoodNft)

## 📋 Prerequisites

- [Git](https://git-scm.com/)
- [Foundry](https://book.getfoundry.sh/getting-started/installation)

## 🚀 Installation

1. Clone the repository
```bash
git clone https://github.com/YOUR_USERNAME/foundry-nft-2024.git
cd foundry-nft-2024
```

2. Install dependencies
```bash
forge install
```

3. Create `.env` file
```bash
cp .env.example .env
```

Add your environment variables:
```
SEPOLIA_RPC_URL=your_rpc_url_here
PRIVATE_KEY=your_private_key_here
ETHERSCAN_API_KEY=your_etherscan_api_key_here
```

## 🧪 Testing

Run all tests:
```bash
forge test
```

Run tests with verbosity:
```bash
forge test -vvv
```

Run specific test:
```bash
forge test --match-test testMintNft -vvv
```

Get test coverage:
```bash
forge coverage
```

## 📦 Deployment

### Deploy to Anvil (Local)

1. Start Anvil:
```bash
anvil
```

2. Deploy BasicNft:
```bash
forge script script/DeployBasicNft.s.sol --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --broadcast
```

3. Deploy MoodNft:
```bash
forge script script/DeployMoodNft.s.sol --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --broadcast
```

### Deploy to Sepolia
```bash
forge script script/DeployBasicNft.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify
```

## 🎮 Interacting with Contracts

### Mint BasicNft
```bash
cast send YOUR_CONTRACT_ADDRESS "mintNft(string)" "ipfs://YOUR_IPFS_HASH" --private-key $PRIVATE_KEY --rpc-url $SEPOLIA_RPC_URL
```

### Mint MoodNft
```bash
cast send YOUR_MOOD_NFT_ADDRESS "mintNft()" --private-key $PRIVATE_KEY --rpc-url $SEPOLIA_RPC_URL
```

### Flip Mood
```bash
cast send YOUR_MOOD_NFT_ADDRESS "flipMood(uint256)" 0 --private-key $PRIVATE_KEY --rpc-url $SEPOLIA_RPC_URL
```

### Check Mood
```bash
cast call YOUR_MOOD_NFT_ADDRESS "getMood(uint256)(uint8)" 0 --rpc-url $SEPOLIA_RPC_URL
```

## 🌐 Deployed Contracts

### Sepolia Testnet
- **BasicNft**: [0x8D453CA3b32F6bf3AEc070A4E3225EB8Fb259285](https://sepolia.etherscan.io/address/0x8D453CA3b32F6bf3AEc070A4E3225EB8Fb259285)
- **MoodNft**: [0x9fE46736679d2D9a65F0992F2272dE9f3c7fa6e0](https://sepolia.etherscan.io/address/0x9fE46736679d2D9a65F0992F2272dE9f3c7fa6e0)

## 📚 What I Learned

- ERC721 token standard implementation
- IPFS integration for decentralized storage
- On-chain SVG generation and Base64 encoding
- Dynamic NFT metadata
- Low-level encoding (abi.encode, abi.encodePacked)
- Function selectors and call data
- Foundry testing and deployment
- Gas optimization techniques

## 🔐 Security Considerations

- Access control implemented for mood flipping (only owner can flip)
- Input validation on all public functions
- Reentrancy guards (using OpenZeppelin's ReentrancyGuard where needed)
- Comprehensive test coverage

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## 📝 License

This project is [MIT](LICENSE) licensed.

## 👤 Author

**Your Name**
- GitHub: (https://github.com/folip01)
- Twitter: (https://x.com/thefirstbest01)


## 🙏 Acknowledgments

- [Cyfrin Updraft](https://updraft.cyfrin.io/) - Foundry course
- [OpenZeppelin](https://www.openzeppelin.com/) - Smart contract libraries
- [Foundry Book](https://book.getfoundry.sh/) - Documentation

---

⭐ **Star this repo if you found it helpful!**