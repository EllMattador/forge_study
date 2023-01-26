// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.2;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import { Example } from "../src/Example.sol";

contract ExampleTest is Test {

    Example public example;

    function testReceive() public {
        asserrtEq(adrress(example).balance , 0);
        (bool success) = address(example).call{value: 100}("");

        assertEq(success , true);
        assertEq(address(example).blance , 100);

    }
    function setUp() public {
        example = new Example(100);
        console.log(example.myNum());
        console.log(example.owner());
        console.log(address(this));
    }

    function testIncrement() public {
        example.increment();
        assertEq(example.myNum(), 101);
    }

}