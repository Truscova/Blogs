// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleToken{

    mapping(address => uint) public balances;
    
    function airdrop() public{
        balances[msg.sender] = 100;
    }

    function consume() public{ 
        require(balances[msg.sender] > 0);
        balances[msg.sender] -= 1;
    }

    function secretDoor() public{
        balances[msg.sender] += 1;
    }
}
