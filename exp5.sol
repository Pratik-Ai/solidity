pragma solidity > 0.5.0 < 0.9.0;

contract wallet{
    address payable public owner;

    constructor() public
    {
        owner = payable(msg.sender);
    }
    function getmoney() public payable{}
    // receive() external payable {}

    function withdraw(uint _amount) external{
        require(msg.sender == owner, "caller is not owner");

        payable(msg.sender).transfer(_amount);
    }

    function getBalamce() external view returns (uint)
    {
        return address(this).balance;
    }

}
