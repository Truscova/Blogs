// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;


import "SimpleToken.sol";

contract TestSimpleToken is SimpleToken{
    constructor() public {}

    function echidna_balance_under_100() public view returns(bool){
        return balances[msg.sender] <= 100;
    }

}
