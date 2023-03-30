// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// import "@openzepplin/contracts/token/ERC20/IERC20.sol";

contract Counter {
    int private count ;

    constructor(int _count){
        count = _count ;
    }

    function incrementCounter () public{
        count += 1 ;
    }

    function decrementCounter () public {
        count -= 1 ;
    }

    function getCount() public view returns (int){
        return count ;
    }
}
