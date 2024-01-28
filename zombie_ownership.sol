// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import "./zombie_attack.sol";
import "./erc721.sol";

contract ZombieOwnerShip is ZombieAttack, ERC721 {
    function balanceOf(address _owner) external view returns (uint256) {
        return ownerZombieCount[_owner];
    }

    function ownerOf(uint256 _tokenId) external view returns (address) {
        return zombieToOwner[_tokenId];
    }
}
