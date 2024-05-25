// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract solidity {
    uint public value;

    function setValue(uint _value) public {
        require(_value > 0, "Value must be greater than zero");
        value = _value;
    }

    function checkValue() public view {
        assert(value > 0);
    }

    function resetValue() public {
        if (value == 0) {
            revert("Value is already zero");
        }
        value = 0;
    }
}
