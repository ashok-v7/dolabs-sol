// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract GlobalVariables {
   
    function GlobalVar() external view returns (address,uint,uint){
         address sender = msg.sender;
         uint timestamp = block.timestamp;
         uint blockNum = block.number;
         return (sender,timestamp,blockNum);
            }
}
 

 // Global Variables − Special variables exists in the global namespace used to get information about the blockchain