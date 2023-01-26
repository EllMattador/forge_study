// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.2;

contract Example {

    uint public myNum ;
    address public owner ;

    modifier onlyOwner() {
        require(msg.sender == owner , "caller not owner !!");
        _;
    }

    constructor(uint initialNum)  {
        myNum = initialNum;
        owner = msg.sender ;
    }

    function increment()public {
        myNum++;
    }

}