# Degen Token ETH+AVAX DGN game

* Minting new tokens
* Transferring Tokens
* Redeeming tokens
* checking token balance
* Burn tokens

## Description

This project is a smart contract coded in soldity which succesfully implements the use of mint,transfer,redeeming,checking token balance,burn tokens function. It includes basic functionalities for transfering, minting,burning and redeeming the tokens allowing the user to manage the account in the game. the person can use ingame store to purchase some DGN stuff. This smart contract can be deployed on the fuji and avalanche mainet network. 


## Getting Started

### Installing and executing

* Clone the repository from Github
* paste your api and wallet address in the hardhat.config.js
* Then run the given commands
```
//to deploy the project
npx hardhat run scripts/deploy.js --network fuji

// to check the deployed project
npx hardhat verify <contract address> --network fuji
```
* open https://testnet.snowtrace.io/ and paste the contract address in the search bar
* Open Remix online editor (https://remix.ethereum.org/)
* connect your wallet to the remix and deploy the project


## Help

For any issues, you can refer to the Remix documentation or common Ethereum development resources.

## Authors

Contributors names and contact info

Madhav Goyal  
[@22BCS15140] (madhavkkp@gmail.com)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
