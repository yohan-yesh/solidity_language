// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract SimpleStorage {
  uint myFavoriteNumber;

  function store(uint _myFavoriteNumber) public {
    myFavoriteNumber = _myFavoriteNumber;

  }

  function retrieve() public view returns(uint) {
    return myFavoriteNumber;

  }

 
}