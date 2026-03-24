// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract SimpleStorage {
  uint myFavoriteNumber;
  uint[] listOfFavoriteNumber;


    struct Person{
        uint favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;
  mapping(string => uint) public nameToFavoriteNumber;

  function store(uint _myFavoriteNumber) public {
    listOfFavoriteNumber.push(_myFavoriteNumber);

  }

  function retrieve(uint index) public view returns(uint) {
    return listOfFavoriteNumber[index];

  }

  function addPerson(string memory _name, uint number) public {
    listOfPeople.push(Person(number, _name));
    nameToFavoriteNumber[_name] = number;

  }

 
}