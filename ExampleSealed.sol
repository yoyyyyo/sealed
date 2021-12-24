pragma solidity 0.8.11;
import "@openzeppelin/contracts/access/Ownable.sol";
import "./Sealable.sol";
// SPDX-License-Identifier: CC0

contract ExampleSealed is Ownable, Sealable {
    uint8 importantParameter;

    constructor(uint8 _p) {
        importantParameter = _p;
    }

    function changeParameter(uint8 _p) external unsealed {
        importantParameter = _p;
    }
}
