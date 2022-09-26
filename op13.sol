// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Loop{
    function loop() public pure returns (uint) {
        for (uint i=0;i<10; i++){
            if (i ==3) {
                //skip 
                continue;
            }
            if (i ==5){
                break;
            }
        }
        
        //while 
        uint j;
        while (j<30){
            j++;
        }
        
        }

        function sum() external pure returns (uint){
            uint s ;
            for (uint i = 0 ; i < 10 ; i++){
                s += i;
            }
            return s;
        }



}