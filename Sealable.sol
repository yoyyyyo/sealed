pragma solidity 0.8.11;
import "@openzeppelin/contracts/access/Ownable.sol";
// SPDX-License-Identifier: CC0

contract Sealable is Ownable {
    bool private _sealed;

    modifier unsealed {
        require(_sealed == false, "contract is sealed");
        _;
    }

    function isSealed() external view returns (bool) {
        return _sealed;
    }

    function seal() onlyOwner external {
        _sealed = true;
    }
}
