// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    mapping (uint => uint ) public items;


    constructor() ERC20("Degen", "DGN") {
        items[1] = 100;
        items[2] = 50;
        items[3] = 60;
        items[4] = 30;
    }

    function mintDGN(address to, uint256 amount) public onlyOwner {
            _mint(to, amount);
    }

    function transferDGN(address to, uint256 amount) external {
        require(balanceOf(msg.sender)>=amount,"Insufficiant Balance, Amount is greater than balance");
        approve(msg.sender,amount);
        transferFrom(msg.sender,to,amount);
    }

    function burnDGN(uint amount) external {
        require(balanceOf(msg.sender)>=amount,"Insufficiant Balance, Amount is greater than balance");
        approve(msg.sender,amount);
        _burn(msg.sender,amount);
    }

    function DGNshopmenu() public pure returns(string memory){
        string memory products = "Degen shop items: 1. DGN merch(100 DGN) \n1 2. DGN NFT(50 DGN) \n2 3. DGN Outfit (60 DGN) \n3 4. DGN Skin (30 DGN)";
        return products;
    }

    function redeemshopitems(uint itemno) external{
        if(itemno > 0 && itemno <=4){
            require(balanceOf(msg.sender)>= items[itemno],"Insufficiant Balance, Amount is greater than balance");

            transfer(owner(),items[itemno]);
        }

         else{
            revert("invalid item number");
        }
    }

    function checkbalance() external view returns(uint){
        return this.balanceOf(msg.sender);
        
    }



}
