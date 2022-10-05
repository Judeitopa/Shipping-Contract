//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

//THis contract creates an ERC1155 token type that reward miners

contract ERC1155MinerReward is ERC1155{
   event LogNewAlert(string description, address _minersAddress, uint256 _n);
    
    //The token gets created at the call of this whole contract with name 1155MRW
    //dataOfTx and id are both part of arguments for _mint function below
   constructor () ERC1155("1155MRW"){}
    bytes dataOfTx;
    uint256 id;

   function _rewardMe() public {
    _mint(block.coinbase, id, 10, dataOfTx);
    emit LogNewAlert("Congrats! you received a dynamic ERC token", block.coinbase, block.number);
   }

}