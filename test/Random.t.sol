
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Random.sol";

contract CounterTest is Test {
    function testRandom() public {
        vm.breakpoint('a');
        uint256 n = Random.random();
        emit log_uint(n);
        n = Random.random();
        emit log_uint(n);
        n = Random.random();
        emit log_uint(n);
    }

    function testRandomBytes() public {
        bytes memory b = Random.randomBytes();
        emit log_bytes(b);
        b = Random.randomBytes();
        emit log_bytes(b);
        b = Random.randomBytes();
        emit log_bytes(b);
    }
}
