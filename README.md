# Project Title

This is a project for the Module 4 requirement of the Ethereum + Avalanche Metacrafters Intermediate Course.

## Description

The project is meant to demonstrate a full-on deployment of a simple ERC20 Token onto a Testnet, in this project, it will be the Fuji Avalanche Testnet. After deploying the smart contract, it will be visible onto the blockchain where its activity will be logged using [Snowtrace](https://testnet.snowtrace.io/). This is to demonstrate interactions of a smart contract within an actual network to test for bugs before official deployment, it will automatically leave out identifiers onto the network to track the smart contract activity for logging purposes.

## Getting Started

### Installing

This can be run on an online IDE such as Remix IDE, it will be used for demonstration purposes for ease of use and troubleshooting.
1. Go to [Remix Online IDE](https://remix.ethereum.org/) and clone a github repository through Workspace Actions.
2. Clone this repository onto Remix and go to `Compile Contract` side tab.
3. Compile the smart contract on Remix and go to `Deploy and run Transactions` side tab.
4. Set up your MetaMask or related Web3 Wallet to connect to the Avalanche C-chain Testnet, (the chain ID is 43113).
5. connect it to Remix IDE by changing the environment from Remix VM (cancun) to the Web3 Wallet of choice.
6. If set up correctly, then you are able to deploy the contract using your AVAX testnet funds.

### Executing program

The program is run through deployment in Remix IDE. After deployment, the program will take funds from your wallet to launch the smart contract. If successful, then the contract will be deployed and funds will be deducted.

There are five functions in the contract to interact with, `mint()`,`burn()`,`transferTo()`,`redeemItem()`, and `getBalance()`.
- `mint()` - Only accessible by the smart contract owner, mints tokens into the smart contract for transactions.
- `burn()` - Usable by any address, deletes tokens from their address.
- `transferTo()` - Usable by any address, transfers an amount of tokens from the sender onto a destination address.
- `redeemItem()` - Usable by any address, redeems an 'item' from the Item store. Deducts tokens from the address and transfers it onto the smart contract owner.
- `getBalance()` - Usable by any address, returns the current token balance of the address.

Additional helper functions are provided by the ERC20 standard template.

## Help

To add the Fuji Test network onto your MetaMask wallet, go to `Add Network` and add these onto the fields below.
```
Name: Avalanche Fuji C-chain Testnet
RPC URL: https://api.avax-test.network/ext/bc/C/rpc
Chain ID: 43113
Symbol: AVAX
```
If successful, your wallet will be accessible for the Avalanche Fuji Testnet.

As it is in a Testnet, it is required that you have testnet balance to interact with the blockchain. You can get testnet AVAX on [Testnet Faucet](https://core.app/tools/testnet-faucet/). However, new wallets require Mainnet balance to request AVAX, requiring a coupon code. Those are obtained from external sources out of my capability, so searching or Googling for ways is the best option, there are some coupon codes out there that provide a tiny bit of AVAX that is enough for some interaction within the Testnet. 

## Authors

Metacrafters - providing the starter template to base off of.

J-Wency - Forked Project


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
