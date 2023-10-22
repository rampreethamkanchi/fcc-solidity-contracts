//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7 ;
import "./SimpleStorage.sol"; //make sure the versions are compatable.
contract StorageFactory{
    //of type Simplestorage
    // but returns address of contract on getter function taking index as input
    SimpleStorage[] public simpleStorageArray;
    // like creating instances of class - object , using new keyword
    function createSimpleStorage() public {
        // simpleStorage = new SimpleStorage();
        SimpleStorage newSimpleStorage = new SimpleStorage();
        simpleStorageArray.push(newSimpleStorage);
    }
    // calling store on object using dot notation
    function store(uint256 _favoriteNumber,uint256 _index) public{
        // simpleStorage.store(_favoriteNumber);
        simpleStorageArray[_index].store(_favoriteNumber);
    }
    function retrive(uint256 _index) public view returns(uint256){
        return simpleStorageArray[_index].retrive();
    }
}