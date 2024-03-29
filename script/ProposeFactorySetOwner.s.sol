// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.23;

import {Script} from "forge-std/Script.sol";

import {DeployInput} from "script/DeployInput.sol";
import {GovernorBravoDelegate} from "script/interfaces/GovernorBravoInterfaces.sol";

contract ProposeFactorySetOwner is Script, DeployInput {
  GovernorBravoDelegate constant GOVERNOR = GovernorBravoDelegate(UNISWAP_GOVERNOR);
  // The default proposer is uf.eek.eth.
  address _proposer =
    vm.envOr("PROPOSER_ADDRESS", address(0x0459f41c5f09BF678D9C07331894dE31d8C22255));

  /// @param _newV3FactoryOwner The new factory owner, i.e. the recently deployed `V3FactoryOwner`.
  function proposeFactoryOwnerChangeOnGovernor(address _newV3FactoryOwner)
    internal
    returns (uint256 _proposalId)
  {
    address[] memory _targets = new address[](1);
    uint256[] memory _values = new uint256[](1);
    string[] memory _signatures = new string[](1);
    bytes[] memory _calldatas = new bytes[](1);

    _targets[0] = UNISWAP_V3_FACTORY_ADDRESS;
    _values[0] = 0;
    _signatures[0] = "setOwner(address)";
    _calldatas[0] = abi.encode(address(_newV3FactoryOwner));

    return GOVERNOR.propose(
      _targets, _values, _signatures, _calldatas, "Change Uniswap V3 factory owner"
    );
  }

  /// @param _newV3FactoryOwner The new factory owner, i.e. the recently deployed `V3FactoryOwner`.
  /// @dev After the UniStaker and V3FactoryOwner contracts are deployed, a delegate should run this
  /// script to create a proposal to change the Uniswap v3 factory owner.
  function run(address _newV3FactoryOwner) public returns (uint256 _proposalId) {
    // The expectation is the key loaded here corresponds to the address of the `proposer` above.
    // When running as a script, broadcast will fail if the key is not correct.
    uint256 _proposerKey = vm.envOr(
      "PROPOSER_PRIVATE_KEY",
      uint256(0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d)
    );
    vm.rememberKey(_proposerKey);

    vm.startBroadcast(_proposer);
    _proposalId = proposeFactoryOwnerChangeOnGovernor(_newV3FactoryOwner);
    vm.stopBroadcast();
    return _proposalId;
  }
}
