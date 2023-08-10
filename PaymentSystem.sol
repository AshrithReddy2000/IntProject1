// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PaymentSystem {
    address public owner;
    mapping(address => uint256) public balances;

    constructor() {
        owner = msg.sender;
    }

    function deposit() external payable {
        require(msg.value > 0, "Amount must be greater than 0"); // Revert if condition is not met
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 _amount) external {
        require(balances[msg.sender] >= _amount, "Insufficient balance"); // Revert if condition is not met
        balances[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
    }

    function assertExample(uint256 _value) external pure returns (uint256) {
        assert(_value != 0); // Assert condition, program terminates if not met
        return _value * 2;
    }

    function revertExample() external pure {
        revert("This function intentionally reverts"); // Revert statement
    }
}
