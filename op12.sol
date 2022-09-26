// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ifElse{
    function foo(uint x) public pure returns (uint){
        if (x<30){
            return 0;
        }
        else if (x < 50){
            return 3;
        }
        else {
            return 1;
        }
 
    }
    function ternaryuse(uint _x) public pure returns (uint){

        return _x < 30 ? 0 : 1;
    }


}


// conditional statements if, else if and else.