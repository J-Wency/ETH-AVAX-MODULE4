// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

//1 Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. 
//      Only the owner can mint tokens.
//2 Transferring tokens: Players should be able to transfer their tokens to others.
//3 Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
//4 Checking token balance: Players should be able to check their token balance at any time.
//5 Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.

contract DegenToken is ERC20, Ownable {

    constructor() ERC20("Degen", "DGN") {}

        function mint(address to, uint256 amount) public onlyOwner {
            _mint(to, amount);
    }

        function transfer(address from, address to, uint256 amount) public {
            require(balanceOf(msg.sender) >= amount, "You do not have enough Degen Tokens to proceed with this transaction.");
            _transfer(from, to, amount);
        }

        function getBalance() external view returns (uint256) {
            return balanceOf(msg.sender);
        }
        
        function burn(address account, uint256 amount) external {
            require(balanceOf(msg.sender) >= amount, "You do not have enough Degen Tokens to proceed with this transaction.");
            approve(msg.sender, amount);
            _burn(account, amount);
        }

        function transferTo(address receiver, uint256 amount) external {
            require(balanceOf(msg.sender) >= amount, "You do not have enough Degen Tokens to proceed with this transaction.");
            approve(msg.sender, amount);
            _transfer(msg.sender, receiver, amount);
        }

        function redeemItem(uint8 choice) external returns (string memory) {
            if (choice == 1){
                require(balanceOf(msg.sender) >= 200, "You do not have enough Degen Tokens to proceed with this transaction.");
                _transfer(msg.sender, owner(), 200);
                return "Bought item 1";
            }
            else if (choice == 2){
                require(balanceOf(msg.sender) >= 300, "You do not have enough Degen Tokens to proceed with this transaction.");
                _transfer(msg.sender, owner(), 300);
                return "Bought item 2";
            }
            else if (choice == 3){
                require(balanceOf(msg.sender) >= 500, "You do not have enough Degen Tokens to proceed with this transaction.");
                _transfer(msg.sender, owner(), 500);
                return "Bought item 3";
            }
            else revert("An error on selecting an item has occurred.");
        }

        function getItemChoices() pure  external returns (string memory){
            return "Here are the choices. 1.) Something 1, 2.) Something 2, 3.) Something 3.";
        }
}
