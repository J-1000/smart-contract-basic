// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "./access-control/Auth.sol";

contract Box {
    uint256 private value;
    Auth private auth;

    event ValueChanged(uint256 newValue);

    constructor(Auth _auth)  {
        auth = _auth;
    }

    function store(uint256 newValue) public {
        // Require that the caller is registered as an administrator in Auth
        require(auth.isAdministrator(msg.sender), "Unauthorized");

        value = newValue;
        emit ValueChanged(newValue);
    }

    function retrieve() public view returns (uint256) {
        return value;
    }
}