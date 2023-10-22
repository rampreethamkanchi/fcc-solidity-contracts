//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7 ;
contract SimpleStorage{
    // ordered 0-uint256 , 1-string
    struct People{
        uint256 favouriteNumber;
        string name;
    }
    //dynamic sized array ,intially no elements , push pop are available
    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;// initializes every key to default value. 
    uint256 public favoriteNumber; //default zero
    //changes state , default visibility -internal
    function store(uint256 _favouriteNumber) public virtual{
        favoriteNumber=_favouriteNumber;
    }
    //reads states - view
    function retrive() view public returns(uint256){
        return favoriteNumber;
    }
    //do not interfere in any way - pure
    function squareOfN(uint256 _number) public pure returns(uint256){
        return (_number)*(_number);
    }
    // calldata - immutable temporary, memory -mutable temporary, storage- mutable permanent
    function addPerson(uint256 _favouriteNumber ,string calldata _name ) public{
        people.push(People(_favouriteNumber,_name ));
        // or  people.push(People({favouriteNumber: _favouriteNumber, name:_name}));
        //  or   People memory newPerson = People(_favouriteNumber,_name ); 
        //       people.push(newPerson);
        nameToFavoriteNumber[_name]= _favouriteNumber;
    }
}