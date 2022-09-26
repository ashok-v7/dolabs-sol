 
// SPDX-License-Identifier: MIT
/*
Anyone can send ETH.
Only the owner can withdraw.
Wallet creation example 
*/ 
pragma solidity ^0.8.13;

contract EthWallet{
    address payable public owner; //  // Payable address can receive Ether
    constructor (){                    
    // Payable constructor can receive Ether
        owner = payable(msg.sender);
    }

    receive() external payable {} // inorder to recieve ether

    function withdraw(uint _amount) external {
        require(msg.sender == owner, " caller is not owner");
        payable(msg.sender).transfer(_amount);

    }

    function getBalance() external view returns (uint){
        return address(this).balance;
    }

}