//SPDX-License-Identifier:MIT

//This contract creates an ERC20 token type called MRW
//It uses the ERC20.sol contract to create its own ERC20 token type

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20MinerReward is ERC20 {

    event LogNewAlert (string description, address _from, uint256 n);

    constructor () ERC20("MinerReward", "MRW"){}

    function _reward() public {
        _mint(block.coinbase, 20);
        emit LogNewAlert("Congrats!, you've been rewarded 20 MRW", block.coinbase, block.number);
    }
}