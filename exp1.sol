




























pragma solidity >= 0.5.0 < 0.9.0;

contract energytrade{
    uint public energy;
    string public value;

    constructor(uint _intial) public
    {
        energy += _intial;
    }
    function addeng(uint adden) public
    {
        energy += adden;
    }
    function withdraw(uint withd) public returns(string memory operation){
        if(energy>=withd)
        {
            energy = energy - withd;
            value = "withdraw sucessfull";
        }
        else{
            value = "Invalid amount";
        }
        return value;
    }
}