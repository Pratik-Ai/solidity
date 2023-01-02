




























pragma solidity >= 0.5.0 < 0.9.0;

//input text, number and address
//output is a unique 32 byte hash
contract hashtest {
    function hash(string memory _text, uint _num) public pure returns (bytes32) {
        return keccak256(abi.encode(_text, _num));
    }
}