// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {SimpleStorage} from './SimpleStorage.sol';

contract StorageFactory {
    //create a list of simple storage instances
    SimpleStorage[] public  simpleStorageList;

    function createSimpleStorage() public {
      SimpleStorage simpleStorage=new SimpleStorage();

       simpleStorageList.push(simpleStorage);
    }

    function sfStore(uint256 _index, uint256 _newStorageNumber) public  {
      SimpleStorage simpleStorage=  simpleStorageList[_index];
      simpleStorage.store(_newStorageNumber);
    }

    function sfGet(uint256 _index) public  view returns (uint256){
            return simpleStorageList[_index].retreiveFavNumber();
    }
}