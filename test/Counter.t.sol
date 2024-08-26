// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0, false);
    }

    function testIncrement() public {
        counter.increment();
        assert(counter.number() == 1);
    }

    function testSetNumber(uint256 x, bool inLuck) public {
        counter.setNumber(x, inLuck);
        assert(counter.number() == x);
    }
}