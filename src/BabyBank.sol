// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This would import from the private lib if submodules were initialized
// import {PrivateLib} from "../lib/private-solidity-lib/src/PrivateLib.sol";

contract BabyBank {
    mapping(address => uint256) public balances;

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }
}
