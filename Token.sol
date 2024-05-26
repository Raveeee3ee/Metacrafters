// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RAVEEEE {
    string public name = "RHAVA";
    string public symbol = "RMV";
    uint8 public decimals = 18;
    uint256 public totalSupply;
    
    mapping(address => uint256) private balances;
    
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Mint(address indexed to, uint256 value);

    function mint(address to, uint256 amount) public {
        require(to != address(0), "Cannot mint to zero address");
        totalSupply += amount;
        balances[to] += amount;
        emit Mint(to, amount);
        emit Transfer(address(0), to, amount);
    }

    function transfer(address to, uint256 amount) public returns (bool) {
        address from = msg.sender;
        require(to != address(0), "Cannot transfer to zero address");
        require(balances[from] >= amount, "Insufficient balance");

        balances[from] -= amount;
        balances[to] += amount;
        emit Transfer(from, to, amount);
        return true;
    }

    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }
}
