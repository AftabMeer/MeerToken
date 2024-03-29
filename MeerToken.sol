// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MeerToken is ERC20 {

    address owner;

    modifier onlyOwnner {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor(
        string memory name,
        string memory symbol,
        uint totalSupply
    ) ERC20(name, symbol){
        owner = msg.sender;
        _mint(msg.sender, totalSupply);
    }
    
    // Mint additional tokens
    function mint(address _address, uint amount) public onlyOwnner {
        _mint(_address, amount);
    }

    // Burn tokens
    function burn(uint amount) public {
        _burn(msg.sender, amount);
    }

    // Transfer tokens to another address
    function transfers(address recipient, uint amount) public returns(bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }
}
