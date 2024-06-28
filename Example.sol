// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
        value = 0;
    }

    function setValue(uint256 _newValue) external {
        require(msg.sender == owner, "Only the contract owner can update the value");
        assert(_newValue != 0);
        
        if (_newValue == 42) {
            revert("The value cannot be set to 42");
        }

        value = _newValue;
    }

    function getValue() external view returns (uint256) {
        return value;
    }
}
