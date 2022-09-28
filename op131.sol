// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ErrorH {
    function RequireH(uint data) public pure returns (uint) {

        require(data >=0);
        require(data<=255);

        uint interim = 10;
        assert(interim+data <=255);

       return uint(interim+data);
         
    }

// revert is best option when we have a lot of conditions check

    function RevertH(uint i) public pure{
        if (i>1){
            //code
            if (i>2){
                //code
                if (i>10){
                    revert("i>10");
                }
            }
        }        
    }


    function Validrange(uint range) public  pure  returns(uint){
        if (range< 0 || range > 255){
            revert();
        }

        return uint(range);

    
              
    }
    uint public uid = 123;
    function assertH() public view returns(uint){
        assert(uid == 123);
        return uid;
    } 

     // custom error
    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount});
        }


}
}