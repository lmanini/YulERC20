// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract YulERC20 {

    mapping(address => uint256) private balances;
    mapping(address => mapping(address => uint256)) private allowances;

    uint256 internal _totalSupply;

    bytes TransferEventSigHash = "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef";
    bytes ApprovalEventSigHash = "0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925";

    function name() public pure returns (string memory) {
        assembly {
            mstore(0x00, 0x20)
            mstore(0x2c, 0x0c44616e6b59756c546f6b656e)
            return(0x00, 0x60)
        }
    }

    function symbol() public pure returns (string memory) {
        assembly {
            mstore(0x00, 0x20)
            mstore(0x24, 0x0444414e4b)
            return(0x00, 0x60)
        }
    }

    function decimals() public pure returns (uint8) {
        assembly {
            mstore(0x00, 0x12)
            return(0x00, 0x20)
        }
    }

    function totalSupply() public view returns (uint256) {
        assembly {
            
        }
    }

    function balanceOf(address _owner) public view returns (uint256) {}

    function transfer(address _to, uint256 _value) public returns (bool) {}

    function transferFrom(address _from, address _to, uint256 value) public returns (bool) {}

    function approve(address _spender, uint256 _value) public returns (bool) {}

    function allowance(address _owner, address _spender) public view returns (uint256) {

    }

}
