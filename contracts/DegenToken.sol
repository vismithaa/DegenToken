// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {
    string public game_merchandise;
    string public want_to_gift="You should have a minimum balance of 3000 tokens in order to gift another player.";
    

    constructor() ERC20("Degen", "DGN") {
        game_merchandise = "Merchandise available to redeem include: 1.Black Cargos 2. Barbie outfit 3. Colour Box set 4. Lightning Mcqueen car set ";  
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 burn_amt) public override {
        require(balanceOf(msg.sender) >= burn_amt, "Insufficient Balance");
        _burn(msg.sender, burn_amt);
    }

    function redeem(uint256 number) public  {
        assert(number > 0 && number < 5);
        if (balanceOf(msg.sender) >= 500) {
            _burn(msg.sender, number * 500);
        }
       
    }

    function gift(address gift_player_addr,uint256 merchandiseno) public  {
        require(balanceOf(msg.sender)>3000, "Read the rules");
        assert(merchandiseno>0 && merchandiseno<5);
        _transfer(msg.sender, gift_player_addr, merchandiseno*500);
    }
}
