# Deploy the Greeter.sol contract to Celo Sepolia using hardhat and foundry. Ensure you have both projects in a single folder that you then push to github. Your readme file should have your deployed contract addresses.
```
// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;


contract Greeter {
  string public text;




  function setMessage(string memory _text) public  {
   text = _text;
  }


  function getMessage() public view returns(string memory) {
       return text;
  }
}
```





Deployed Celo sepolia hardhat
```
0xEeCCD2bb5c0605F3eaCDC4dA221D9bdeDa580D2
```

Deployed Celo sepolia foundry
```
0xc97b2fe5ba7e68ed7b52a657a137cf636149cd25
```

