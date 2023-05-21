
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./utils/SoladyTest.sol";

contract RandomTest is SoladyTest {
    function testRandom(uint256) public {
        vm.breakpoint('a');
        uint256 n = Random.random();
        emit log_uint(n);
        n = Random.random();
        emit log_uint(n);
        n = Random.random();
        emit log_uint(n);
    }

    function testRandomBytes(uint256) public {
        bytes memory b = Random.randomBytes();
        emit log_bytes(b);
        b = Random.randomBytes();
        emit log_bytes(b);
        b = Random.randomBytes();
        emit log_bytes(b);
    }
}
