//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7 ;
import './SimpleStorage.sol';
contract ExtraStorage is SimpleStorage{
    uint256 public constant extraConstant=5;
    function store(uint256 _favouriteNumber) public override{
        favoriteNumber=_favouriteNumber+extraConstant;
    }
}