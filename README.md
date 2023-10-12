# MeerToken Smart Contract

MeerToken is an Ethereum smart contract developed using the Solidity programming language. This contract represents a basic ERC-20 token, which is a widely used standard for fungible tokens on the Ethereum blockchain. This README provides an overview of the code and its functionality.

## Table of Contents
1. [Introduction](#introduction)
2. [Prerequisites](#prerequisites)
3. [Getting Started](#getting-started)
4. [Functionality](#functionality)
5. [License](#license)

## 1. Introduction

The MeerToken smart contract is an implementation of the ERC-20 standard with additional features to mint new tokens, burn tokens, and transfer tokens between addresses. This contract allows you to create a new token with a specified name, symbol, and initial total supply. The contract's owner, the account that deploys the contract, has special privileges to mint new tokens.

## 2. Prerequisites

Before using or deploying this contract, ensure you have the following prerequisites:

- An Ethereum development environment or wallet (e.g., Remix, Truffle, MetaMask)
- Basic knowledge of Ethereum and Solidity smart contract development

## 3. Getting Started

To deploy and use the MeerToken smart contract, follow these steps:

1. Compile and deploy the contract using your preferred Ethereum development environment.

2. When deploying, provide the following parameters:
   - `name`: The name of the token.
   - `symbol`: The symbol of the token (e.g., "MEER").
   - `totalSupply`: The initial total supply of tokens.

3. Once deployed, the contract owner will be the account that deployed the contract.

4. Interact with the contract using the provided functions as described in the next section.

## 4. Functionality

### `mint(address _address, uint amount)`

- This function allows the contract owner to mint additional tokens and add them to the specified address.
- Only the contract owner can call this function.
- Parameters:
  - `_address`: The address to which the tokens will be minted.
  - `amount`: The number of tokens to mint.

### `burn(uint amount)`

- This function allows any address to burn a specified amount of tokens from their own balance.
- Parameters:
  - `amount`: The number of tokens to burn.

### `transfers(address recipient, uint amount)`

- This function allows any address to transfer a specified amount of tokens to another address.
- Parameters:
  - `recipient`: The recipient's address.
  - `amount`: The number of tokens to transfer.

### `onlyOwner` Modifier

- The `onlyOwner` modifier is used to restrict access to certain functions to only the contract owner.

## 5. License

This smart contract is released under the MIT License.

```plaintext
SPDX-License-Identifier: MIT
