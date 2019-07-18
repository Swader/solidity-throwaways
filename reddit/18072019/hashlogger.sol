pragma solidity 0.5.10;
pragma experimental ABIEncoderV2;

contract HashLogger {
    
    struct HashedFile {
        uint256 time;
        address submitter;
    }
    
    mapping (bytes32 => HashedFile) hashMap;
    

    function addHash(bytes32 hash) public {
        hashMap[hash] = HashedFile(now, msg.sender);
    }
    
    function getHash(bytes32 hash) public view returns (HashedFile memory) {
        return hashMap[hash];
    }
    
}
