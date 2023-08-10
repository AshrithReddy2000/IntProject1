# Payment System Smart Contract

This repository contains a simple Payment System smart contract written in Solidity. The smart contract demonstrates the use of `require()`, `assert()`, and `revert()` statements for handling conditions and errors.

## Smart Contract Details

- **Solidity Version:** 0.8.0
- **License:** MIT

## Smart Contract Functions

1. **`deposit()`**: Allows users to deposit funds into their account.
   - Requires: Amount greater than 0.
   - Effect: Increases user's balance.

2. **`withdraw(uint256 _amount)`**: Allows users to withdraw funds from their account.
   - Requires: Sufficient balance.
   - Effect: Decreases user's balance and transfers funds.

3. **`assertExample(uint256 _value)`**: Demonstrates the use of `assert()` statement.
   - Requires: `_value` not equal to 0.
   - Effect: Returns double of `_value`.

4. **`revertExample()`**: Demonstrates the use of `revert()` statement.
   - Effect: Intentionally reverts with a custom error message.

## Usage

1. Deploy the smart contract on an Ethereum network compatible with Solidity 0.8.0.

2. Interact with the smart contract using supported functions.

3. Explore and test the different error handling mechanisms demonstrated in the contract.

## Deployment

To deploy the smart contract, you can use tools like Remix IDE or Truffle. Make sure to select the appropriate Solidity version (0.8.0) during deployment.


