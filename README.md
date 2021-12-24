# sealed
[npm](https://www.npmjs.com/package/@yoyyyyo/sealed) - [github](https://github.com/yoyyyyo/sealed)


a contract which you can "seal"

this is convenient for when you wish to disable particular functions after a certain point, but would still like to keep the ownership of the contract via Ownable.

## example
```solidity
pragma solidity ^0.8.11;
import "@openzeppelin/contracts/access/Ownable.sol";
import "@yoyyyyo/sealed/Sealable.sol";
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
```
