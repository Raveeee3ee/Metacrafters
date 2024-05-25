// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract MyToken {
    string public name;
    string public symbol;
    uint public totalSupply;

    mapping(address => uint) public balances;

    constructor(string memory _name, string memory _symbol, uint _initialSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply;
    }

    function mint(address _recipient, uint _value) public {
        totalSupply += _value;
        balances[_recipient] += _value;
    }

    function burn(address _owner, uint _value) public {
        require(balances[_owner] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_owner] -= _value;
    }
}
