




























pragma solidity >= 0.5.0 < 0.9.0;

contract pay
{
    address payable user = payable(0xc4543AEe118D1491Ea65C4FD9ef1235a0D4C939c);
    function paylater() public payable
    {

    }
    function getBalance() public view returns(uint)
    {
        return address(this).balance;
    }
    function sendeth( ) public //payable
    {
        user.transfer(1 ether);
        // (bool done, bytes memory data) = user.call{value:msg.value}("");
    }
}