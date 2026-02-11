// ignition/modules/Greeter.ts

import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const GreeterModule = buildModule("GreeterModule", (m) => {

  // Deploy Greeter contract
  const greeter = m.contract("Greeter", []);

  return { greeter };
});

export default GreeterModule;
