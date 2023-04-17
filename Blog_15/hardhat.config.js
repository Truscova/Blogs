/** @type import('hardhat/config').HardhatUserConfig */
require("@nomicfoundation/hardhat-toolbox");
module.exports = {
  solidity: {
    version: "0.8.19",
    settings: {
     modelChecker: {
      contracts: {
        "contracts/Horse.sol": ["Horse"]
      },    
      divModNoSlacks: true,      
      engine: "chc",      
      invariants: ["contract"],
      showUnproved: true,      
      solvers: ["z3"],
      targets: ["assert"],      
      timeout: 200000000
      } 
    }
  }
};
