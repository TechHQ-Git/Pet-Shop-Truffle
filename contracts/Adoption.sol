pragma solidity ^0.4.24;

contract Adoption {
    address[16] private adopters;

    function adopt(uint256 petId) external returns(uint256) {
        require(petId >= 0 && petId <= 15);
        
        adopters[petId] = msg.sender;
        
        return petId;
    }
    
    function getAdopters() public view returns(address[16]) {
        return adopters;
    }
    
}