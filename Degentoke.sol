// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    constructor() ERC20("DegenToken", "DEGEN") Ownable(msg.sender) {
        _mint(msg.sender, 1000000 * (10 ** uint256(decimals())));
    }

   
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

   
    function transfer(address to, uint256 amount) public override returns (bool) {
        require(to != address(0), "ERC20: transfer to the zero address");
        _transfer(_msgSender(), to, amount);
        return true;
    }

    
    function redeem(uint256 amount) public {
        _burn(msg.sender, amount);
        
    }

    
    function balanceOf(address account) public view override returns (uint256) {
        return super.balanceOf(account);
    }

    
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
