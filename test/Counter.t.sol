// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Counter counter;

    function setUp() public{
        counter = new Counter(11) ;
    }

    function testGetCount() public {
        int value = counter.getCount() ;
        assertEq(value , 11);
        emit log_named_int("The Value is " , value);
    }

    function testIncrementCount () public {
        counter.incrementCounter();
        int value = counter.getCount();
        assertEq(value , 12);
        emit log_named_int("the increment value is " , value);
    }
}
