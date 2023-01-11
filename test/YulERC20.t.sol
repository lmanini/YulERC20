// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/YulERC20.sol";

contract YulERC20Test is Test {
    YulERC20 token;

    function setUp() external {
        token = new YulERC20();
        vm.label(address(token), "YulToken");
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

    function testTotalSupply() external {
        uint256 totalSupply = token.totalSupply();
        assertEq(totalSupply, type(uint256).max);
    }

    function testBalanceOf() external {
        uint256 myBal = token.balanceOf(address(this));
        assertEq(myBal, type(uint256).max);
    }

    function testApprove() external {
        bool success = token.approve(address(0xdead), 69 ether);
        assertTrue(success);
        
        uint256 allowance = token.allowance(address(this), address(0xdead));
        assertEq(allowance, 69 ether);
    }

    function testTransfer() external {
        address A = address(uint160(uint256(keccak256(abi.encode("a")))));
        vm.label(A, "a");

        address B = address(uint160(uint256(keccak256(abi.encode("b")))));
        vm.label(B, "b");

        bool resA = token.transfer(A, 1 wei);
        assertTrue(resA);

        vm.expectRevert();
        bool resB = token.transfer(B, type(uint256).max);
        assertFalse(resB);
    }

}
