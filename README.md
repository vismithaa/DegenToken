# Degen Game with Merchandise Store

This is a simple DeFi game project which is deployed to Avalanche Fuji test network.

## Description

**Minting:**
   - The owner can mint new tokens and assign them to a specified address.

**Burning:**

  - Token holders can burn a specific amount of their tokens.

**Redeeming Merchandise:**

  - Token holders can redeem merchandise based on their token balance. If the balance is below 500 tokens, the tokens will be burned.

**Gifting:**

  - Token holders can gift a specified amount of tokens to another address, provided they have a balance of at least 3000 tokens.

**The want_to_gift** variable acts as a rulebook to run the gift function.

**The game_merchandise** variable acts as a merchandise store guide to list out items for the user to redeem.

## Getting Started

### Installing

You can clone the repository and change the directory to run it in terminal locally.

### Executing program


* Firstly you need to install the packages:
```
npm i
```

* Then, you need to install openzeppelin libraries:
```
npm install @openzeppelin/contracts
```

* You can the contract to fuji testnet by running:
```
npx hardhat run scripts/deploy.js --network fuji
```

* In order to verify the contract, you can run:
```
npx hardhat verify (contractaddr) --network fuji
```

## Help

Developers should reach out to https://twitter.com/AvaxDevelopers to get a coupon code to get test funds to start testing on fuji.

## Authors

Vismitha P
@vismithaaap@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
