





























pragma solidity >=0.5.0 <0.9.0;

contract energytrade {
    uint256 public energy;
    string public value;
    address payable user = payable(0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678);

    constructor(uint256 _intial) public {
        energy += _intial;
    }

    function add_amount() public payable {}

    function addeng(uint256 adden) public {
        energy += adden;
    }

    function withdraw(uint256 withd)
        public
        payable
        returns (string memory operation)
    {
        if (energy >= withd) {
            energy = energy - withd;
            value = "withdraw sucessfull";
            user.transfer(withd);
        } else {
            value = "Invalid amount";
        }

        return value;
    }
}
