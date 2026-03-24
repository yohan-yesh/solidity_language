// SPDX-License-Identifier: MIT

pragma solidity 0.8.31;

import {SimpleStorage} from "./Simplestorage.sol";

contract SimpleFactory{

    SimpleStorage public simpleStorage;

    function createSimpleStorage() public{
        simpleStorage = new SimpleStorage();

    }

    function sfStore(uint _newNumber) public{
            simpleStorage.store(_newNumber);

    }

    function sfGet(uint _index) public  view returns(uint){
        return simpleStorage.retrieve(_index);

    }

}