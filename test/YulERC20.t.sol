// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/YulERC20.sol";

contract YulERC20Test is Test {
    YulERC20 token;

    function setUp() external {
        token = new YulERC20();
    }

    function testName() external {
        string memory name = token.name();
        assertEq(name, "DankYulToken");
    }

    function testSymbol() external {
        string memory name = token.symbol();
        assertEq(name, "DANK");
    }

    function testDecimals() external {
        uint8 decimals = token.decimals();
        assertEq(decimals, 18);
    }

}
