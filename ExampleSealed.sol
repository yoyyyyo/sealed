pragma solidity 0.8.11;
import "@openzeppelin/contracts/access/Ownable.sol";
import "./Sealable.sol";
// SPDX-License-Identifier: CC0

contract ExampleSealed is Ownable, Sealable {
    uint8 importantParameter;
    address publiclyChangeableParameter;

    constructor(uint8 _p) {
        importantParameter = _p;
        publiclyChangeableParameter = msg.sender;
    }

    function changeParameter(uint8 _p) external onlyOwner unsealed {
        importantParameter = _p;
    }

    function changePubliclyChangeableParameter() external unsealed {
        publiclyChangeableParameter = msg.sender;
    }

}
