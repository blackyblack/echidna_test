pragma solidity ^0.8.0;

import 'Token.sol';

contract EchidnaToken is Token {
    event AssertionFailed(uint);

    function balance_under_1000() public {
        if (balances[msg.sender] > 1000) emit AssertionFailed(0);
    }
}
