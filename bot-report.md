# Winning bot race submission
This is the top-ranked automated findings report, from LightChaser bot. All findings in this report will be considered known issues for the purposes of your C4 audit.

LightChaser-V3

## Summary

| |Issue|Instances| Gas Savings
|-|:-|:-:|:-:|
| [[M-01](#m-01)] | High level access functions can create points of failure (Not captured by 4nalyzer)  | 6| 0|
| [[L-01](#l-01)] | No limits when setting fees | 1| 0|
| [[L-02](#l-02)] | Loss of precision | 1| 0|
| [[L-03](#l-03)] | Missing zero address check in constructor | 2| 0|
| [[L-04](#l-04)] | Approve type(uint256).max may not work with some tokens | 1| 0|
| [[L-05](#l-05)] | Consider implementing two-step procedure for updating protocol addresses | 3| 0|
| [[L-06](#l-06)] | Division in comparison | 1| 0|
| [[L-07](#l-07)] | Use forceApprove in place of approve | 1| 0|
| [[G-01](#g-01)] | Multiple accesses of the same mapping/array key/index should be cached  | 2| 168|
| [[G-02](#g-02)] | Only emit event in setter function if the state variable was changed  | 2| 0|
| [[G-03](#g-03)] | State variables used within a function more than once should be cached to save gas  | 1| 200|
| [[G-04](#g-04)] | Consider Using Solady's Gas Optimized Lib for Math | 4| 0|
| [[G-05](#g-05)] | It is a waste of GAS to emit variable literals | 5| 40|
| [[G-06](#g-06)] | It is more efficient to use block.timestamp directly rather than calling a function to return it | 1| 0|
| [[G-07](#g-07)] | x + y is more efficient than using += for state variables (likewise for -=) | 3| 15|
| [[G-08](#g-08)] | Calldata should be used in place of memory function parameters when not mutated | 6| 78|
| [[G-09](#g-09)] | Usage of smaller uint/int types causes overhead | 5| 275|
| [[G-10](#g-10)] | Use assembly to check for the zero address | 3| 0|
| [[G-11](#g-11)] | Divisions which do not divide by -X cannot overflow or overflow so such operations can be unchecked to save gas | 2| 0|
| [[G-12](#g-12)] | Redundant state variable getters | 2| 0|
| [[G-13](#g-13)] | Consider activating via-ir for deploying | 7| 1750|
| [[G-14](#g-14)] | Use assembly hashing | 3| 0|
| [[G-15](#g-15)] | Use assembly to emit events | 16| 608|
| [[G-16](#g-16)] | Use solady library where possible to save gas | 2| 2000|
| [[G-17](#g-17)] | Using private rather than public for constants and immutables, saves gas | 8| 0|
| [[G-18](#g-18)] | Function names can be optimized | 3| 384|
| [[G-19](#g-19)] | State variable can be updated more than once in a function | 1| 800|
| [[G-20](#g-20)] | Use assembly to validate msg.sender | 4| 0|
| [[G-21](#g-21)] | Simple checks for zero uint can be done using assembly to save gas | 5| 30|
| [[G-22](#g-22)] | Use Unchecked for Divisions on Constant or Immutable Values | 4| 0|
| [[G-23](#g-23)] | Optimize Deployment Size by Fine-tuning IPFS Hash | 3| 31800|
| [[G-24](#g-24)] | Avoid Unnecessary Public Variables | 20| 440000|
| [[G-25](#g-25)] | Optimize Storage with Byte Truncation for Time Related State Variables | 3| 6000|
| [[G-26](#g-26)] | Stack variable cost less than state variables while used in emiting event | 2| 18|
| [[G-27](#g-27)] | Internal functions only used once can be inlined so save gas | 1| 30|
| [[G-28](#g-28)] | Constructors can be marked as payable to save deployment gas | 3| 0|
| [[G-29](#g-29)] | Merge events to save gas | 1| 375|
| [[G-30](#g-30)] | Use assembly scratch space to build calldata for external calls | 10| 2200|
| [[G-31](#g-31)] | Use assembly scratch space to build calldata for event emits | 8| 1760|
| [[G-32](#g-32)] | Consider using solady's "FixedPointMathLib" | 5| 0|
| [[G-33](#g-33)] | Same cast is done multiple times | 1| 0|
| [[G-34](#g-34)] | Assigning to structs can be more efficient | 1| 130|
| [[G-35](#g-35)] | Use uint256(1)/uint256(2) instead of true/false to save gas for changes | 4| 34200|
| [[G-36](#g-36)] | Enable IR-based code generation | 3| 0|
| [[N-01](#n-01)] | Some if-statement can be converted to a ternary  | 1| 0|
| [[N-02](#n-02)] | It is standard for all external and public functions to be override from an interface  | 26| 0|
| [[N-03](#n-03)] | Overly complicated arithmetic  | 1| 0|
| [[N-04](#n-04)] | Some tokens may revert when zero value transfers are made  | 2| 0|
| [[N-05](#n-05)] | Consider adding emergency-stop functionality  | 3| 0|
| [[N-06](#n-06)] | Return values not checked for approve() | 1| 0|
| [[N-07](#n-07)] | Contracts are vulnerable to fee-on-transfer accounting-related issues | 2| 0|
| [[N-08](#n-08)] | Revert on Transfer to the Zero Address | 6| 0|
| [[N-09](#n-09)] | Constructors missing validation | 2| 0|
| [[N-10](#n-10)] | Contracts use infinite approvals with no means to revoke | 1| 0|
| [[N-11](#n-11)] | Large transfers may not work with some ERC20 tokens | 3| 0|
| [[N-12](#n-12)] | NatSpec: @notice tags missing from contract/abstract/library/interface/function/modifier/constructor/receive/fallback | 3| 0|
| [[N-13](#n-13)] | Natspec @author is missing from contract/interface/library | 3| 0|
| [[N-14](#n-14)] | Natspec @title is missing from contract/interface/library | 1| 0|
| [[N-15](#n-15)] | NatSpec: @dev tags missing from contract/abstract/library/interface/function/modifier/constructor/receive/fallback | 25| 0|
| [[N-16](#n-16)] | NatSpec: @param tags missing from function/modifier/constructor | 7| 0|
| [[N-17](#n-17)] | NatSpec: @return tags missing from function/modifier/constructor | 1| 0|
| [[N-18](#n-18)] | Floating pragma should be avoided | 1| 0|
| [[N-19](#n-19)] | Events regarding state variable changes should emit the previous state variable value | 1| 0|
| [[N-20](#n-20)] | In functions which accept an address as a parameter, there should be a zero address check to prevent bugs | 24| 0|
| [[N-21](#n-21)] | Revert statements within external and public functions can be used to perform DOS attacks | 4| 0|
| [[N-22](#n-22)] | Private and internal state variables should have a preceding _ in their name unless they are constants | 6| 0|
| [[N-23](#n-23)] | Contract lines should not be longer than 120 characters for readability | 2| 0|
| [[N-24](#n-24)] | Not all event definitions are utilizing indexed variables. | 6| 0|
| [[N-25](#n-25)] | Dependence on external protocols | 2| 0|
| [[N-26](#n-26)] | Function names should differ to make the code more readable | 6| 0|
| [[N-27](#n-27)] | Functions within contracts are not ordered according to the solidity style guide | 1| 0|
| [[N-28](#n-28)] | Interface imports should be declared first | 1| 0|
| [[N-29](#n-29)] | Multiple mappings can be replaced with a single struct mapping | 1| 0|
| [[N-30](#n-30)] | Use safePermit in place of permit | 2| 0|
| [[N-31](#n-31)] | Consider using named mappings | 2| 0|
| [[N-32](#n-32)] | Use a single contract or library for system wide constants | 1| 0|
| [[N-33](#n-33)] | Off-by-one timestamp error | 2| 0|
| [[N-34](#n-34)] | increase/decrease allowance should be used instead of approve/safeApprove | 1| 0|
| [[N-35](#n-35)] | Use immutable not constant for keccak state variables | 3| 0|
| [[N-36](#n-36)] | Custom error has no error variables | 8| 0|
| [[N-37](#n-37)] | Empty bytes check is missing | 9| 0|
| [[N-38](#n-38)] | Consider using SMTChecker | 7| 1750|
| [[N-39](#n-39)] | Contracts should have full test coverage | 3| 0|
| [[N-40](#n-40)] | Consider using named function calls | 10| 0|
| [[N-41](#n-41)] | Lack Of Brace Spacing | 12| 0|
| [[N-42](#n-42)] | If statement control structures do not comply with best practices | 15| 0|
| [[N-43](#n-43)] | Incorrect withdraw declaration | 1| 0|
| [[N-44](#n-44)] | Consider adding formal verification proofs | 3| 0|
| [[N-45](#n-45)] | Missing events in sensitive functions | 2| 0|
| [[N-46](#n-46)] | Ensure block.timestamp is only used in long time intervals | 1| 0|
| [[N-47](#n-47)] | It is best practice to use linear inheritance | 1| 0|
| [[N-48](#n-48)] | Create methods are suspicious of the reorg attack | 1| 0|
| [[N-49](#n-49)] | Superfluous parameter can only be one value | 1| 0|
| [[N-50](#n-50)] | Use the Modern Upgradeable Contract Paradigm | 3| 0|
| [[N-51](#n-51)] | Use a struct to encapsulate multiple function parameters | 3| 0|
| [[N-52](#n-52)] | Using delete instead of setting mapping to 0 saves gas | 1| 5|
| [[N-53](#n-53)] | Consider using a format prettier or forge fmt | 1| 0|
| [[N-54](#n-54)] | Avoid defining a function in a single line including it's contents | 18| 0|
| [[N-55](#n-55)] | Use 'using' keyword when using specific imports rather than calling the specific import directly | 3| 0|
| [[N-56](#n-56)] | Avoid revertible function calls in a constructor | 1| 0|
| [[N-57](#n-57)] | Upgradeable contract uses non-upgradeable version of the OpenZeppelin libraries/contracts | 5| 0|
| [[N-58](#n-58)] | All verbatim blocks are considered identical by deduplicator and can incorrectly be unified | 2| 0|
| [[N-59](#n-59)] | Constructors should emit an event | 2| 0|
| [[N-60](#n-60)] | Avoid single line non empty object declarations | 11| 0|
| [[N-61](#n-61)] | Consider validating all user inputs | 20| 0|
| [[N-62](#n-62)] | Consider using named returns | 8| 0|
| [[N-63](#n-63)] | Errors should have parameters | 8| 0|
| [[N-64](#n-64)] | Avoid using 'owner' or '_owner' as a parameter name | 1| 0|
| [[N-65](#n-65)] | ERC777 tokens can introduce reentrancy risks | 6| 0|

### Medium Risk Issues

### [M-01]<a name="m-01"></a> High level access functions can create points of failure (Not captured by 4nalyzer) 

High-level access functions in software, especially those with administrative privileges, can lead to points of failure due to their potential for misuse and unauthorized access. These functions, if compromised, can allow attackers to escalate privileges, leading to unauthorized control or access to sensitive data and functionalities. Insecure direct object references, where user inputs aren't properly validated, can exacerbate this risk, allowing attackers to manipulate the system. Ensuring robust access control and validation mechanisms is crucial to mitigate these vulnerabilities

*There are 6 instance(s) of this issue:*

```solidity
201:   function setAdmin(address _newAdmin) external {
202:     _revertIfNotAdmin(); // <= FOUND
203:     _setAdmin(_newAdmin);
204:   }

```


*GitHub* : [202](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L202-L202)

```solidity
210:   function setRewardNotifier(address _rewardNotifier, bool _isEnabled) external {
211:     _revertIfNotAdmin(); // <= FOUND
212:     isRewardNotifier[_rewardNotifier] = _isEnabled;
213:     emit RewardNotifierSet(_rewardNotifier, _isEnabled);
214:   }

```


*GitHub* : [211](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L211-L211)

```solidity
110:   function setAdmin(address _newAdmin) external {
111:     _revertIfNotAdmin(); // <= FOUND
112:     if (_newAdmin == address(0)) revert V3FactoryOwner__InvalidAddress();
113:     emit AdminSet(admin, _newAdmin);
114:     admin = _newAdmin;
115:   }

```


*GitHub* : [111](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L111-L111)

```solidity
119:   function setPayoutAmount(uint256 _newPayoutAmount) external {
120:     _revertIfNotAdmin(); // <= FOUND
121:     if (_newPayoutAmount == 0) revert V3FactoryOwner__InvalidPayoutAmount();
122:     emit PayoutAmountSet(payoutAmount, _newPayoutAmount);
123:     payoutAmount = _newPayoutAmount;
124:   }

```


*GitHub* : [120](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L120-L120)

```solidity
131:   function enableFeeAmount(uint24 _fee, int24 _tickSpacing) external {
132:     _revertIfNotAdmin(); // <= FOUND
133:     FACTORY.enableFeeAmount(_fee, _tickSpacing);
134:   }

```


*GitHub* : [132](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L132-L132)

```solidity
142:   function setFeeProtocol(
143:     IUniswapV3PoolOwnerActions _pool,
144:     uint8 _feeProtocol0,
145:     uint8 _feeProtocol1
146:   ) external {
147:     _revertIfNotAdmin(); // <= FOUND
148:     _pool.setFeeProtocol(_feeProtocol0, _feeProtocol1);
149:   }

```


*GitHub* : [147](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L147-L147)

### Low Risk Issues

### [L-01]<a name="l-01"></a> No limits when setting fees

When settings fees state variables, ensure there a require checks in place to prevent incorrect values from being set. This is particularly important when dealing with fee values as without checks fees can be set to 100%

*There are 1 instance(s) of this issue:*

```solidity
142:   function setFeeProtocol(
143:     IUniswapV3PoolOwnerActions _pool,
144:     uint8 _feeProtocol0,
145:     uint8 _feeProtocol1
146:   ) external {
147:     _revertIfNotAdmin();
148:     _pool.setFeeProtocol(_feeProtocol0, _feeProtocol1);
149:   }

```


*GitHub* : [142](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L142-L142)

### [L-02]<a name="l-02"></a> Loss of precision

Dividing by large numbers in Solidity can cause a loss of precision due to the language's inherent integer division behavior. Solidity does not support floating-point arithmetic, and as a result, division between integers yields an integer result, truncating any fractional part. When dividing by a large number, the resulting value may become significantly smaller, leading to a loss of precision, as the fractional part is discarded.

*There are 1 instance(s) of this issue:*

```solidity
241:   function unclaimedReward(address _beneficiary) public view returns (uint256) { // <= FOUND
242:     return unclaimedRewardCheckpoint[_beneficiary]
243:       + (
244:         earningPower[_beneficiary]
245:           * (rewardPerTokenAccumulated() - beneficiaryRewardPerTokenCheckpoint[_beneficiary])
246:       ) / SCALE_FACTOR;
247:   }

```


*GitHub* : [241](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L241-L241)

### [L-03]<a name="l-03"></a> Missing zero address check in constructor

In Solidity, constructors often take address parameters to initialize important components of a contract, such as owner or linked contracts. However, without a check, there's a risk that an address parameter could be mistakenly set to the zero address (0x0). This could occur due to a mistake or oversight during contract deployment. A zero address in a crucial role can cause serious issues, as it cannot perform actions like a normal address, and any funds sent to it are irretrievable. Therefore, it's crucial to include a zero address check in constructors to prevent such potential problems. If a zero address is detected, the constructor should revert the transaction.

*There are 2 instance(s) of this issue:*

```solidity
190:   constructor(IERC20 _rewardToken, IERC20Delegates _stakeToken, address _admin) // <= FOUND
191:     EIP712("UniStaker", "1")
192:   {
193:     REWARD_TOKEN = _rewardToken;
194:     STAKE_TOKEN = _stakeToken;
195:     _setAdmin(_admin);
196:   }

```


*GitHub* : [190](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L190-L190)

```solidity
25:   constructor(IERC20Delegates _token, address _delegatee) { // <= FOUND
26:     _token.delegate(_delegatee);
27:     _token.approve(msg.sender, type(uint256).max);
28:   }

```


*GitHub* : [25](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L25-L25)

### [L-04]<a name="l-04"></a> Approve type(uint256).max may not work with some tokens

The `approve` function in ERC-20 tokens allows a user to permit another user or contract to spend tokens on their behalf. Setting the approval to `type(uint256).max` is often used as a way to grant an indefinite approval, as this value is the maximum possible value of a `uint256` variable in Solidity. 

However, some tokens may not function as expected when `type(uint256).max` is used. These tokens may have an atypical implementation of the `transferFrom` function, which is used in combination with `approve`. This function might behave differently when confronted with such a high allowance, possibly due to custom logic in the contract that wasn't designed to handle these edge cases. 

Moreover, tokens that have a built-in burning or fees mechanism could behave unpredictably when the maximum allowance is set. This can lead to potential vulnerabilities or misinterpretations of contract behavior.

Resolution: It's advisable to be conservative with the `approve` function and only approve the specific amount of tokens that need to be spent for the specific operation you're performing. If you need to provide an extensive allowance, ensure you've thoroughly analyzed the token contract to understand how it behaves with high allowances. Alternatively, consider implementing a mechanism in your contract to handle token allowances in a more dynamic way, adjusting them as needed for each operation, rather than relying on a single indefinite approval.

*There are 1 instance(s) of this issue:*

```solidity
27:     _token.approve(msg.sender, type(uint256).max); // <= FOUND

```


*GitHub* : [27](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L27-L27)

### [L-05]<a name="l-05"></a> Consider implementing two-step procedure for updating protocol addresses

Implementing a two-step procedure for updating protocol addresses adds an extra layer of security. In such a system, the first step initiates the change, and the second step, after a predefined delay, confirms and finalizes it. This delay allows stakeholders or monitoring tools to observe and react to unintended or malicious changes. If an unauthorized change is detected, corrective actions can be taken before the change is finalized. To achieve this, introduce a "proposed address" state variable and a "delay period". Upon an update request, set the "proposed address". After the delay, if not contested, the main protocol address can be updated.

*There are 3 instance(s) of this issue:*

```solidity
201:   function setAdmin(address _newAdmin) external { // <= FOUND
202:     _revertIfNotAdmin();
203:     _setAdmin(_newAdmin);
204:   }

```


*GitHub* : [201](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L201-L201)

```solidity
210:   function setRewardNotifier(address _rewardNotifier, bool _isEnabled) external { // <= FOUND
211:     _revertIfNotAdmin();
212:     isRewardNotifier[_rewardNotifier] = _isEnabled;
213:     emit RewardNotifierSet(_rewardNotifier, _isEnabled);
214:   }

```


*GitHub* : [210](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L210-L210)

```solidity
110:   function setAdmin(address _newAdmin) external { // <= FOUND
111:     _revertIfNotAdmin();
112:     if (_newAdmin == address(0)) revert V3FactoryOwner__InvalidAddress();
113:     emit AdminSet(admin, _newAdmin);
114:     admin = _newAdmin;
115:   }

```


*GitHub* : [110](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L110-L110)

### [L-06]<a name="l-06"></a> Division in comparison

To ensure accuracy in comparisons within programming, especially when dealing with integers, it's often more efficient to use multiplication rather than division. This approach stems from the fact that division operations are generally slower and more complex than multiplication. And in the context of solidity they can cause precision errors.

Suppose you want to compare if a/b is greater than c/d (where a, b, c, and d are integers). Instead of performing division, which is prone to precision errors, you can cross-multiply to avoid division. The comparison a/b > c/d is equivalent to a*d > b*c. This way, you only use multiplication, which is faster and avoids potential inaccuracies or complexities associated with division.

*There are 1 instance(s) of this issue:*

```solidity
587: 
588:     if ((scaledRewardRate / SCALE_FACTOR) == 0) revert UniStaker__InvalidRewardRate(); // <= FOUND

```


*GitHub* : [587](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L587-L588)

### [L-07]<a name="l-07"></a> Use forceApprove in place of approve

The forceApprove function is a specialized solution addressing the issues that arise with non-standard ERC-20 tokens, such as USDT, which exhibit non-standard behavior in their approve function. These tokens may necessitate setting the allowance to 0 before changing it, may not return a boolean value from approve calls, or may return false instead of reverting on failure. OpenZeppelin's SafeERC20 library includes a forceApprove method to safely handle these peculiarities, ensuring that smart contracts can interact with such tokens without transaction failures. It rectifies inconsistencies by ensuring that all token interactions, including approvals, adhere to expected standards, even when the underlying tokens do not. 

*There are 1 instance(s) of this issue:*

```solidity
27:     _token.approve(msg.sender, type(uint256).max); // <= FOUND

```


*GitHub* : [27](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L27-L27)

### Gas Risk Issues

### [G-01]<a name="g-01"></a> Multiple accesses of the same mapping/array key/index should be cached 

Caching repeated accesses to the same mapping or array key/index in smart contracts can lead to significant gas savings. In Solidity, each read operation from storage (like accessing a value in a mapping or array using a key or index) costs gas. By storing the accessed value in a local variable and reusing it within the function, you avoid multiple expensive storage read operations. This practice is particularly beneficial in loops or functions with multiple reads of the same data. Implementing this caching approach enhances efficiency and reduces transaction costs, which is crucial for optimizing smart contract performance and user experience on the blockchain.

*There are 2 instance(s) of this issue:*

```solidity
605:   function _fetchOrDeploySurrogate(address _delegatee)
606:     internal
607:     returns (DelegationSurrogate _surrogate)
608:   {
609:     _surrogate = surrogates[_delegatee]; // <= FOUND
610: 
611:     if (address(_surrogate) == address(0)) {
612:       _surrogate = new DelegationSurrogate(STAKE_TOKEN, _delegatee);
613:       surrogates[_delegatee] = _surrogate; // <= FOUND
614:       emit SurrogateDeployed(_delegatee, address(_surrogate));
615:     }
616:   }

```


*GitHub* : [605](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L605-L613)

```solidity
740:   function _claimReward(address _beneficiary) internal {
741:     _checkpointGlobalReward();
742:     _checkpointReward(_beneficiary);
743: 
744:     uint256 _reward = unclaimedRewardCheckpoint[_beneficiary]; // <= FOUND
745:     if (_reward == 0) return;
746:     unclaimedRewardCheckpoint[_beneficiary] = 0; // <= FOUND
747:     emit RewardClaimed(_beneficiary, _reward);
748: 
749:     SafeERC20.safeTransfer(REWARD_TOKEN, _beneficiary, _reward);
750:   }

```


*GitHub* : [740](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L740-L746)

### [G-02]<a name="g-02"></a> Only emit event in setter function if the state variable was changed 

Emitting events in setter functions of smart contracts only when state variables change saves gas. This is because emitting events consumes gas, and unnecessary events, where no actual state change occurs, lead to wasteful consumption.

*There are 2 instance(s) of this issue:*

```solidity
210:   function setRewardNotifier(address _rewardNotifier, bool _isEnabled) external { // <= FOUND
211:     _revertIfNotAdmin();
212:     isRewardNotifier[_rewardNotifier] = _isEnabled;
213:     emit RewardNotifierSet(_rewardNotifier, _isEnabled); // <= FOUND
214:   }

```


*GitHub* : [210](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L210-L213)

```solidity
771:   function _setAdmin(address _newAdmin) internal { // <= FOUND
772:     _revertIfAddressZero(_newAdmin);
773:     emit AdminSet(admin, _newAdmin); // <= FOUND
774:     admin = _newAdmin;
775:   }

```


*GitHub* : [771](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L771-L773)

### [G-03]<a name="g-03"></a> State variables used within a function more than once should be cached to save gas 

Cache such variables and perform operations on them, if operations include modifications to the state variable(s) then remember to equate the state variable to it's cached counterpart at the end

*There are 1 instance(s) of this issue:*

```solidity
229:   function rewardPerTokenAccumulated() public view returns (uint256) { // <= FOUND
230:     if (totalStaked == 0) return rewardPerTokenAccumulatedCheckpoint; // <= FOUND
231: 
232:     return rewardPerTokenAccumulatedCheckpoint // <= FOUND
233:       + (scaledRewardRate * (lastTimeRewardDistributed() - lastCheckpointTime)) / totalStaked; // <= FOUND
234:   }

```


*GitHub* : [229](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L229-L233)

### [G-04]<a name="g-04"></a> Consider Using Solady's Gas Optimized Lib for Math

In instances where many similar mathematical operations are performed, consider using Solday's math lib to benefit from the gas saving it can introduce.

*There are 4 instance(s) of this issue:*

```solidity
232: 
233:     return rewardPerTokenAccumulatedCheckpoint
234:       + (scaledRewardRate * (lastTimeRewardDistributed() - lastCheckpointTime)) / totalStaked; // <= FOUND

```


*GitHub* : [232](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L232-L234)

```solidity
242:     return unclaimedRewardCheckpoint[_beneficiary]
243:       + (
244:         earningPower[_beneficiary]
245:           * (rewardPerTokenAccumulated() - beneficiaryRewardPerTokenCheckpoint[_beneficiary]) // <= FOUND
246:       ) / SCALE_FACTOR; // <= FOUND

```


*GitHub* : [242](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L242-L246)

```solidity
578:       scaledRewardRate = (_amount * SCALE_FACTOR) / REWARD_DURATION; // <= FOUND

```


*GitHub* : [578](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L578-L578)

```solidity
581:       scaledRewardRate = (_remainingReward + _amount * SCALE_FACTOR) / REWARD_DURATION; // <= FOUND

```


*GitHub* : [581](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L581-L581)

### [G-05]<a name="g-05"></a> It is a waste of GAS to emit variable literals

Emitting variable literals (true, false, 'hello', 1 etc...) in events is inefficient, as it consumes extra gas without providing added value. These literals are fixed values that can be accessed or hardcoded elsewhere in the smart contract or application, making their inclusion in events redundant and an unnecessary drain on resources during transaction execution.

*There are 5 instance(s) of this issue:*

```solidity
662:     emit BeneficiaryAltered(_depositId, address(0), _beneficiary); // <= FOUND

```


*GitHub* : [662](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L662-L662)

```solidity
663:     emit DelegateeAltered(_depositId, address(0), _delegatee); // <= FOUND

```


*GitHub* : [663](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L663-L663)

```solidity
105:     emit AdminSet(address(0), _admin); // <= FOUND

```


*GitHub* : [105](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L105-L105)

```solidity
105:     emit PayoutAmountSet(0, _payoutAmount); // <= FOUND

```


*GitHub* : [105](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L105-L105)

```solidity
196:     emit FeesClaimed(address(_pool), msg.sender, _recipient, _amount0, _amount1); // <= FOUND

```


*GitHub* : [196](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L196-L196)

### [G-06]<a name="g-06"></a> It is more efficient to use block.timestamp directly rather than calling a function to return it

Creating a function to return block.timestamp is gas inefficient due to the overhead of function storage and execution, while directly accessing block.timestamp in your contract code or as a function argument is a more gas-efficient alternative.

*There are 1 instance(s) of this issue:*

```solidity
220:   function lastTimeRewardDistributed() public view returns (uint256) {
221:     if (rewardEndTime <= block.timestamp) return rewardEndTime;
222:     else return block.timestamp; // <= FOUND
223:   }

```


*GitHub* : [222](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L222-L222)

### [G-07]<a name="g-07"></a> x + y is more efficient than using += for state variables (likewise for -=)

In instances found where either += or -= are used against state variables use x = x + y instead

*There are 3 instance(s) of this issue:*

```solidity
638:   function _stake(address _depositor, uint256 _amount, address _delegatee, address _beneficiary)
639:     internal
640:     returns (DepositIdentifier _depositId)
641:   {
642:     _revertIfAddressZero(_delegatee);
643:     _revertIfAddressZero(_beneficiary);
644: 
645:     _checkpointGlobalReward();
646:     _checkpointReward(_beneficiary);
647: 
648:     DelegationSurrogate _surrogate = _fetchOrDeploySurrogate(_delegatee);
649:     _depositId = _useDepositId();
650: 
651:     totalStaked += _amount; // <= FOUND
652:     depositorTotalStaked[_depositor] += _amount;
653:     earningPower[_beneficiary] += _amount;
654:     deposits[_depositId] = Deposit({
655:       balance: _amount,
656:       owner: _depositor,
657:       delegatee: _delegatee,
658:       beneficiary: _beneficiary
659:     });
660:     _stakeTokenSafeTransferFrom(_depositor, address(_surrogate), _amount);
661:     emit StakeDeposited(_depositor, _depositId, _amount, _amount);
662:     emit BeneficiaryAltered(_depositId, address(0), _beneficiary);
663:     emit DelegateeAltered(_depositId, address(0), _delegatee);
664:   }

```


*GitHub* : [651](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L651-L651)

```solidity
669:   function _stakeMore(Deposit storage deposit, DepositIdentifier _depositId, uint256 _amount)
670:     internal
671:   {
672:     _checkpointGlobalReward();
673:     _checkpointReward(deposit.beneficiary);
674: 
675:     DelegationSurrogate _surrogate = surrogates[deposit.delegatee];
676: 
677:     totalStaked += _amount; // <= FOUND
678:     depositorTotalStaked[deposit.owner] += _amount;
679:     earningPower[deposit.beneficiary] += _amount;
680:     deposit.balance += _amount;
681:     _stakeTokenSafeTransferFrom(deposit.owner, address(_surrogate), _amount);
682:     emit StakeDeposited(deposit.owner, _depositId, _amount, deposit.balance);
683:   }

```


*GitHub* : [677](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L677-L677)

```solidity
723:   function _withdraw(Deposit storage deposit, DepositIdentifier _depositId, uint256 _amount)
724:     internal
725:   {
726:     _checkpointGlobalReward();
727:     _checkpointReward(deposit.beneficiary);
728: 
729:     deposit.balance -= _amount; 
730:     totalStaked -= _amount; // <= FOUND
731:     depositorTotalStaked[deposit.owner] -= _amount;
732:     earningPower[deposit.beneficiary] -= _amount;
733:     _stakeTokenSafeTransferFrom(address(surrogates[deposit.delegatee]), deposit.owner, _amount);
734:     emit StakeWithdrawn(_depositId, _amount, deposit.balance);
735:   }

```


*GitHub* : [730](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L730-L730)

### [G-08]<a name="g-08"></a> Calldata should be used in place of memory function parameters when not mutated

In Solidity, `calldata` should be used in place of `memory` for function parameters when the function is `external`. This is because `calldata` is a non-modifiable, non-persistent area where function arguments are stored, and it's cheaper in terms of gas than `memory`. It's especially efficient for arrays and complex data types. `calldata` provides a gas-efficient way to pass data in external function calls, whereas `memory` is a temporary space that's erased between external function calls. This distinction is crucial for optimizing smart contracts for gas usage and performance.

*There are 6 instance(s) of this issue:*

```solidity
315:   function stakeOnBehalf(
316:     uint256 _amount,
317:     address _delegatee,
318:     address _beneficiary,
319:     address _depositor,
320:     bytes memory _signature // <= FOUND
321:   ) external returns (DepositIdentifier _depositId) {
322:     _revertIfSignatureIsNotValidNow(
323:       _depositor,
324:       _hashTypedDataV4(
325:         keccak256(
326:           abi.encode(
327:             STAKE_TYPEHASH, _amount, _delegatee, _beneficiary, _depositor, _useNonce(_depositor)
328:           )
329:         )
330:       ),
331:       _signature // <= FOUND
332:     );
333:     _depositId = _stake(_depositor, _amount, _delegatee, _beneficiary);
334:   }

```


*GitHub* : [315](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L315-L331)

```solidity
382:   function stakeMoreOnBehalf(
383:     DepositIdentifier _depositId,
384:     uint256 _amount,
385:     address _depositor,
386:     bytes memory _signature // <= FOUND
387:   ) external {
388:     Deposit storage deposit = deposits[_depositId];
389:     _revertIfNotDepositOwner(deposit, _depositor);
390: 
391:     _revertIfSignatureIsNotValidNow(
392:       _depositor,
393:       _hashTypedDataV4(
394:         keccak256(
395:           abi.encode(STAKE_MORE_TYPEHASH, _depositId, _amount, _depositor, _useNonce(_depositor))
396:         )
397:       ),
398:       _signature // <= FOUND
399:     );
400: 
401:     _stakeMore(deposit, _depositId, _amount);
402:   }

```


*GitHub* : [382](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L382-L398)

```solidity
423:   function alterDelegateeOnBehalf(
424:     DepositIdentifier _depositId,
425:     address _newDelegatee,
426:     address _depositor,
427:     bytes memory _signature // <= FOUND
428:   ) external {
429:     Deposit storage deposit = deposits[_depositId];
430:     _revertIfNotDepositOwner(deposit, _depositor);
431: 
432:     _revertIfSignatureIsNotValidNow(
433:       _depositor,
434:       _hashTypedDataV4(
435:         keccak256(
436:           abi.encode(
437:             ALTER_DELEGATEE_TYPEHASH, _depositId, _newDelegatee, _depositor, _useNonce(_depositor)
438:           )
439:         )
440:       ),
441:       _signature // <= FOUND
442:     );
443: 
444:     _alterDelegatee(deposit, _depositId, _newDelegatee);
445:   }

```


*GitHub* : [423](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L423-L441)

```solidity
466:   function alterBeneficiaryOnBehalf(
467:     DepositIdentifier _depositId,
468:     address _newBeneficiary,
469:     address _depositor,
470:     bytes memory _signature // <= FOUND
471:   ) external {
472:     Deposit storage deposit = deposits[_depositId];
473:     _revertIfNotDepositOwner(deposit, _depositor);
474: 
475:     _revertIfSignatureIsNotValidNow(
476:       _depositor,
477:       _hashTypedDataV4(
478:         keccak256(
479:           abi.encode(
480:             ALTER_BENEFICIARY_TYPEHASH,
481:             _depositId,
482:             _newBeneficiary,
483:             _depositor,
484:             _useNonce(_depositor)
485:           )
486:         )
487:       ),
488:       _signature // <= FOUND
489:     );
490: 
491:     _alterBeneficiary(deposit, _depositId, _newBeneficiary);
492:   }

```


*GitHub* : [466](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L466-L488)

```solidity
512:   function withdrawOnBehalf(
513:     DepositIdentifier _depositId,
514:     uint256 _amount,
515:     address _depositor,
516:     bytes memory _signature // <= FOUND
517:   ) external {
518:     Deposit storage deposit = deposits[_depositId];
519:     _revertIfNotDepositOwner(deposit, _depositor);
520: 
521:     _revertIfSignatureIsNotValidNow(
522:       _depositor,
523:       _hashTypedDataV4(
524:         keccak256(
525:           abi.encode(WITHDRAW_TYPEHASH, _depositId, _amount, _depositor, _useNonce(_depositor))
526:         )
527:       ),
528:       _signature // <= FOUND
529:     );
530: 
531:     _withdraw(deposit, _depositId, _amount);
532:   }

```


*GitHub* : [512](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L512-L528)

```solidity
544:   function claimRewardOnBehalf(address _beneficiary, bytes memory _signature) external { // <= FOUND
545:     _revertIfSignatureIsNotValidNow(
546:       _beneficiary,
547:       _hashTypedDataV4(
548:         keccak256(abi.encode(CLAIM_REWARD_TYPEHASH, _beneficiary, _useNonce(_beneficiary)))
549:       ),
550:       _signature // <= FOUND
551:     );
552:     _claimReward(_beneficiary);
553:   }

```


*GitHub* : [544](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L544-L550)

### [G-09]<a name="g-09"></a> Usage of smaller uint/int types causes overhead

When using a smaller int/uint type it first needs to be converted to it's 258 bit counterpart to be operated, this increases the gass cost and thus should be avoided. However it does make sense to use smaller int/uint values within structs provided you pack the struct properly.

*There are 5 instance(s) of this issue:*

```solidity
292:   function permitAndStake(
293:     uint256 _amount,
294:     address _delegatee,
295:     address _beneficiary,
296:     uint256 _deadline,
297:     uint8 _v, // <= FOUND
298:     bytes32 _r,
299:     bytes32 _s
300:   ) external returns (DepositIdentifier _depositId) {
301:     STAKE_TOKEN.permit(msg.sender, address(this), _amount, _deadline, _v, _r, _s);
302:     _depositId = _stake(msg.sender, _amount, _delegatee, _beneficiary);
303:   }

```


*GitHub* : [297](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L297-L297)

```solidity
360:   function permitAndStakeMore(
361:     DepositIdentifier _depositId,
362:     uint256 _amount,
363:     uint256 _deadline,
364:     uint8 _v, // <= FOUND
365:     bytes32 _r,
366:     bytes32 _s
367:   ) external {
368:     Deposit storage deposit = deposits[_depositId];
369:     _revertIfNotDepositOwner(deposit, msg.sender);
370: 
371:     STAKE_TOKEN.permit(msg.sender, address(this), _amount, _deadline, _v, _r, _s);
372:     _stakeMore(deposit, _depositId, _amount);
373:   }

```


*GitHub* : [364](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L364-L364)

```solidity
142:   function setFeeProtocol(
143:     IUniswapV3PoolOwnerActions _pool,
144:     uint8 _feeProtocol0, // <= FOUND
145:     uint8 _feeProtocol1 // <= FOUND
146:   ) external {
147:     _revertIfNotAdmin();
148:     _pool.setFeeProtocol(_feeProtocol0, _feeProtocol1);
149:   }

```


*GitHub* : [144](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L144-L145)

```solidity
131:   function enableFeeAmount(uint24 _fee, int24 _tickSpacing) external { // <= FOUND
132:     _revertIfNotAdmin();
133:     FACTORY.enableFeeAmount(_fee, _tickSpacing);
134:   }

```


*GitHub* : [131](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L131-L131)

```solidity
181:   function claimFees(
182:     IUniswapV3PoolOwnerActions _pool,
183:     address _recipient,
184:     uint128 _amount0Requested, // <= FOUND
185:     uint128 _amount1Requested // <= FOUND
186:   ) external returns (uint128, uint128) {
187:     PAYOUT_TOKEN.safeTransferFrom(msg.sender, address(REWARD_RECEIVER), payoutAmount);
188:     REWARD_RECEIVER.notifyRewardAmount(payoutAmount);
189:     (uint128 _amount0, uint128 _amount1) = // <= FOUND
190:       _pool.collectProtocol(_recipient, _amount0Requested, _amount1Requested);
191: 
193:     if (_amount0 < _amount0Requested || _amount1 < _amount1Requested) {
194:       revert V3FactoryOwner__InsufficientFeesCollected();
195:     }
196:     emit FeesClaimed(address(_pool), msg.sender, _recipient, _amount0, _amount1);
197:     return (_amount0, _amount1);
198:   }

```


*GitHub* : [184](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L184-L189)

### [G-10]<a name="g-10"></a> Use assembly to check for the zero address


Using assembly for address comparisons in Solidity can save gas because it allows for more direct access to the Ethereum Virtual Machine (EVM), reducing the overhead of higher-level operations. Solidity's high-level abstraction simplifies coding but can introduce additional gas costs. Using assembly for simple operations like address comparisons can be more gas-efficient.

*There are 3 instance(s) of this issue:*

```solidity
605:   function _fetchOrDeploySurrogate(address _delegatee)
606:     internal
607:     returns (DelegationSurrogate _surrogate)
608:   {
609:     _surrogate = surrogates[_delegatee];
610: 
611:     if (address(_surrogate) == address(0)) { // <= FOUND
612:       _surrogate = new DelegationSurrogate(STAKE_TOKEN, _delegatee);
613:       surrogates[_delegatee] = _surrogate;
614:       emit SurrogateDeployed(_delegatee, address(_surrogate));
615:     }
616:   }

```


*GitHub* : [605](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L605-L611)

```solidity
794:   function _revertIfAddressZero(address _account) internal pure {
795:     if (_account == address(0)) revert UniStaker__InvalidAddress(); // <= FOUND
796:   }

```


*GitHub* : [794](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L794-L795)

```solidity
110:   function setAdmin(address _newAdmin) external {
111:     _revertIfNotAdmin();
112:     if (_newAdmin == address(0)) revert V3FactoryOwner__InvalidAddress(); // <= FOUND
113:     emit AdminSet(admin, _newAdmin);
114:     admin = _newAdmin;
115:   }

```


*GitHub* : [110](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L110-L112)

### [G-11]<a name="g-11"></a> Divisions which do not divide by -X cannot overflow or overflow so such operations can be unchecked to save gas

Make such found divisions are unchecked when ensured it is safe to do so

*There are 2 instance(s) of this issue:*

```solidity
570:   function notifyRewardAmount(uint256 _amount) external {
571:     if (!isRewardNotifier[msg.sender]) revert UniStaker__Unauthorized("not notifier", msg.sender);
572: 
575:     rewardPerTokenAccumulatedCheckpoint = rewardPerTokenAccumulated();
576: 
577:     if (block.timestamp >= rewardEndTime) {
578:       scaledRewardRate = (_amount * SCALE_FACTOR) / REWARD_DURATION; // <= FOUND
579:     } else {
580:       uint256 _remainingReward = scaledRewardRate * (rewardEndTime - block.timestamp);
581:       scaledRewardRate = (_remainingReward + _amount * SCALE_FACTOR) / REWARD_DURATION; // <= FOUND
582:     }
583: 
584:     rewardEndTime = block.timestamp + REWARD_DURATION;
585:     lastCheckpointTime = block.timestamp;
586: 
587:     if ((scaledRewardRate / SCALE_FACTOR) == 0) revert UniStaker__InvalidRewardRate(); // <= FOUND
588: 
594:     if (
595:       (scaledRewardRate * REWARD_DURATION) > (REWARD_TOKEN.balanceOf(address(this)) * SCALE_FACTOR)
596:     ) revert UniStaker__InsufficientRewardBalance();
597: 
598:     emit RewardNotified(_amount, msg.sender);
599:   }

```


*GitHub* : [578](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L578-L587)

```solidity
241:   function unclaimedReward(address _beneficiary) public view returns (uint256) {
242:     return unclaimedRewardCheckpoint[_beneficiary]
243:       + (
244:         earningPower[_beneficiary]
245:           * (rewardPerTokenAccumulated() - beneficiaryRewardPerTokenCheckpoint[_beneficiary])
246:       ) / SCALE_FACTOR; // <= FOUND
247:   }

```


*GitHub* : [246](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L246-L246)

### [G-12]<a name="g-12"></a> Redundant state variable getters

Getters for public state variables are automatically generated so there is no need to code them manually and lose gas

*There are 2 instance(s) of this issue:*

```solidity
220:   function lastTimeRewardDistributed() public view returns (uint256) {
221:     if (rewardEndTime <= block.timestamp) return rewardEndTime; // <= FOUND
222:     else return block.timestamp;
223:   }

```


*GitHub* : [221](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L221-L221)

```solidity
229:   function rewardPerTokenAccumulated() public view returns (uint256) {
230:     if (totalStaked == 0) return rewardPerTokenAccumulatedCheckpoint; // <= FOUND
231: 
232:     return rewardPerTokenAccumulatedCheckpoint
233:       + (scaledRewardRate * (lastTimeRewardDistributed() - lastCheckpointTime)) / totalStaked;
234:   }

```


*GitHub* : [230](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L230-L230)

### [G-13]<a name="g-13"></a> Consider activating via-ir for deploying

The Solidity compiler's Intermediate Representation (IR) based code generator, which can be activated using --via-ir on the command line or {"viaIR": true} in the options, serves a dual purpose. Firstly, it boosts the transparency and audibility of code generation, which enhances developers' comprehension and control over the contract's final bytecode. Secondly, it enables more sophisticated optimization passes that span multiple functions, thereby potentially leading to more efficient bytecode.

It's important to note that using the IR-based code generator may lengthen compile times due to the extra optimization steps. Therefore, it's advised to test your contract with and without this option enabled to measure the performance and gas cost implications. If the IR-based code generator significantly enhances your contract's performance or reduces gas costs, consider using the --via-ir flag during deployment. This way, you can leverage more advanced compiler optimizations without hindering your development workflow.

*There are 7 instance(s) of this issue:*

```solidity
16: all

```


*GitHub* : [16](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L16-L16)

```solidity
16: all

```


*GitHub* : [16](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L16-L16)

```solidity
16: all

```


*GitHub* : [16](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L16-L16)

```solidity
16: all

```


*GitHub* : [16](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L16-L16)

```solidity
16: all

```


*GitHub* : [16](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L16-L16)

```solidity
16: all

```


*GitHub* : [16](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L16-L16)

```solidity
16: all

```


*GitHub* : [16](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L16-L16)

### [G-14]<a name="g-14"></a> Use assembly hashing

From a gas standpoint, the assembly version of the keccak256 hashing function can be more efficient than the high-level Solidity version. This is because Solidity has additional overhead when handling function calls and memory management, which can increase the gas cost.

*There are 3 instance(s) of this issue:*

```solidity
102: 
104:   bytes32 public constant STAKE_TYPEHASH = keccak256( // <= FOUND
105:     "Stake(uint256 amount,address delegatee,address beneficiary,address depositor,uint256 nonce)"
106:   );

```


*GitHub* : [102](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L102-L104)

```solidity
109:   
110:   bytes32 public constant ALTER_DELEGATEE_TYPEHASH = keccak256( // <= FOUND
111:     "AlterDelegatee(uint256 depositId,address newDelegatee,address depositor,uint256 nonce)"
112:   );

```


*GitHub* : [109](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L109-L110)

```solidity
113:   
114:   bytes32 public constant ALTER_BENEFICIARY_TYPEHASH = keccak256( // <= FOUND
115:     "AlterBeneficiary(uint256 depositId,address newBeneficiary,address depositor,uint256 nonce)"
116:   );

```


*GitHub* : [113](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L113-L114)

### [G-15]<a name="g-15"></a> Use assembly to emit events

With the use of inline assembly in Solidity, we can take advantage of low-level features like scratch space and the free memory pointer, offering more gas-efficient ways of emitting events. The scratch space is a certain area of memory where we can temporarily store data, and the free memory pointer indicates the next available memory slot. Using these, we can efficiently assemble event data without incurring additional memory expansion costs. However, safety is paramount: to avoid overwriting or leakage, we must cache the free memory pointer before use and restore it afterward, ensuring that it points to the correct memory location post-operation.

*There are 16 instance(s) of this issue:*

```solidity
213:     emit RewardNotifierSet(_rewardNotifier, _isEnabled); // <= FOUND

```


*GitHub* : [213](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L213-L213)

```solidity
598: 
599:     emit RewardNotified(_amount, msg.sender); // <= FOUND

```


*GitHub* : [599](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L599-L599)

```solidity
614:       emit SurrogateDeployed(_delegatee, address(_surrogate)); // <= FOUND

```


*GitHub* : [614](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L614-L614)

```solidity
661:     emit StakeDeposited(_depositor, _depositId, _amount, _amount); // <= FOUND

```


*GitHub* : [661](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L661-L661)

```solidity
662:     emit BeneficiaryAltered(_depositId, address(0), _beneficiary); // <= FOUND

```


*GitHub* : [662](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L662-L662)

```solidity
663:     emit DelegateeAltered(_depositId, address(0), _delegatee); // <= FOUND

```


*GitHub* : [663](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L663-L663)

```solidity
682:     emit StakeDeposited(deposit.owner, _depositId, _amount, deposit.balance); // <= FOUND

```


*GitHub* : [682](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L682-L682)

```solidity
695:     emit DelegateeAltered(_depositId, deposit.delegatee, _newDelegatee); // <= FOUND

```


*GitHub* : [695](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L695-L695)

```solidity
715:     emit BeneficiaryAltered(_depositId, deposit.beneficiary, _newBeneficiary); // <= FOUND

```


*GitHub* : [715](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L715-L715)

```solidity
734:     emit StakeWithdrawn(_depositId, _amount, deposit.balance); // <= FOUND

```


*GitHub* : [734](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L734-L734)

```solidity
747:     emit RewardClaimed(_beneficiary, _reward); // <= FOUND

```


*GitHub* : [747](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L747-L747)

```solidity
773:     emit AdminSet(admin, _newAdmin); // <= FOUND

```


*GitHub* : [773](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L773-L773)

```solidity
104: 
105:     emit AdminSet(address(0), _admin); // <= FOUND

```


*GitHub* : [105](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L105-L105)

```solidity
105:     emit PayoutAmountSet(0, _payoutAmount); // <= FOUND

```


*GitHub* : [105](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L105-L105)

```solidity
122:     emit PayoutAmountSet(payoutAmount, _newPayoutAmount); // <= FOUND

```


*GitHub* : [122](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L122-L122)

```solidity
196:     emit FeesClaimed(address(_pool), msg.sender, _recipient, _amount0, _amount1); // <= FOUND

```


*GitHub* : [196](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L196-L196)

### [G-16]<a name="g-16"></a> Use solady library where possible to save gas

The following OpenZeppelin imports have a Solady equivalent, as such they can be used to save GAS as Solady modules have been specifically designed to be as GAS efficient as possible

*There are 2 instance(s) of this issue:*

```solidity
7: import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol"; // <= FOUND

```


*GitHub* : [7](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L7-L7)

```solidity
8: import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol"; // <= FOUND

```


*GitHub* : [8](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L8-L8)

### [G-17]<a name="g-17"></a> Using private rather than public for constants and immutables, saves gas

Using private visibility for constants and immutables in Solidity instead of public can save gas. This is because private elements are not included in the contract's ABI, reducing the deployment and interaction costs. To achieve better efficiency, it is recommended to use private visibility when external access is not needed.

*There are 8 instance(s) of this issue:*

```solidity
102: bytes32 public constant STAKE_TYPEHASH = keccak256( // <= FOUND

```


*GitHub* : [102](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L102-L102)

```solidity
106: bytes32 public constant STAKE_MORE_TYPEHASH = // <= FOUND

```


*GitHub* : [106](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L106-L106)

```solidity
109: bytes32 public constant ALTER_DELEGATEE_TYPEHASH = keccak256( // <= FOUND

```


*GitHub* : [109](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L109-L109)

```solidity
113: bytes32 public constant ALTER_BENEFICIARY_TYPEHASH = keccak256( // <= FOUND

```


*GitHub* : [113](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L113-L113)

```solidity
117: bytes32 public constant WITHDRAW_TYPEHASH = // <= FOUND

```


*GitHub* : [117](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L117-L117)

```solidity
120: bytes32 public constant CLAIM_REWARD_TYPEHASH = // <= FOUND

```


*GitHub* : [120](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L120-L120)

```solidity
130: uint256 public constant REWARD_DURATION = 30 days; // <= FOUND

```


*GitHub* : [130](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L130-L130)

```solidity
134: uint256 public constant SCALE_FACTOR = 1e36; // <= FOUND

```


*GitHub* : [134](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L134-L134)

### [G-18]<a name="g-18"></a> Function names can be optimized

Function names in Solidity contracts can be optimized to save gas during both deployment and execution. Method IDs are the first four bytes of the keccak256 hash of the function signature, and having two leading zero bytes can save 128 gas each during deployment. Additionally, renaming functions to have lower method IDs can save 22 gas per call, per sorted position shifted. This optimization leverages the way EVM handles data storage, making the execution more efficient. While these savings might seem minor, they can add up in contracts with numerous calls, contributing to more economical and efficient code.

*There are 3 instance(s) of this issue:*

```solidity
31: contract UniStaker is INotifiableRewardReceiver, Multicall, EIP712, Nonces  // <= FOUND

```


*GitHub* : [31](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L31-L31)

```solidity
30: contract V3FactoryOwner  // <= FOUND

```


*GitHub* : [30](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L30-L30)

```solidity
20: contract DelegationSurrogate  // <= FOUND

```


*GitHub* : [20](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L20-L20)

### [G-19]<a name="g-19"></a> State variable can be updated more than once in a function

Updating a state variable multiple times within a function can lead to inefficiencies and unintended behaviors. Every state change in Ethereum consumes gas, increasing the transaction cost. Moreover, frequent state changes can introduce vulnerabilities if interim values can be externally observed or acted upon. To address this, one should consolidate updates to occur only once, at the end of the function. This minimizes gas usage and ensures consistent state. 

*There are 1 instance(s) of this issue:*

```solidity
570:   function notifyRewardAmount(uint256 _amount) external {
571:     if (!isRewardNotifier[msg.sender]) revert UniStaker__Unauthorized("not notifier", msg.sender);
572: 
575:     rewardPerTokenAccumulatedCheckpoint = rewardPerTokenAccumulated();
576: 
577:     if (block.timestamp >= rewardEndTime) {
578:       scaledRewardRate = (_amount * SCALE_FACTOR) / REWARD_DURATION; // <= FOUND
579:     } else {
580:       uint256 _remainingReward = scaledRewardRate * (rewardEndTime - block.timestamp);
581:       scaledRewardRate = (_remainingReward + _amount * SCALE_FACTOR) / REWARD_DURATION; // <= FOUND
582:     }
583: 
584:     rewardEndTime = block.timestamp + REWARD_DURATION;
585:     lastCheckpointTime = block.timestamp;
586: 
587:     if ((scaledRewardRate / SCALE_FACTOR) == 0) revert UniStaker__InvalidRewardRate();
588: 
594:     if (
595:       (scaledRewardRate * REWARD_DURATION) > (REWARD_TOKEN.balanceOf(address(this)) * SCALE_FACTOR)
596:     ) revert UniStaker__InsufficientRewardBalance();
597: 
598:     emit RewardNotified(_amount, msg.sender);
599:   }

```


*GitHub* : [570](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L570-L581)

### [G-20]<a name="g-20"></a> Use assembly to validate msg.sender

Utilizing assembly for validating `msg.sender` can potentially save gas as it allows for more direct and efficient access to Ethereum’s EVM opcodes, bypassing some of the overhead introduced by Solidity’s higher-level abstractions. However, this practice requires deep expertise in EVM, as incorrect implementation can introduce critical vulnerabilities. It is a trade-off between gas efficiency and code safety.

*There are 4 instance(s) of this issue:*

```solidity
344:     _revertIfNotDepositOwner(deposit, msg.sender); // <= FOUND

```


*GitHub* : [344](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L344-L344)

```solidity
571:     if (!isRewardNotifier[msg.sender]) revert UniStaker__Unauthorized("not notifier", msg.sender); // <= FOUND

```


*GitHub* : [571](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L571-L571)

```solidity
780:     if (msg.sender != admin) revert UniStaker__Unauthorized("not admin", msg.sender); // <= FOUND

```


*GitHub* : [780](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L780-L780)

```solidity
203:     if (msg.sender != admin) revert V3FactoryOwner__Unauthorized(); // <= FOUND

```


*GitHub* : [203](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L203-L203)

### [G-21]<a name="g-21"></a> Simple checks for zero uint can be done using assembly to save gas

Using assembly for simple zero checks on unsigned integers can save gas due to lower-level, optimized operations. 

**Resolution**: Implement inline assembly with Solidity's `assembly` block to perform zero checks. Ensure thorough testing and verification, as assembly lacks the safety checks of high-level Solidity, potentially introducing vulnerabilities if not used carefully.

*There are 5 instance(s) of this issue:*

```solidity
230:     if (totalStaked == 0) return rewardPerTokenAccumulatedCheckpoint; // <= FOUND

```


*GitHub* : [230](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L230-L230)

```solidity
587: 
588:     if ((scaledRewardRate / SCALE_FACTOR) == 0) revert UniStaker__InvalidRewardRate(); // <= FOUND

```


*GitHub* : [587](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L587-L588)

```solidity
745:     if (_reward == 0) return; // <= FOUND

```


*GitHub* : [745](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L745-L745)

```solidity
96:     if (_payoutAmount == 0) revert V3FactoryOwner__InvalidPayoutAmount(); // <= FOUND

```


*GitHub* : [96](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L96-L96)

```solidity
121:     if (_newPayoutAmount == 0) revert V3FactoryOwner__InvalidPayoutAmount(); // <= FOUND

```


*GitHub* : [121](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L121-L121)

### [G-22]<a name="g-22"></a> Use Unchecked for Divisions on Constant or Immutable Values

When performing divisions in Solidity, the operation costs gas and includes a check for division by zero. However, if you are dividing by a constant or an immutable value that is guaranteed to be non-zero, this check becomes unnecessary, consuming extra gas without adding safety.

**Resolution**: Utilize the `unchecked` block for divisions involving constant or immutable values that are assuredly non-zero. This bypasses the additional safety checks, optimizing gas usage. Ensure thorough testing and code reviews are conducted to verify the non-zero condition of the denominator, preventing any potential division by zero errors and maintaining contract safety.

*There are 4 instance(s) of this issue:*

```solidity
578:       scaledRewardRate = (_amount * SCALE_FACTOR) / REWARD_DURATION; // <= FOUND

```


*GitHub* : [578](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L578-L578)

```solidity
581:       scaledRewardRate = (_remainingReward + _amount * SCALE_FACTOR) / REWARD_DURATION; // <= FOUND

```


*GitHub* : [581](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L581-L581)

```solidity
242:     return unclaimedRewardCheckpoint[_beneficiary]
243:       + (
244:         earningPower[_beneficiary]
245:           * (rewardPerTokenAccumulated() - beneficiaryRewardPerTokenCheckpoint[_beneficiary])
246:       ) / SCALE_FACTOR; // <= FOUND

```


*GitHub* : [246](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L246-L246)

```solidity
587: 
588:     if ((scaledRewardRate / SCALE_FACTOR) == 0) revert UniStaker__InvalidRewardRate(); // <= FOUND

```


*GitHub* : [588](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L588-L588)

### [G-23]<a name="g-23"></a> Optimize Deployment Size by Fine-tuning IPFS Hash

Optimizing the deployment size of a smart contract is vital to minimize gas costs, and one way to achieve this is by fine-tuning the IPFS hash appended by the Solidity compiler as metadata. This metadata, consisting of 53 bytes, increases the gas required for contract deployment by approximately 10,600 gas due to bytecode costs, and additionally, up to 848 gas due to calldata costs, depending on the proportion of zero and non-zero bytes. Utilize the --no-cbor-metadata compiler flag to prevent the compiler from appending metadata. However, this approach has a drawback as it can complicate the contract verification process on block explorers like Etherscan, potentially reducing transparency.

*There are 3 instance(s) of this issue:*

```solidity
31: contract UniStaker is INotifiableRewardReceiver, Multicall, EIP712, Nonces  // <= FOUND

```


*GitHub* : [31](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L31-L31)

```solidity
30: contract V3FactoryOwner  // <= FOUND

```


*GitHub* : [30](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L30-L30)

```solidity
20: contract DelegationSurrogate  // <= FOUND

```


*GitHub* : [20](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L20-L20)

### [G-24]<a name="g-24"></a> Avoid Unnecessary Public Variables

Public state variables in Solidity automatically generate getter functions, increasing contract size and potentially leading to higher deployment and interaction costs. To optimize gas usage and contract efficiency, minimize the use of public variables unless external access is necessary. Instead, use internal or private visibility combined with explicit getter functions when required. This practice not only reduces contract size but also provides better control over data access and manipulation, enhancing security and readability. Prioritize lean, efficient contracts to ensure cost-effectiveness and better performance on the blockchain.

*There are 20 instance(s) of this issue:*

```solidity
102: bytes32 public constant STAKE_TYPEHASH = keccak256( // <= FOUND

```


*GitHub* : [102](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L102-L102)

```solidity
106: bytes32 public constant STAKE_MORE_TYPEHASH = // <= FOUND

```


*GitHub* : [106](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L106-L106)

```solidity
109: bytes32 public constant ALTER_DELEGATEE_TYPEHASH = keccak256( // <= FOUND

```


*GitHub* : [109](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L109-L109)

```solidity
113: bytes32 public constant ALTER_BENEFICIARY_TYPEHASH = keccak256( // <= FOUND

```


*GitHub* : [113](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L113-L113)

```solidity
117: bytes32 public constant WITHDRAW_TYPEHASH = // <= FOUND

```


*GitHub* : [117](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L117-L117)

```solidity
120: bytes32 public constant CLAIM_REWARD_TYPEHASH = // <= FOUND

```


*GitHub* : [120](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L120-L120)

```solidity
124: IERC20 public immutable REWARD_TOKEN; // <= FOUND

```


*GitHub* : [124](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L124-L124)

```solidity
127: IERC20Delegates public immutable STAKE_TOKEN; // <= FOUND

```


*GitHub* : [127](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L127-L127)

```solidity
130: uint256 public constant REWARD_DURATION = 30 days; // <= FOUND

```


*GitHub* : [130](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L130-L130)

```solidity
134: uint256 public constant SCALE_FACTOR = 1e36; // <= FOUND

```


*GitHub* : [134](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L134-L134)

```solidity
140: address public admin; // <= FOUND

```


*GitHub* : [140](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L140-L140)

```solidity
143: uint256 public totalStaked; // <= FOUND

```


*GitHub* : [143](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L143-L143)

```solidity
159: uint256 public rewardEndTime; // <= FOUND

```


*GitHub* : [159](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L159-L159)

```solidity
162: uint256 public lastCheckpointTime; // <= FOUND

```


*GitHub* : [162](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L162-L162)

```solidity
166: uint256 public scaledRewardRate; // <= FOUND

```


*GitHub* : [166](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L166-L166)

```solidity
169: uint256 public rewardPerTokenAccumulatedCheckpoint; // <= FOUND

```


*GitHub* : [169](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L169-L169)

```solidity
66: IUniswapV3FactoryOwnerActions public immutable FACTORY; // <= FOUND

```


*GitHub* : [66](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L66-L66)

```solidity
69: IERC20 public immutable PAYOUT_TOKEN; // <= FOUND

```


*GitHub* : [69](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L69-L69)

```solidity
72: uint256 public payoutAmount; // <= FOUND

```


*GitHub* : [72](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L72-L72)

```solidity
76: INotifiableRewardReceiver public immutable REWARD_RECEIVER; // <= FOUND

```


*GitHub* : [76](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L76-L76)

### [G-25]<a name="g-25"></a> Optimize Storage with Byte Truncation for Time Related State Variables

Storage optimization in Solidity contracts is vital for reducing gas costs, especially when storing time-related state variables. Using `uint32` for storing time values like timestamps is often sufficient, given it can represent dates up to the year 2106. By truncating larger default integer types to `uint32`, you significantly save on storage space and consequently on gas costs for deployment and state modifications. However, ensure that the truncation does not lead to overflow issues and that the variable's size is adequate for the application's expected lifespan and precision requirements. Adopting this optimization practice contributes to more efficient and cost-effective smart contract development.

*There are 3 instance(s) of this issue:*

```solidity
159: uint256 public rewardEndTime; // <= FOUND

```


*GitHub* : [159](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L159-L159)

```solidity
162: uint256 public lastCheckpointTime; // <= FOUND

```


*GitHub* : [162](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L162-L162)

```solidity
130: uint256 public constant REWARD_DURATION = 30 days; // <= FOUND

```


*GitHub* : [130](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L130-L130)

### [G-26]<a name="g-26"></a> Stack variable cost less than state variables while used in emiting event

When emitting events in Solidity, using stack variables (local variables within a function) instead of state variables can lead to significant gas savings. Stack variables reside in memory only for the duration of the function execution and are less costly to access compared to state variables, which are stored on the blockchain. When an event is emitted, accessing these stack variables requires less gas than fetching data from state variables, which involves reading from the contract's storage - a more expensive operation. Thus, for efficiency, prefer using local variables within functions for event emission, especially in functions that are called frequently.

*There are 2 instance(s) of this issue:*

```solidity
773:     emit AdminSet(admin, _newAdmin); // <= FOUND

```


*GitHub* : [773](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L773-L773)

```solidity
122:     emit PayoutAmountSet(payoutAmount, _newPayoutAmount); // <= FOUND

```


*GitHub* : [122](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L122-L122)

### [G-27]<a name="g-27"></a> Internal functions only used once can be inlined so save gas

If a internal function is only used once it doesn't make sense to modularise it unless the function which does call the function would be overly long and complex otherwise

*There are 1 instance(s) of this issue:*

```solidity
630:   function _useDepositId() internal returns (DepositIdentifier _depositId)  // <= FOUND

```


*GitHub* : [630](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L630-L630)

### [G-28]<a name="g-28"></a> Constructors can be marked as payable to save deployment gas



*There are 3 instance(s) of this issue:*

```solidity
190:   constructor(IERC20 _rewardToken, IERC20Delegates _stakeToken, address _admin)
191:     EIP712("UniStaker", "1")
192:   {
193:     REWARD_TOKEN = _rewardToken;
194:     STAKE_TOKEN = _stakeToken;
195:     _setAdmin(_admin);
196:   }

```


*GitHub* : [190](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L190-L190)

```solidity
88:   constructor(
89:     address _admin,
90:     IUniswapV3FactoryOwnerActions _factory,
91:     IERC20 _payoutToken,
92:     uint256 _payoutAmount,
93:     INotifiableRewardReceiver _rewardReceiver
94:   ) {
95:     if (_admin == address(0)) revert V3FactoryOwner__InvalidAddress();
96:     if (_payoutAmount == 0) revert V3FactoryOwner__InvalidPayoutAmount();
97: 
98:     admin = _admin;
99:     FACTORY = _factory;
100:     PAYOUT_TOKEN = _payoutToken;
101:     payoutAmount = _payoutAmount;
102:     REWARD_RECEIVER = _rewardReceiver;
103: 
104:     emit AdminSet(address(0), _admin);
105:     emit PayoutAmountSet(0, _payoutAmount);
106:   }

```


*GitHub* : [88](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L88-L88)

```solidity
25:   constructor(IERC20Delegates _token, address _delegatee) {
26:     _token.delegate(_delegatee);
27:     _token.approve(msg.sender, type(uint256).max);
28:   }

```


*GitHub* : [25](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L25-L25)

### [G-29]<a name="g-29"></a> Merge events to save gas

Consolidating multiple event emissions into a single event in Solidity can result in significant gas savings. Each event emission in Ethereum involves a gas cost, specifically for the topics logged with the event. By merging sequential events into a singular event, you can save on the Glogtopic cost, which is incurred for each topic of each event. This approach can save around 375 gas per additional topic. This strategy is particularly beneficial in functions where multiple related events are emitted in sequence. However, it's crucial to balance gas optimization with the clarity and utility of the event data for off-chain consumers.

*There are 1 instance(s) of this issue:*

```solidity
638:   function _stake(address _depositor, uint256 _amount, address _delegatee, address _beneficiary)
639:     internal
640:     returns (DepositIdentifier _depositId)
641:   {
642:     _revertIfAddressZero(_delegatee);
643:     _revertIfAddressZero(_beneficiary);
644: 
645:     _checkpointGlobalReward();
646:     _checkpointReward(_beneficiary);
647: 
648:     DelegationSurrogate _surrogate = _fetchOrDeploySurrogate(_delegatee);
649:     _depositId = _useDepositId();
650: 
651:     totalStaked += _amount;
652:     depositorTotalStaked[_depositor] += _amount;
653:     earningPower[_beneficiary] += _amount;
654:     deposits[_depositId] = Deposit({
655:       balance: _amount,
656:       owner: _depositor,
657:       delegatee: _delegatee,
658:       beneficiary: _beneficiary
659:     });
660:     _stakeTokenSafeTransferFrom(_depositor, address(_surrogate), _amount);
661:     emit StakeDeposited(_depositor, _depositId, _amount, _amount); // <= FOUND
662:     emit BeneficiaryAltered(_depositId, address(0), _beneficiary); // <= FOUND
663:     emit DelegateeAltered(_depositId, address(0), _delegatee); // <= FOUND
664:   }

```


*GitHub* : [638](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L638-L663)

### [G-30]<a name="g-30"></a> Use assembly scratch space to build calldata for external calls

Using Solidity's assembly scratch space for constructing calldata in external calls with one or two arguments can be a gas-efficient approach. This method leverages the designated memory area (the first 64 bytes of memory) for temporary data storage during assembly operations. By directly writing arguments into this scratch space, it eliminates the need for additional memory allocation typically required for calldata preparation. This technique can lead to notable gas savings, especially in high-frequency or gas-sensitive operations. However, it requires careful implementation to avoid data corruption and should be used with a thorough understanding of low-level EVM operations and memory handling. Proper testing and validation are crucial when employing such optimizations.

*There are 10 instance(s) of this issue:*

```solidity
571:     if (!isRewardNotifier[msg.sender]) revert UniStaker__Unauthorized("not notifier", msg.sender); // <= FOUND

```


*GitHub* : [571](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L571-L571)

```solidity
681:     _stakeTokenSafeTransferFrom(deposit.owner, address(_surrogate), _amount); // <= FOUND

```


*GitHub* : [681](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L681-L681)

```solidity
780:     if (msg.sender != admin) revert UniStaker__Unauthorized("not admin", msg.sender); // <= FOUND

```


*GitHub* : [780](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L780-L780)

```solidity
788:     if (owner != deposit.owner) revert UniStaker__Unauthorized("not owner", owner); // <= FOUND

```


*GitHub* : [788](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L788-L788)

```solidity
133:     FACTORY.enableFeeAmount(_fee, _tickSpacing); // <= FOUND

```


*GitHub* : [133](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L133-L133)

```solidity
148:     _pool.setFeeProtocol(_feeProtocol0, _feeProtocol1); // <= FOUND

```


*GitHub* : [148](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L148-L148)

```solidity
27:     _token.approve(msg.sender, type(uint256).max); // <= FOUND

```


*GitHub* : [27](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L27-L27)

```solidity
632:     nextDepositId = DepositIdentifier.wrap(DepositIdentifier.unwrap(_depositId) + 1); // <= FOUND

```


*GitHub* : [632](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L632-L632)

```solidity
188:     REWARD_RECEIVER.notifyRewardAmount(payoutAmount); // <= FOUND

```


*GitHub* : [188](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L188-L188)

```solidity
26:     _token.delegate(_delegatee); // <= FOUND

```


*GitHub* : [26](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L26-L26)

### [G-31]<a name="g-31"></a> Use assembly scratch space to build calldata for event emits

Utilizing Solidity's assembly scratch space to build calldata for emitting events with just one or two arguments can optimize gas usage. The scratch space, a designated area in the first 64 bytes of memory, is ideal for temporary storage during assembly-level operations. By directly writing the event arguments into this area, developers can bypass the standard memory allocation process required for event emission. This approach results in gas savings, particularly for contracts where events are frequently emitted. However, such low-level optimization requires a deep understanding of Ethereum Virtual Machine (EVM) mechanics and careful coding to prevent data mishandling. Rigorous testing is essential to ensure the integrity and correct functionality of the contract.

*There are 8 instance(s) of this issue:*

```solidity
213:     emit RewardNotifierSet(_rewardNotifier, _isEnabled); // <= FOUND

```


*GitHub* : [213](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L213-L213)

```solidity
598: 
599:     emit RewardNotified(_amount, msg.sender); // <= FOUND

```


*GitHub* : [598](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L598-L599)

```solidity
614:       emit SurrogateDeployed(_delegatee, address(_surrogate)); // <= FOUND

```


*GitHub* : [614](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L614-L614)

```solidity
747:     emit RewardClaimed(_beneficiary, _reward); // <= FOUND

```


*GitHub* : [747](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L747-L747)

```solidity
773:     emit AdminSet(admin, _newAdmin); // <= FOUND

```


*GitHub* : [773](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L773-L773)

```solidity
104: 
105:     emit AdminSet(address(0), _admin); // <= FOUND

```


*GitHub* : [104](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L104-L105)

```solidity
105:     emit PayoutAmountSet(0, _payoutAmount); // <= FOUND

```


*GitHub* : [105](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L105-L105)

```solidity
122:     emit PayoutAmountSet(payoutAmount, _newPayoutAmount); // <= FOUND

```


*GitHub* : [122](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L122-L122)

### [G-32]<a name="g-32"></a> Consider using solady's "FixedPointMathLib"

Using Solady's "FixedPointMathLib" for multiplication or division operations in Solidity can lead to significant gas savings. This library is designed to optimize fixed-point arithmetic operations, which are common in financial calculations involving tokens or currencies. By implementing more efficient algorithms and assembly optimizations, "FixedPointMathLib" minimizes the computational resources required for these operations. For contracts that frequently perform such calculations, integrating this library can reduce transaction costs, thereby enhancing overall performance and cost-effectiveness. However, developers must ensure compatibility with their existing codebase and thoroughly test for accuracy and expected behavior to avoid any unintended consequences.

*There are 5 instance(s) of this issue:*

```solidity
232: 
233:     return rewardPerTokenAccumulatedCheckpoint
234:       + (scaledRewardRate * (lastTimeRewardDistributed() - lastCheckpointTime)) / totalStaked; // <= FOUND

```


*GitHub* : [234](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L234-L234)

```solidity
242:     return unclaimedRewardCheckpoint[_beneficiary]
243:       + (
244:         earningPower[_beneficiary]
245:           * (rewardPerTokenAccumulated() - beneficiaryRewardPerTokenCheckpoint[_beneficiary])
246:       ) / SCALE_FACTOR; // <= FOUND

```


*GitHub* : [246](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L246-L246)

```solidity
578:       scaledRewardRate = (_amount * SCALE_FACTOR) / REWARD_DURATION; // <= FOUND

```


*GitHub* : [578](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L578-L578)

```solidity
581:       scaledRewardRate = (_remainingReward + _amount * SCALE_FACTOR) / REWARD_DURATION; // <= FOUND

```


*GitHub* : [581](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L581-L581)

```solidity
587: 
588:     if ((scaledRewardRate / SCALE_FACTOR) == 0) revert UniStaker__InvalidRewardRate(); // <= FOUND

```


*GitHub* : [588](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L588-L588)

### [G-33]<a name="g-33"></a> Same cast is done multiple times

Repeatedly casting the same variable to the same type within a function is redundant and can be optimized for better gas efficiency and code readability. Each unnecessary cast operation, while minor, adds to the gas cost and clutters the code. To optimize, the best practice is to perform the cast once and store the result in a temporary variable, which can then be used wherever needed in the function.

*There are 1 instance(s) of this issue:*

```solidity
605:   function _fetchOrDeploySurrogate(address _delegatee)
606:     internal
607:     returns (DelegationSurrogate _surrogate)
608:   {
609:     _surrogate = surrogates[_delegatee];
610: 
611:     if (address(_surrogate) == address(0)) { // <= FOUND 'address(_surrogate)'
612:       _surrogate = new DelegationSurrogate(STAKE_TOKEN, _delegatee);
613:       surrogates[_delegatee] = _surrogate;
614:       emit SurrogateDeployed(_delegatee, address(_surrogate)); // <= FOUND 'address(_surrogate)'
615:     }
616:   }

```


*GitHub* : [605](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L605-L614)

### [G-34]<a name="g-34"></a> Assigning to structs can be more efficient

Rather defining the struct in a single line, it is more efficient to declare an empty struct and then assign each struct element individually. This can net quite a large gas saving of 130 per instance.

*There are 1 instance(s) of this issue:*

```solidity
638:   function _stake(address _depositor, uint256 _amount, address _delegatee, address _beneficiary)
639:     internal
640:     returns (DepositIdentifier _depositId)
641:   {
642:     _revertIfAddressZero(_delegatee);
643:     _revertIfAddressZero(_beneficiary);
644: 
645:     _checkpointGlobalReward();
646:     _checkpointReward(_beneficiary);
647: 
648:     DelegationSurrogate _surrogate = _fetchOrDeploySurrogate(_delegatee);
649:     _depositId = _useDepositId();
650: 
651:     totalStaked += _amount;
652:     depositorTotalStaked[_depositor] += _amount;
653:     earningPower[_beneficiary] += _amount;
654:     deposits[_depositId] = Deposit({ // <= FOUND
655:       balance: _amount,
656:       owner: _depositor,
657:       delegatee: _delegatee,
658:       beneficiary: _beneficiary
659:     });
660:     _stakeTokenSafeTransferFrom(_depositor, address(_surrogate), _amount);
661:     emit StakeDeposited(_depositor, _depositId, _amount, _amount);
662:     emit BeneficiaryAltered(_depositId, address(0), _beneficiary);
663:     emit DelegateeAltered(_depositId, address(0), _delegatee);
664:   }

```


*GitHub* : [638](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L638-L654)

### [G-35]<a name="g-35"></a> Use uint256(1)/uint256(2) instead of true/false to save gas for changes

Using uint256 with values 1 and 0 instead of bool can save gas in Solidity contracts when changing state variables, as it avoids higher costs associated with switching from false to true. This technique reduces gas for "cold" storage writes to non-zero values. Implementing uint256 for binary states and employing getters to return boolean representations can optimize gas usage, particularly for contracts with frequent state toggling.

*There are 4 instance(s) of this issue:*

```solidity
65: 
67:   event RewardNotifierSet(address indexed account, bool isEnabled); // <= FOUND

```


*GitHub* : [67](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L67-L67)

```solidity
210: 
215:   function setRewardNotifier(address _rewardNotifier, bool _isEnabled) external { // <= FOUND

```


*GitHub* : [215](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L215-L215)

```solidity
807:     bool _isValid = SignatureChecker.isValidSignatureNow(_signer, _hash, _signature); // <= FOUND

```


*GitHub* : [807](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L807-L807)

```solidity
185: 
187:   mapping(address rewardNotifier => bool) public isRewardNotifier; // <= FOUND

```


*GitHub* : [187](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L187-L187)

### [G-36]<a name="g-36"></a> Enable IR-based code generation

Enabling Intermediate Representation (IR)-based code generation in Solidity, via the --via-ir compiler flag or setting {"viaIR": true} in the configuration, activates an advanced optimization phase. This approach allows the compiler to perform more sophisticated optimizations across multiple functions, potentially leading to significant gas savings. IR-based compilation can optimize contract bytecode more efficiently, making smart contracts cheaper to deploy and execute by reducing the gas required for transactions

*There are 3 instance(s) of this issue:*

```solidity
31: contract UniStaker is INotifiableRewardReceiver, Multicall, EIP712, Nonces { // <= FOUND
32:   type DepositIdentifier is uint256;
33: 
89:   bytes32 public constant STAKE_TYPEHASH = keccak256(
90:     "Stake(uint256 amount,address delegatee,address beneficiary,address depositor,uint256 nonce)"
91:   );
92:   
93:   bytes32 public constant STAKE_MORE_TYPEHASH =
94:     keccak256("StakeMore(uint256 depositId,uint256 amount,address depositor,uint256 nonce)");
95:   
96:   bytes32 public constant ALTER_DELEGATEE_TYPEHASH = keccak256(
97:     "AlterDelegatee(uint256 depositId,address newDelegatee,address depositor,uint256 nonce)"
98:   );
99:   
100:   bytes32 public constant ALTER_BENEFICIARY_TYPEHASH = keccak256(
101:     "AlterBeneficiary(uint256 depositId,address newBeneficiary,address depositor,uint256 nonce)"
102:   );
103:   
104:   bytes32 public constant WITHDRAW_TYPEHASH =
105:     keccak256("Withdraw(uint256 depositId,uint256 amount,address depositor,uint256 nonce)");
106:   
107:   bytes32 public constant CLAIM_REWARD_TYPEHASH =
108:     keccak256("ClaimReward(address beneficiary,uint256 nonce)");
109: 
111:   IERC20 public immutable REWARD_TOKEN;
112: 
114:   IERC20Delegates public immutable STAKE_TOKEN;
115: 
117:   uint256 public constant REWARD_DURATION = 30 days;
118: 
121:   uint256 public constant SCALE_FACTOR = 1e36;
122: 
124:   DepositIdentifier private nextDepositId;
125: 
127:   address public admin;
128: 
130:   uint256 public totalStaked;
131: 
133:   mapping(address depositor => uint256 amount) public depositorTotalStaked;
134: 
136:   mapping(address beneficiary => uint256 amount) public earningPower;
137: 
139:   mapping(DepositIdentifier depositId => Deposit deposit) public deposits;
140: 
143:   mapping(address delegatee => DelegationSurrogate surrogate) public surrogates;
144: 
146:   uint256 public rewardEndTime;
147: 
149:   uint256 public lastCheckpointTime;
150: 

```


*GitHub* : [31](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L31-L31)

```solidity
30: contract V3FactoryOwner { // <= FOUND
31:   using SafeERC20 for IERC20;
32: 
60:   IUniswapV3FactoryOwnerActions public immutable FACTORY;
61: 
63:   IERC20 public immutable PAYOUT_TOKEN;
64: 
66:   uint256 public payoutAmount;
67: 
70:   INotifiableRewardReceiver public immutable REWARD_RECEIVER;
71: 
74:   address public admin;
75: 
142: }

```


*GitHub* : [30](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L30-L30)

```solidity
20: contract DelegationSurrogate { // <= FOUND
21:   
26: }

```


*GitHub* : [20](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L20-L20)

### NonCritical Risk Issues

### [N-01]<a name="n-01"></a> Some if-statement can be converted to a ternary 

Improving code readability and compactness is an integral part of optimal programming practices. The use of ternary operators in place of if-else conditions is one such measure. Ternary operators allow us to write conditional statements in a more concise manner, thereby enhancing readability and simplicity. They follow the syntax `condition ? exprIfTrue : exprIfFalse`, which interprets as "if the condition is true, evaluate to `exprIfTrue`, else evaluate to `exprIfFalse`". By adopting this approach, we make our code more streamlined and intuitive, which could potentially aid in better understanding and maintenance of the codebase.

*There are 1 instance(s) of this issue:*

```solidity
577:     if (block.timestamp >= rewardEndTime) {
578:       scaledRewardRate = (_amount * SCALE_FACTOR) / REWARD_DURATION; // <= FOUND
579:     }

```


*GitHub* : [577](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L577-L578)

### [N-02]<a name="n-02"></a> It is standard for all external and public functions to be override from an interface 

This is to ensure the whole API is extracted in a interface

*There are 26 instance(s) of this issue:*

```solidity
201:   function setAdmin(address _newAdmin) external 

```


*GitHub* : [201](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L201-L201)

```solidity
210:   function setRewardNotifier(address _rewardNotifier, bool _isEnabled) external 

```


*GitHub* : [210](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L210-L210)

```solidity
256:   function stake(uint256 _amount, address _delegatee)
257:     external
258:     returns (DepositIdentifier _depositId)
259:   

```


*GitHub* : [256](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L256-L256)

```solidity
271:   function stake(uint256 _amount, address _delegatee, address _beneficiary)
272:     external
273:     returns (DepositIdentifier _depositId)
274:   

```


*GitHub* : [271](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L271-L271)

```solidity
292:   function permitAndStake(
293:     uint256 _amount,
294:     address _delegatee,
295:     address _beneficiary,
296:     uint256 _deadline,
297:     uint8 _v,
298:     bytes32 _r,
299:     bytes32 _s
300:   ) external returns (DepositIdentifier _depositId) 

```


*GitHub* : [292](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L292-L292)

```solidity
315:   function stakeOnBehalf(
316:     uint256 _amount,
317:     address _delegatee,
318:     address _beneficiary,
319:     address _depositor,
320:     bytes memory _signature
321:   ) external returns (DepositIdentifier _depositId) 

```


*GitHub* : [315](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L315-L315)

```solidity
342:   function stakeMore(DepositIdentifier _depositId, uint256 _amount) external 

```


*GitHub* : [342](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L342-L342)

```solidity
360:   function permitAndStakeMore(
361:     DepositIdentifier _depositId,
362:     uint256 _amount,
363:     uint256 _deadline,
364:     uint8 _v,
365:     bytes32 _r,
366:     bytes32 _s
367:   ) external 

```


*GitHub* : [360](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L360-L360)

```solidity
382:   function stakeMoreOnBehalf(
383:     DepositIdentifier _depositId,
384:     uint256 _amount,
385:     address _depositor,
386:     bytes memory _signature
387:   ) external 

```


*GitHub* : [382](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L382-L382)

```solidity
410:   function alterDelegatee(DepositIdentifier _depositId, address _newDelegatee) external 

```


*GitHub* : [410](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L410-L410)

```solidity
423:   function alterDelegateeOnBehalf(
424:     DepositIdentifier _depositId,
425:     address _newDelegatee,
426:     address _depositor,
427:     bytes memory _signature
428:   ) external 

```


*GitHub* : [423](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L423-L423)

```solidity
453:   function alterBeneficiary(DepositIdentifier _depositId, address _newBeneficiary) external 

```


*GitHub* : [453](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L453-L453)

```solidity
466:   function alterBeneficiaryOnBehalf(
467:     DepositIdentifier _depositId,
468:     address _newBeneficiary,
469:     address _depositor,
470:     bytes memory _signature
471:   ) external 

```


*GitHub* : [466](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L466-L466)

```solidity
499:   function withdraw(DepositIdentifier _depositId, uint256 _amount) external 

```


*GitHub* : [499](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L499-L499)

```solidity
512:   function withdrawOnBehalf(
513:     DepositIdentifier _depositId,
514:     uint256 _amount,
515:     address _depositor,
516:     bytes memory _signature
517:   ) external 

```


*GitHub* : [512](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L512-L512)

```solidity
536:   function claimReward() external 

```


*GitHub* : [536](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L536-L536)

```solidity
544:   function claimRewardOnBehalf(address _beneficiary, bytes memory _signature) external 

```


*GitHub* : [544](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L544-L544)

```solidity
570:   function notifyRewardAmount(uint256 _amount) external 

```


*GitHub* : [570](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L570-L570)

```solidity
201:   function setAdmin(address _newAdmin) external 

```


*GitHub* : [201](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L201-L201)

```solidity
119:   function setPayoutAmount(uint256 _newPayoutAmount) external 

```


*GitHub* : [119](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L119-L119)

```solidity
131:   function enableFeeAmount(uint24 _fee, int24 _tickSpacing) external 

```


*GitHub* : [131](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L131-L131)

```solidity
142:   function setFeeProtocol(
143:     IUniswapV3PoolOwnerActions _pool,
144:     uint8 _feeProtocol0,
145:     uint8 _feeProtocol1
146:   ) external 

```


*GitHub* : [142](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L142-L142)

```solidity
181:   function claimFees(
182:     IUniswapV3PoolOwnerActions _pool,
183:     address _recipient,
184:     uint128 _amount0Requested,
185:     uint128 _amount1Requested
186:   ) external returns (uint128, uint128) 

```


*GitHub* : [181](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L181-L181)

```solidity
220:   function lastTimeRewardDistributed() public view returns (uint256) 

```


*GitHub* : [220](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L220-L220)

```solidity
229:   function rewardPerTokenAccumulated() public view returns (uint256) 

```


*GitHub* : [229](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L229-L229)

```solidity
241:   function unclaimedReward(address _beneficiary) public view returns (uint256) 

```


*GitHub* : [241](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L241-L241)

### [N-03]<a name="n-03"></a> Overly complicated arithmetic 

To maintain readability in code, particularly in Solidity which can involve complex mathematical operations, it is often recommended to limit the number of arithmetic operations to a maximum of 2-3 per line. Too many operations in a single line can make the code difficult to read and understand, increase the likelihood of mistakes, and complicate the process of debugging and reviewing the code. Consider splitting such operations over more than one line, take special care when dealing with division however. Try to limit the number of arithmetic operations to a maximum of 3 per line.

*There are 1 instance(s) of this issue:*

```solidity
232: 
233:     return rewardPerTokenAccumulatedCheckpoint
234:       + (scaledRewardRate * (lastTimeRewardDistributed() - lastCheckpointTime)) / totalStaked; // <= FOUND

```


*GitHub* : [234](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L234-L234)

### [N-04]<a name="n-04"></a> Some tokens may revert when zero value transfers are made 

Reason: In Solidity, ERC20 token transfers of value 0 can sometimes lead to unexpected issues. This is particularly relevant when dealing with fractional token amounts that round to 0 when less than 1 of the smallest unit is transferred, leading to an effective transfer of nothing while still consuming gas. Furthermore, some ERC20 token implementations may revert on attempts to transfer a value of 0. However, note that this issue doesn't generally apply to wrapper native tokens like WETH.

Resolution: It's advisable to include a condition before any transfer operation to bypass the transaction if the transfer amount is 0. This saves unnecessary gas expenditure and prevents potential function reverts. For handling fractions, ensure token decimals are appropriately assigned and contemplate setting a minimum transfer threshold to avoid rounding down to 0. When dealing with wrapped tokens like WETH, special consideration should be given to their unique characteristics.

*There are 2 instance(s) of this issue:*

```solidity
623:   function _stakeTokenSafeTransferFrom(address _from, address _to, uint256 _value) internal { // <= FOUND
624:     SafeERC20.safeTransferFrom(IERC20(address(STAKE_TOKEN)), _from, _to, _value); // <= FOUND
625:   }

```


*GitHub* : [623](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L623-L624)

```solidity
181:   function claimFees(
182:     IUniswapV3PoolOwnerActions _pool,
183:     address _recipient,
184:     uint128 _amount0Requested,
185:     uint128 _amount1Requested
186:   ) external returns (uint128, uint128) {
187:     PAYOUT_TOKEN.safeTransferFrom(msg.sender, address(REWARD_RECEIVER), payoutAmount); // <= FOUND
188:     REWARD_RECEIVER.notifyRewardAmount(payoutAmount);
189:     (uint128 _amount0, uint128 _amount1) =
190:       _pool.collectProtocol(_recipient, _amount0Requested, _amount1Requested);
191: 
193:     if (_amount0 < _amount0Requested || _amount1 < _amount1Requested) {
194:       revert V3FactoryOwner__InsufficientFeesCollected();
195:     }
196:     emit FeesClaimed(address(_pool), msg.sender, _recipient, _amount0, _amount1);
197:     return (_amount0, _amount1);
198:   }

```


*GitHub* : [181](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L181-L187)

### [N-05]<a name="n-05"></a> Consider adding emergency-stop functionality 

In the event of a security breach or any unforeseen emergency, swiftly suspending all protocol operations becomes crucial. Having a mechanism in place to halt all functions collectively, instead of pausing individual contracts separately, substantially enhances the efficiency of mitigating ongoing attacks or vulnerabilities. This not only quickens the response time to potential threats but also reduces operational stress during these critical periods. Therefore, consider integrating a 'circuit breaker' or 'emergency stop' function into the smart contract system architecture. Such a feature would provide the capability to suspend the entire protocol instantly, which could prove invaluable during a time-sensitive crisis management situation.

*There are 3 instance(s) of this issue:*

```solidity
31: contract UniStaker is INotifiableRewardReceiver, Multicall, EIP712, Nonces 

```


*GitHub* : [31](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L31-L31)

```solidity
30: contract V3FactoryOwner 

```


*GitHub* : [30](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L30-L30)

```solidity
20: contract DelegationSurrogate 

```


*GitHub* : [20](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L20-L20)

### [N-06]<a name="n-06"></a> Return values not checked for approve()

The ERC-20 token standard does not dictate that the approve function must return a value. The function signature in the ERC-20 standard is function approve(address spender, uint tokens) public returns (bool success);. However, a well-implemented ERC-20 token contract will typically have approve return a boolean value indicating whether or not the operation was successful.

It's crucial to note that not all token contracts follow this practice. Some might not return a value, or they might return a value in a non-standard way. This inconsistency among token contracts is one reason why it's important to handle token interactions carefully in your smart contracts and to check the return value of approve when possible.

*There are 1 instance(s) of this issue:*

```solidity
27:     _token.approve(msg.sender, type(uint256).max); // <= FOUND

```


*GitHub* : [27](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L27-L27)

### [N-07]<a name="n-07"></a> Contracts are vulnerable to fee-on-transfer accounting-related issues

The below-listed functions use `transferFrom()` to move funds from the sender to the recipient but fail to verify if the received token amount matches the transferred amount. This could pose an issue with fee-on-transfer tokens, where the post-transfer balance might be less than anticipated, leading to balance inconsistencies. There might be subsequent checks for a second transfer, but an attacker might exploit leftover funds (such as those accidentally sent by another user) to gain unjustified credit. A practical solution is to gauge the balance prior and post-transfer, and consider the differential as the transferred amount, instead of the predefined amount.

*There are 2 instance(s) of this issue:*

```solidity
623:   function _stakeTokenSafeTransferFrom(address _from, address _to, uint256 _value) internal {
624:     SafeERC20.safeTransferFrom(IERC20(address(STAKE_TOKEN)), _from, _to, _value); // <= FOUND
625:   }

```


*GitHub* : [623](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L623-L624)

```solidity
181:   function claimFees(
182:     IUniswapV3PoolOwnerActions _pool,
183:     address _recipient,
184:     uint128 _amount0Requested,
185:     uint128 _amount1Requested
186:   ) external returns (uint128, uint128) {
187:     PAYOUT_TOKEN.safeTransferFrom(msg.sender, address(REWARD_RECEIVER), payoutAmount); // <= FOUND
188:     REWARD_RECEIVER.notifyRewardAmount(payoutAmount);
189:     (uint128 _amount0, uint128 _amount1) =
190:       _pool.collectProtocol(_recipient, _amount0Requested, _amount1Requested);
191: 
193:     if (_amount0 < _amount0Requested || _amount1 < _amount1Requested) {
194:       revert V3FactoryOwner__InsufficientFeesCollected();
195:     }
196:     emit FeesClaimed(address(_pool), msg.sender, _recipient, _amount0, _amount1);
197:     return (_amount0, _amount1);
198:   }

```


*GitHub* : [181](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L181-L187)

### [N-08]<a name="n-08"></a> Revert on Transfer to the Zero Address

Many ERC-20 and ERC-721 token contracts implement a safeguard that reverts transactions which attempt to transfer tokens to the zero address. This is because such transfers are often the result of programming errors. The OpenZeppelin library, a popular choice for implementing these standards, includes this safeguard. For token contract developers who want to avoid unintentional transfers to the zero address, it's good practice to include a condition that reverts the transaction if the recipient's address is the zero address. 

*There are 6 instance(s) of this issue:*

```solidity
623:   function _stakeTokenSafeTransferFrom(address _from, address _to, uint256 _value) internal { // <= FOUND
624:     SafeERC20.safeTransferFrom(IERC20(address(STAKE_TOKEN)), _from, _to, _value); // <= FOUND
625:   }

```


*GitHub* : [623](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L623-L624)

```solidity
638:   function _stake(address _depositor, uint256 _amount, address _delegatee, address _beneficiary)
639:     internal
640:     returns (DepositIdentifier _depositId)
641:   {
642:     _revertIfAddressZero(_delegatee);
643:     _revertIfAddressZero(_beneficiary);
644: 
645:     _checkpointGlobalReward();
646:     _checkpointReward(_beneficiary);
647: 
648:     DelegationSurrogate _surrogate = _fetchOrDeploySurrogate(_delegatee);
649:     _depositId = _useDepositId();
650: 
651:     totalStaked += _amount;
652:     depositorTotalStaked[_depositor] += _amount;
653:     earningPower[_beneficiary] += _amount;
654:     deposits[_depositId] = Deposit({
655:       balance: _amount,
656:       owner: _depositor,
657:       delegatee: _delegatee,
658:       beneficiary: _beneficiary
659:     });
660:     _stakeTokenSafeTransferFrom(_depositor, address(_surrogate), _amount); // <= FOUND
661:     emit StakeDeposited(_depositor, _depositId, _amount, _amount);
662:     emit BeneficiaryAltered(_depositId, address(0), _beneficiary);
663:     emit DelegateeAltered(_depositId, address(0), _delegatee);
664:   }

```


*GitHub* : [638](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L638-L660)

```solidity
669:   function _stakeMore(Deposit storage deposit, DepositIdentifier _depositId, uint256 _amount)
670:     internal
671:   {
672:     _checkpointGlobalReward();
673:     _checkpointReward(deposit.beneficiary);
674: 
675:     DelegationSurrogate _surrogate = surrogates[deposit.delegatee];
676: 
677:     totalStaked += _amount;
678:     depositorTotalStaked[deposit.owner] += _amount;
679:     earningPower[deposit.beneficiary] += _amount;
680:     deposit.balance += _amount;
681:     _stakeTokenSafeTransferFrom(deposit.owner, address(_surrogate), _amount); // <= FOUND
682:     emit StakeDeposited(deposit.owner, _depositId, _amount, deposit.balance);
683:   }

```


*GitHub* : [669](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L669-L681)

```solidity
688:   function _alterDelegatee(
689:     Deposit storage deposit,
690:     DepositIdentifier _depositId,
691:     address _newDelegatee
692:   ) internal {
693:     _revertIfAddressZero(_newDelegatee);
694:     DelegationSurrogate _oldSurrogate = surrogates[deposit.delegatee];
695:     emit DelegateeAltered(_depositId, deposit.delegatee, _newDelegatee);
696:     deposit.delegatee = _newDelegatee;
697:     DelegationSurrogate _newSurrogate = _fetchOrDeploySurrogate(_newDelegatee);
698:     _stakeTokenSafeTransferFrom(address(_oldSurrogate), address(_newSurrogate), deposit.balance); // <= FOUND
699:   }

```


*GitHub* : [688](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L688-L698)

```solidity
723:   function _withdraw(Deposit storage deposit, DepositIdentifier _depositId, uint256 _amount)
724:     internal
725:   {
726:     _checkpointGlobalReward();
727:     _checkpointReward(deposit.beneficiary);
728: 
729:     deposit.balance -= _amount; 
730:     totalStaked -= _amount;
731:     depositorTotalStaked[deposit.owner] -= _amount;
732:     earningPower[deposit.beneficiary] -= _amount;
733:     _stakeTokenSafeTransferFrom(address(surrogates[deposit.delegatee]), deposit.owner, _amount); // <= FOUND
734:     emit StakeWithdrawn(_depositId, _amount, deposit.balance);
735:   }

```


*GitHub* : [723](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L723-L733)

```solidity
740:   function _claimReward(address _beneficiary) internal {
741:     _checkpointGlobalReward();
742:     _checkpointReward(_beneficiary);
743: 
744:     uint256 _reward = unclaimedRewardCheckpoint[_beneficiary];
745:     if (_reward == 0) return;
746:     unclaimedRewardCheckpoint[_beneficiary] = 0;
747:     emit RewardClaimed(_beneficiary, _reward);
748: 
749:     SafeERC20.safeTransfer(REWARD_TOKEN, _beneficiary, _reward); // <= FOUND
750:   }

```


*GitHub* : [740](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L740-L749)

### [N-09]<a name="n-09"></a> Constructors missing validation

In Solidity, when values are being assigned in constructors to unsigned or integer variables, it's crucial to ensure the provided values adhere to the protocol's specific operational boundaries as laid out in the project specifications and documentation. If the constructors lack appropriate validation checks, there's a risk of setting state variables with values that could cause unexpected and potentially detrimental behavior within the contract's operations, violating the intended logic of the protocol. This can compromise the contract's security and impact the maintainability and reliability of the system. In order to avoid such issues, it is recommended to incorporate rigorous validation checks in constructors. These checks should align with the project's defined rules and constraints, making use of Solidity's built-in require function to enforce these conditions. If the validation checks fail, the require function will cause the transaction to revert, ensuring the integrity and adherence to the protocol's expected behavior.

*There are 2 instance(s) of this issue:*

```solidity
190:   constructor(IERC20 _rewardToken, IERC20Delegates _stakeToken, address _admin)
191:     EIP712("UniStaker", "1")
192:   {
193:     REWARD_TOKEN = _rewardToken; // <= FOUND
194:     STAKE_TOKEN = _stakeToken; // <= FOUND
195:     _setAdmin(_admin);
196:   }

```


*GitHub* : [190](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L190-L194)

```solidity
88:   constructor(
89:     address _admin,
90:     IUniswapV3FactoryOwnerActions _factory,
91:     IERC20 _payoutToken,
92:     uint256 _payoutAmount,
93:     INotifiableRewardReceiver _rewardReceiver
94:   ) {
95:     if (_admin == address(0)) revert V3FactoryOwner__InvalidAddress();
96:     if (_payoutAmount == 0) revert V3FactoryOwner__InvalidPayoutAmount();
97: 
98:     admin = _admin;
99:     FACTORY = _factory; // <= FOUND
100:     PAYOUT_TOKEN = _payoutToken; // <= FOUND
101:     payoutAmount = _payoutAmount;
102:     REWARD_RECEIVER = _rewardReceiver; // <= FOUND
103: 
104:     emit AdminSet(address(0), _admin);
105:     emit PayoutAmountSet(0, _payoutAmount);
106:   }

```


*GitHub* : [88](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L88-L102)

### [N-10]<a name="n-10"></a> Contracts use infinite approvals with no means to revoke

Contracts that implement infinite approvals without providing a mechanism to revoke them can pose security risks. Infinite approvals allow a spender to withdraw an unlimited amount of tokens, potentially leading to abuse or exploitation if the spender's address is compromised. To mitigate this risk, it's advisable to include functions that allow users to set and modify allowances. Implementing a method to revoke or adjust these infinite approvals enhances user control and security. This approach ensures users can manage their token allowances effectively, reducing the likelihood of unauthorized token transfers and increasing overall trust in the contract's safety.

*There are 1 instance(s) of this issue:*

```solidity
20: contract DelegationSurrogate { // <= FOUND
21:   
25:   constructor(IERC20Delegates _token, address _delegatee) {
26:     _token.delegate(_delegatee);
27:     _token.approve(msg.sender, type(uint256).max); // <= FOUND
28:   }
29: }

```


*GitHub* : [20](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L20-L27)

### [N-11]<a name="n-11"></a> Large transfers may not work with some ERC20 tokens

Large transfers with some ERC20 tokens may not work due to various reasons. Some tokens may have transfer restrictions built into the contract, such as daily transfer limits or maximum transfer sizes per transaction, to comply with regulatory requirements or to mitigate risks. Others may face issues with rounding errors when dealing with large quantities, especially if they have a high number of decimal places. Resolution involves carefully reading the token's contract to understand its constraints and behaviors and performing transfers accordingly. It may also be necessary to split large transfers into smaller increments if the token enforces specific transfer limits.

*There are 3 instance(s) of this issue:*

```solidity
623:   function _stakeTokenSafeTransferFrom(address _from, address _to, uint256 _value) internal { // <= FOUND
624:     SafeERC20.safeTransferFrom(IERC20(address(STAKE_TOKEN)), _from, _to, _value); // <= FOUND
625:   }

```


*GitHub* : [623](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L623-L624)

```solidity
740:   function _claimReward(address _beneficiary) internal { // <= FOUND
741:     _checkpointGlobalReward();
742:     _checkpointReward(_beneficiary);
743: 
744:     uint256 _reward = unclaimedRewardCheckpoint[_beneficiary];
745:     if (_reward == 0) return;
746:     unclaimedRewardCheckpoint[_beneficiary] = 0;
747:     emit RewardClaimed(_beneficiary, _reward);
748: 
749:     SafeERC20.safeTransfer(REWARD_TOKEN, _beneficiary, _reward);
750:   }

```


*GitHub* : [740](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L740-L740)

```solidity
181:   function claimFees(
182:     IUniswapV3PoolOwnerActions _pool,
183:     address _recipient,
184:     uint128 _amount0Requested,
185:     uint128 _amount1Requested
186:   ) external returns (uint128, uint128) {
187:     PAYOUT_TOKEN.safeTransferFrom(msg.sender, address(REWARD_RECEIVER), payoutAmount); // <= FOUND
188:     REWARD_RECEIVER.notifyRewardAmount(payoutAmount);
189:     (uint128 _amount0, uint128 _amount1) =
190:       _pool.collectProtocol(_recipient, _amount0Requested, _amount1Requested);
191: 
193:     if (_amount0 < _amount0Requested || _amount1 < _amount1Requested) {
194:       revert V3FactoryOwner__InsufficientFeesCollected();
195:     }
196:     emit FeesClaimed(address(_pool), msg.sender, _recipient, _amount0, _amount1);
197:     return (_amount0, _amount1);
198:   }

```


*GitHub* : [181](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L181-L187)

### [N-12]<a name="n-12"></a> NatSpec: @notice tags missing from contract/abstract/library/interface/function/modifier/constructor/receive/fallback



*There are 3 instance(s) of this issue:*

```solidity
190:   constructor(IERC20 _rewardToken, IERC20Delegates _stakeToken, address _admin)
191:     EIP712("UniStaker", "1")
192:   

```


*GitHub* : [190](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L190-L190)

```solidity
88:   constructor(
89:     address _admin,
90:     IUniswapV3FactoryOwnerActions _factory,
91:     IERC20 _payoutToken,
92:     uint256 _payoutAmount,
93:     INotifiableRewardReceiver _rewardReceiver
94:   ) 

```


*GitHub* : [88](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L88-L88)

```solidity
25:   constructor(IERC20Delegates _token, address _delegatee) 

```


*GitHub* : [25](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L25-L25)

### [N-13]<a name="n-13"></a> Natspec @author is missing from contract/interface/library



*There are 3 instance(s) of this issue:*

```solidity
4: /// @notice A subset of the ERC20Votes-style governance token to which UNI conforms.
5: /// Methods related to standard ERC20 functionality and to delegation are included.
6: /// These methods are needed in the context of this system. Methods related to check pointing,
7: /// past voting weights, and other functionality are omitted.
8: interface IERC20Delegates {
9:   // ERC20 related methods
10:   function allowance(address account, address spender) external view returns (uint256);
11:   function approve(address spender, uint256 rawAmount) external returns (bool);
12:   function balanceOf(address account) external view returns (uint256);
13:   function decimals() external view returns (uint8);
14:   function symbol() external view returns (string memory);
15:   function totalSupply() external view returns (uint256);
16:   function transfer(address dst, uint256 rawAmount) external returns (bool);
17:   function transferFrom(address src, address dst, uint256 rawAmount) external returns (bool);
18:   function permit(
19:     address owner,
20:     address spender,
21:     uint256 rawAmount,
22:     uint256 deadline,
23:     uint8 v,
24:     bytes32 r,
25:     bytes32 s
26:   ) external;
27: 
28:   // ERC20Votes delegation methods
29:   function delegate(address delegatee) external;
30:   function delegates(address) external view returns (address);
31: }

```


*GitHub* : [4](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IERC20Delegates.sol#L4-L4)

```solidity
4: /// @title The interface for the Uniswap V3 Factory
5: /// @notice The Uniswap V3 Factory facilitates creation of Uniswap V3 pools and control over the
6: /// protocol fees
7: /// @dev Stripped down and renamed from:
8: /// https://github.com/Uniswap/v3-core/blob/d8b1c635c275d2a9450bd6a78f3fa2484fef73eb/contracts/interfaces/IUniswapV3Factory.sol
9: interface IUniswapV3FactoryOwnerActions {
10:   /// @notice Returns the current owner of the factory
11:   /// @dev Can be changed by the current owner via setOwner
12:   /// @return The address of the factory owner
13:   function owner() external view returns (address);
14: 
15:   /// @notice Updates the owner of the factory
16:   /// @dev Must be called by the current owner
17:   /// @param _owner The new owner of the factory
18:   function setOwner(address _owner) external;
19: 
20:   /// @notice Enables a fee amount with the given tickSpacing
21:   /// @dev Fee amounts may never be removed once enabled
22:   /// @param fee The fee amount to enable, denominated in hundredths of a bip (i.e. 1e-6)
23:   /// @param tickSpacing The spacing between ticks to be enforced for all pools created with the
24:   /// given fee amount
25:   function enableFeeAmount(uint24 fee, int24 tickSpacing) external;
26: 
27:   /// @notice Returns the tick spacing for a given fee amount, if enabled, or 0 if not enabled
28:   /// @dev A fee amount can never be removed, so this value should be hard coded or cached in the
29:   /// calling context
30:   /// @param fee The enabled fee, denominated in hundredths of a bip. Returns 0 in case of unenabled
31:   /// fee
32:   /// @return The tick spacing
33:   function feeAmountTickSpacing(uint24 fee) external view returns (int24);
34: }

```


*GitHub* : [4](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L4-L4)

```solidity
4: /// @title Permissioned pool actions
5: /// @notice Contains pool methods that may only be called by the factory owner
6: /// @dev Vendored from
7: /// https://github.com/Uniswap/v3-core/blob/d8b1c635c275d2a9450bd6a78f3fa2484fef73eb/contracts/interfaces/pool/IUniswapV3PoolOwnerActions.sol
8: interface IUniswapV3PoolOwnerActions {
9:   /// @notice Set the denominator of the protocol's % share of the fees
10:   /// @param feeProtocol0 new protocol fee for token0 of the pool
11:   /// @param feeProtocol1 new protocol fee for token1 of the pool
12:   function setFeeProtocol(uint8 feeProtocol0, uint8 feeProtocol1) external;
13: 
14:   /// @notice Collect the protocol fee accrued to the pool
15:   /// @param recipient The address to which collected protocol fees should be sent
16:   /// @param amount0Requested The maximum amount of token0 to send, can be 0 to collect fees in only
17:   /// token1
18:   /// @param amount1Requested The maximum amount of token1 to send, can be 0 to collect fees in only
19:   /// token0
20:   /// @return amount0 The protocol fee collected in token0
21:   /// @return amount1 The protocol fee collected in token1
22:   function collectProtocol(address recipient, uint128 amount0Requested, uint128 amount1Requested)
23:     external
24:     returns (uint128 amount0, uint128 amount1);
25: }

```


*GitHub* : [4](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3PoolOwnerActions.sol#L4-L4)

### [N-14]<a name="n-14"></a> Natspec @title is missing from contract/interface/library



*There are 1 instance(s) of this issue:*

```solidity
8: interface IERC20Delegates 

```


*GitHub* : [8](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IERC20Delegates.sol#L8-L8)

### [N-15]<a name="n-15"></a> NatSpec: @dev tags missing from contract/abstract/library/interface/function/modifier/constructor/receive/fallback



*There are 25 instance(s) of this issue:*

```solidity
31: contract UniStaker is INotifiableRewardReceiver, Multicall, EIP712, Nonces 

```


*GitHub* : [31](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L31-L31)

```solidity
30: contract V3FactoryOwner 

```


*GitHub* : [30](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L30-L30)

```solidity
20: contract DelegationSurrogate 

```


*GitHub* : [20](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L20-L20)

```solidity
8: interface IERC20Delegates 

```


*GitHub* : [8](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IERC20Delegates.sol#L8-L8)

```solidity
10: interface INotifiableRewardReceiver 

```


*GitHub* : [10](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/INotifiableRewardReceiver.sol#L10-L10)

```solidity
220:   function lastTimeRewardDistributed() public view returns (uint256) 

```


*GitHub* : [220](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L220-L220)

```solidity
229:   function rewardPerTokenAccumulated() public view returns (uint256) 

```


*GitHub* : [229](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L229-L229)

```solidity
241:   function unclaimedReward(address _beneficiary) public view returns (uint256) 

```


*GitHub* : [241](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L241-L241)

```solidity
382:   function stakeMoreOnBehalf(
383:     DepositIdentifier _depositId,
384:     uint256 _amount,
385:     address _depositor,
386:     bytes memory _signature
387:   ) external 

```


*GitHub* : [382](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L382-L382)

```solidity
536:   function claimReward() external 

```


*GitHub* : [536](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L536-L536)

```solidity
544:   function claimRewardOnBehalf(address _beneficiary, bytes memory _signature) external 

```


*GitHub* : [544](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L544-L544)

```solidity
605:   function _fetchOrDeploySurrogate(address _delegatee)
606:     internal
607:     returns (DelegationSurrogate _surrogate)
608:   

```


*GitHub* : [605](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L605-L605)

```solidity
623:   function _stakeTokenSafeTransferFrom(address _from, address _to, uint256 _value) internal 

```


*GitHub* : [623](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L623-L623)

```solidity
630:   function _useDepositId() internal returns (DepositIdentifier _depositId) 

```


*GitHub* : [630](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L630-L630)

```solidity
753:   function _checkpointGlobalReward() internal 

```


*GitHub* : [753](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L753-L753)

```solidity
771:   function _setAdmin(address _newAdmin) internal 

```


*GitHub* : [771](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L771-L771)

```solidity
779:   function _revertIfNotAdmin() internal view 

```


*GitHub* : [779](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L779-L779)

```solidity
787:   function _revertIfNotDepositOwner(Deposit storage deposit, address owner) internal view 

```


*GitHub* : [787](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L787-L787)

```solidity
794:   function _revertIfAddressZero(address _account) internal pure 

```


*GitHub* : [794](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L794-L794)

```solidity
803:   function _revertIfSignatureIsNotValidNow(address _signer, bytes32 _hash, bytes memory _signature)
804:     internal
805:     view
806:   

```


*GitHub* : [803](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L803-L803)

```solidity
201:   function setAdmin(address _newAdmin) external 

```


*GitHub* : [201](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L201-L201)

```solidity
119:   function setPayoutAmount(uint256 _newPayoutAmount) external 

```


*GitHub* : [119](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L119-L119)

```solidity
190:   constructor(IERC20 _rewardToken, IERC20Delegates _stakeToken, address _admin)
191:     EIP712("UniStaker", "1")
192:   

```


*GitHub* : [190](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L190-L190)

```solidity
88:   constructor(
89:     address _admin,
90:     IUniswapV3FactoryOwnerActions _factory,
91:     IERC20 _payoutToken,
92:     uint256 _payoutAmount,
93:     INotifiableRewardReceiver _rewardReceiver
94:   ) 

```


*GitHub* : [88](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L88-L88)

```solidity
25:   constructor(IERC20Delegates _token, address _delegatee) 

```


*GitHub* : [25](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L25-L25)

### [N-16]<a name="n-16"></a> NatSpec: @param tags missing from function/modifier/constructor



*There are 7 instance(s) of this issue:*

```solidity
241:   function unclaimedReward(address _beneficiary) public view returns (uint256) 

```


*GitHub* : [241](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L241-L241)

```solidity
638:   function _stake(address _depositor, uint256 _amount, address _delegatee, address _beneficiary)
639:     internal
640:     returns (DepositIdentifier _depositId)
641:   

```


*GitHub* : [638](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L638-L638)

```solidity
669:   function _stakeMore(Deposit storage deposit, DepositIdentifier _depositId, uint256 _amount)
670:     internal
671:   

```


*GitHub* : [669](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L669-L669)

```solidity
688:   function _alterDelegatee(
689:     Deposit storage deposit,
690:     DepositIdentifier _depositId,
691:     address _newDelegatee
692:   ) internal 

```


*GitHub* : [688](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L688-L688)

```solidity
704:   function _alterBeneficiary(
705:     Deposit storage deposit,
706:     DepositIdentifier _depositId,
707:     address _newBeneficiary
708:   ) internal 

```


*GitHub* : [704](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L704-L704)

```solidity
723:   function _withdraw(Deposit storage deposit, DepositIdentifier _depositId, uint256 _amount)
724:     internal
725:   

```


*GitHub* : [723](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L723-L723)

```solidity
740:   function _claimReward(address _beneficiary) internal 

```


*GitHub* : [740](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L740-L740)

### [N-17]<a name="n-17"></a> NatSpec: @return tags missing from function/modifier/constructor



*There are 1 instance(s) of this issue:*

```solidity
638:   function _stake(address _depositor, uint256 _amount, address _delegatee, address _beneficiary)
639:     internal
640:     returns (DepositIdentifier _depositId)
641:   

```


*GitHub* : [638](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L638-L638)

### [N-18]<a name="n-18"></a> Floating pragma should be avoided



*There are 1 instance(s) of this issue:*

```solidity
2: pragma solidity ^0.8.23; // <= FOUND

```


*GitHub* : [2](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L2-L2)

### [N-19]<a name="n-19"></a> Events regarding state variable changes should emit the previous state variable value

Modify such events to contain the previous value of the state variable as demonstrated in the example below

*There are 1 instance(s) of this issue:*

```solidity
65: event RewardNotifierSet(address indexed account, bool isEnabled);

```


*GitHub* : [65](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L65-L65)

### [N-20]<a name="n-20"></a> In functions which accept an address as a parameter, there should be a zero address check to prevent bugs

In smart contract development, especially with Solidity, it's crucial to validate inputs to functions. When a function accepts an Ethereum address as a parameter, implementing a zero address check (i.e., ensuring the address is not `0x0`) is a best practice to prevent potential bugs and vulnerabilities. The zero address (`0x0`) is a default value and generally indicates an uninitialized or invalid state. Passing the zero address to certain functions can lead to unintended behaviors, like funds getting locked permanently or transactions failing silently. By checking for and rejecting the zero address, developers can ensure that the function operates as intended and interacts only with valid Ethereum addresses. This check enhances the contract's robustness and security.

*There are 24 instance(s) of this issue:*

```solidity
201:   function setAdmin(address _newAdmin) external 

```


*GitHub* : [201](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L201-L201)

```solidity
210:   function setRewardNotifier(address _rewardNotifier, bool _isEnabled) external 

```


*GitHub* : [210](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L210-L210)

```solidity
241:   function unclaimedReward(address _beneficiary) public view returns (uint256) 

```


*GitHub* : [241](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L241-L241)

```solidity
256:   function stake(uint256 _amount, address _delegatee)
257:     external
258:     returns (DepositIdentifier _depositId)
259:   

```


*GitHub* : [256](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L256-L256)

```solidity
271:   function stake(uint256 _amount, address _delegatee, address _beneficiary)
272:     external
273:     returns (DepositIdentifier _depositId)
274:   

```


*GitHub* : [271](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L271-L271)

```solidity
292:   function permitAndStake(
293:     uint256 _amount,
294:     address _delegatee,
295:     address _beneficiary,
296:     uint256 _deadline,
297:     uint8 _v,
298:     bytes32 _r,
299:     bytes32 _s
300:   ) external returns (DepositIdentifier _depositId) 

```


*GitHub* : [292](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L292-L292)

```solidity
315:   function stakeOnBehalf(
316:     uint256 _amount,
317:     address _delegatee,
318:     address _beneficiary,
319:     address _depositor,
320:     bytes memory _signature
321:   ) external returns (DepositIdentifier _depositId) 

```


*GitHub* : [315](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L315-L315)

```solidity
382:   function stakeMoreOnBehalf(
383:     DepositIdentifier _depositId,
384:     uint256 _amount,
385:     address _depositor,
386:     bytes memory _signature
387:   ) external 

```


*GitHub* : [382](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L382-L382)

```solidity
410:   function alterDelegatee(DepositIdentifier _depositId, address _newDelegatee) external 

```


*GitHub* : [410](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L410-L410)

```solidity
423:   function alterDelegateeOnBehalf(
424:     DepositIdentifier _depositId,
425:     address _newDelegatee,
426:     address _depositor,
427:     bytes memory _signature
428:   ) external 

```


*GitHub* : [423](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L423-L423)

```solidity
453:   function alterBeneficiary(DepositIdentifier _depositId, address _newBeneficiary) external 

```


*GitHub* : [453](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L453-L453)

```solidity
466:   function alterBeneficiaryOnBehalf(
467:     DepositIdentifier _depositId,
468:     address _newBeneficiary,
469:     address _depositor,
470:     bytes memory _signature
471:   ) external 

```


*GitHub* : [466](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L466-L466)

```solidity
512:   function withdrawOnBehalf(
513:     DepositIdentifier _depositId,
514:     uint256 _amount,
515:     address _depositor,
516:     bytes memory _signature
517:   ) external 

```


*GitHub* : [512](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L512-L512)

```solidity
544:   function claimRewardOnBehalf(address _beneficiary, bytes memory _signature) external 

```


*GitHub* : [544](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L544-L544)

```solidity
623:   function _stakeTokenSafeTransferFrom(address _from, address _to, uint256 _value) internal 

```


*GitHub* : [623](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L623-L623)

```solidity
638:   function _stake(address _depositor, uint256 _amount, address _delegatee, address _beneficiary)
639:     internal
640:     returns (DepositIdentifier _depositId)
641:   

```


*GitHub* : [638](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L638-L638)

```solidity
688:   function _alterDelegatee(
689:     Deposit storage deposit,
690:     DepositIdentifier _depositId,
691:     address _newDelegatee
692:   ) internal 

```


*GitHub* : [688](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L688-L688)

```solidity
704:   function _alterBeneficiary(
705:     Deposit storage deposit,
706:     DepositIdentifier _depositId,
707:     address _newBeneficiary
708:   ) internal 

```


*GitHub* : [704](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L704-L704)

```solidity
740:   function _claimReward(address _beneficiary) internal 

```


*GitHub* : [740](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L740-L740)

```solidity
764:   function _checkpointReward(address _beneficiary) internal 

```


*GitHub* : [764](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L764-L764)

```solidity
771:   function _setAdmin(address _newAdmin) internal 

```


*GitHub* : [771](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L771-L771)

```solidity
787:   function _revertIfNotDepositOwner(Deposit storage deposit, address owner) internal view 

```


*GitHub* : [787](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L787-L787)

```solidity
803:   function _revertIfSignatureIsNotValidNow(address _signer, bytes32 _hash, bytes memory _signature)
804:     internal
805:     view
806:   

```


*GitHub* : [803](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L803-L803)

```solidity
181:   function claimFees(
182:     IUniswapV3PoolOwnerActions _pool,
183:     address _recipient,
184:     uint128 _amount0Requested,
185:     uint128 _amount1Requested
186:   ) external returns (uint128, uint128) 

```


*GitHub* : [181](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L181-L181)

### [N-21]<a name="n-21"></a> Revert statements within external and public functions can be used to perform DOS attacks

In Solidity, 'revert' statements are used to undo changes and throw an exception when certain conditions are not met. However, in public and external functions, improper use of `revert` can be exploited for Denial of Service (DoS) attacks. An attacker can intentionally trigger these 'revert' conditions, causing legitimate transactions to consistently fail. For example, if a function relies on specific conditions from user input or contract state, an attacker could manipulate these to continually force reverts, blocking the function's execution. Therefore, it's crucial to design contract logic to handle exceptions properly and avoid scenarios where `revert` can be predictably triggered by malicious actors. This includes careful input validation and considering alternative design patterns that are less susceptible to such abuses.

*There are 4 instance(s) of this issue:*

```solidity
570:   function notifyRewardAmount(uint256 _amount) external {
571:     if (!isRewardNotifier[msg.sender]) revert UniStaker__Unauthorized("not notifier", msg.sender); // <= FOUND
572: 
575:     rewardPerTokenAccumulatedCheckpoint = rewardPerTokenAccumulated();
576: 
577:     if (block.timestamp >= rewardEndTime) {
578:       scaledRewardRate = (_amount * SCALE_FACTOR) / REWARD_DURATION;
579:     } else {
580:       uint256 _remainingReward = scaledRewardRate * (rewardEndTime - block.timestamp);
581:       scaledRewardRate = (_remainingReward + _amount * SCALE_FACTOR) / REWARD_DURATION;
582:     }
583: 
584:     rewardEndTime = block.timestamp + REWARD_DURATION;
585:     lastCheckpointTime = block.timestamp;
586: 
587:     if ((scaledRewardRate / SCALE_FACTOR) == 0) revert UniStaker__InvalidRewardRate(); // <= FOUND
588: 
594:     if (
595:       (scaledRewardRate * REWARD_DURATION) > (REWARD_TOKEN.balanceOf(address(this)) * SCALE_FACTOR)
596:     ) revert UniStaker__InsufficientRewardBalance(); // <= FOUND
597: 
598:     emit RewardNotified(_amount, msg.sender);
599:   }

```


*GitHub* : [571](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L571-L596)

```solidity
110:   function setAdmin(address _newAdmin) external {
111:     _revertIfNotAdmin();
112:     if (_newAdmin == address(0)) revert V3FactoryOwner__InvalidAddress(); // <= FOUND
113:     emit AdminSet(admin, _newAdmin);
114:     admin = _newAdmin;
115:   }

```


*GitHub* : [112](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L112-L112)

```solidity
119:   function setPayoutAmount(uint256 _newPayoutAmount) external {
120:     _revertIfNotAdmin();
121:     if (_newPayoutAmount == 0) revert V3FactoryOwner__InvalidPayoutAmount(); // <= FOUND
122:     emit PayoutAmountSet(payoutAmount, _newPayoutAmount);
123:     payoutAmount = _newPayoutAmount;
124:   }

```


*GitHub* : [121](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L121-L121)

```solidity
181:   function claimFees(
182:     IUniswapV3PoolOwnerActions _pool,
183:     address _recipient,
184:     uint128 _amount0Requested,
185:     uint128 _amount1Requested
186:   ) external returns (uint128, uint128) {
187:     PAYOUT_TOKEN.safeTransferFrom(msg.sender, address(REWARD_RECEIVER), payoutAmount);
188:     REWARD_RECEIVER.notifyRewardAmount(payoutAmount);
189:     (uint128 _amount0, uint128 _amount1) =
190:       _pool.collectProtocol(_recipient, _amount0Requested, _amount1Requested);
191: 
193:     if (_amount0 < _amount0Requested || _amount1 < _amount1Requested) {
194:       revert V3FactoryOwner__InsufficientFeesCollected(); // <= FOUND
195:     }
196:     emit FeesClaimed(address(_pool), msg.sender, _recipient, _amount0, _amount1);
197:     return (_amount0, _amount1);
198:   }

```


*GitHub* : [194](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L194-L194)

### [N-22]<a name="n-22"></a> Private and internal state variables should have a preceding _ in their name unless they are constants

Add a preceding underscore to the state variable name, take care to refactor where there variables are read/wrote

*There are 6 instance(s) of this issue:*

```solidity
137: DepositIdentifier private nextDepositId; // <= FOUND

```


*GitHub* : [137](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L137-L137)

```solidity
32: type DepositIdentifier is uint256;

```


*GitHub* : [32](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L32-L32)

```solidity
13: );

```


*GitHub* : [13](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L13-L13)

```solidity
107: keccak256("StakeMore(uint256 depositId,uint256 amount,address depositor,uint256 nonce)");

```


*GitHub* : [107](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L107-L107)

```solidity
118: keccak256("Withdraw(uint256 depositId,uint256 amount,address depositor,uint256 nonce)");

```


*GitHub* : [118](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L118-L118)

```solidity
121: keccak256("ClaimReward(address beneficiary,uint256 nonce)");

```


*GitHub* : [121](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L121-L121)

### [N-23]<a name="n-23"></a> Contract lines should not be longer than 120 characters for readability

Consider spreading these lines over multiple lines to aid in readability and the support of VIM users everywhere.

*There are 2 instance(s) of this issue:*

```solidity
8: /// https://github.com/Uniswap/v3-core/blob/d8b1c635c275d2a9450bd6a78f3fa2484fef73eb/contracts/interfaces/IUniswapV3Factory.sol // <= FOUND

```


*GitHub* : [8](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L8-L8)

```solidity
7: /// https://github.com/Uniswap/v3-core/blob/d8b1c635c275d2a9450bd6a78f3fa2484fef73eb/contracts/interfaces/pool/IUniswapV3PoolOwnerActions.sol // <= FOUND

```


*GitHub* : [7](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3PoolOwnerActions.sol#L7-L7)

### [N-24]<a name="n-24"></a> Not all event definitions are utilizing indexed variables.

Try to index as much as three variables in event declarations as this is more gas efficient when done on value type variables (uint, address etc) however not for bytes and string variables 

*There are 6 instance(s) of this issue:*

```solidity
36: event StakeDeposited( // <= FOUND
37:     address owner, DepositIdentifier indexed depositId, uint256 amount, uint256 depositBalance
38:   );

```


*GitHub* : [36](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L36-L36)

```solidity
41: event StakeWithdrawn(DepositIdentifier indexed depositId, uint256 amount, uint256 depositBalance); // <= FOUND

```


*GitHub* : [41](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L41-L41)

```solidity
44: event DelegateeAltered( // <= FOUND
45:     DepositIdentifier indexed depositId, address oldDelegatee, address newDelegatee
46:   );

```


*GitHub* : [44](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L44-L44)

```solidity
56: event RewardClaimed(address indexed beneficiary, uint256 amount); // <= FOUND

```


*GitHub* : [56](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L56-L56)

```solidity
59: event RewardNotified(uint256 amount, address notifier); // <= FOUND

```


*GitHub* : [59](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L59-L59)

```solidity
65: event RewardNotifierSet(address indexed account, bool isEnabled); // <= FOUND

```


*GitHub* : [65](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L65-L65)

### [N-25]<a name="n-25"></a> Dependence on external protocols

External protocols should be monitored as such dependencies may introduce vulnerabilities if a vulnerability is found /introduced in the external protocol

*There are 2 instance(s) of this issue:*

```solidity
4: import {IUniswapV3PoolOwnerActions} from "src/interfaces/IUniswapV3PoolOwnerActions.sol"; // <= FOUND

```


*GitHub* : [4](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L4-L4)

```solidity
5: import {IUniswapV3FactoryOwnerActions} from "src/interfaces/IUniswapV3FactoryOwnerActions.sol"; // <= FOUND

```


*GitHub* : [5](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L5-L5)

### [N-26]<a name="n-26"></a> Function names should differ to make the code more readable

In Solidity, while function overriding allows for functions with the same name to coexist, it is advisable to avoid this practice to enhance code readability and maintainability. Having multiple functions with the same name, even with different parameters or in inherited contracts, can cause confusion and increase the likelihood of errors during development, testing, and debugging. Using distinct and descriptive function names not only clarifies the purpose and behavior of each function, but also helps prevent unintended function calls or incorrect overriding. By adopting a clear and consistent naming convention, developers can create more comprehensible and maintainable smart contracts.

*There are 6 instance(s) of this issue:*

```solidity
256:   function stake(uint256 _amount, address _delegatee) // <= FOUND
257:     external
258:     returns (DepositIdentifier _depositId)
259:   

```


*GitHub* : [256](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L256-L256)

```solidity
271:   function stake(uint256 _amount, address _delegatee, address _beneficiary) // <= FOUND
272:     external
273:     returns (DepositIdentifier _depositId)
274:   

```


*GitHub* : [271](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L271-L271)

```solidity
201:   function setAdmin(address _newAdmin) external  // <= FOUND

```


*GitHub* : [201](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L201-L201)

```solidity
201:   function setAdmin(address _newAdmin) external  // <= FOUND

```


*GitHub* : [201](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L201-L201)

```solidity
779:   function _revertIfNotAdmin() internal view  // <= FOUND

```


*GitHub* : [779](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L779-L779)

```solidity
779:   function _revertIfNotAdmin() internal view  // <= FOUND

```


*GitHub* : [779](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L779-L779)

### [N-27]<a name="n-27"></a> Functions within contracts are not ordered according to the solidity style guide

The following order should be used within contracts

constructor

receive function (if exists)

fallback function (if exists)

external

public

internal

private

Rearrange the contract functions and contructors to fit this ordering

*There are 1 instance(s) of this issue:*

```solidity
31: contract UniStaker is INotifiableRewardReceiver, Multicall, EIP712, Nonces  // <= FOUND

```


*GitHub* : [31](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L31-L31)

### [N-28]<a name="n-28"></a> Interface imports should be declared first

Amend the ordering of imports to import interfaces first followed by other imports

*There are 1 instance(s) of this issue:*

```solidity
2: 
3: pragma solidity 0.8.23;
4: 
5: import {DelegationSurrogate} from "src/DelegationSurrogate.sol"; // <= FOUND
6: import {INotifiableRewardReceiver} from "src/interfaces/INotifiableRewardReceiver.sol"; // <= FOUND
7: import {IERC20Delegates} from "src/interfaces/IERC20Delegates.sol"; // <= FOUND
8: import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol"; // <= FOUND
9: import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol"; // <= FOUND
10: import {Multicall} from "openzeppelin/utils/Multicall.sol"; // <= FOUND
11: import {Nonces} from "openzeppelin/utils/Nonces.sol"; // <= FOUND
12: import {SignatureChecker} from "openzeppelin/utils/cryptography/SignatureChecker.sol"; // <= FOUND
13: import {EIP712} from "openzeppelin/utils/cryptography/EIP712.sol"; // <= FOUND
14: 
32: contract UniStaker is INotifiableRewardReceiver, Multicall, EIP712, Nonces {
33:   type DepositIdentifier is uint256;
34: 
37:   event StakeDeposited(
38:     address owner, DepositIdentifier indexed depositId, uint256 amount, uint256 depositBalance
39:   );
40: 
42:   event StakeWithdrawn(DepositIdentifier indexed depositId, uint256 amount, uint256 depositBalance);
43: 
45:   event DelegateeAltered(
46:     DepositIdentifier indexed depositId, address oldDelegatee, address newDelegatee
47:   );
48: 
50:   event BeneficiaryAltered(
51:     DepositIdentifier indexed depositId,
52:     address indexed oldBeneficiary,
53:     address indexed newBeneficiary
54:   );
55: 
57:   event RewardClaimed(address indexed beneficiary, uint256 amount);
58: 
60:   event RewardNotified(uint256 amount, address notifier);
61: 
63:   event AdminSet(address indexed oldAdmin, address indexed newAdmin);
64: 
66:   event RewardNotifierSet(address indexed account, bool isEnabled);
67: 
69:   event SurrogateDeployed(address indexed delegatee, address indexed surrogate);
70: 
74:   error UniStaker__Unauthorized(bytes32 reason, address caller);
75: 
77:   error UniStaker__InvalidRewardRate();
78: 
82:   error UniStaker__InsufficientRewardBalance();
83: 
85:   error UniStaker__InvalidAddress();
86: 
88:   error UniStaker__InvalidSignature();
89: 
95:   struct Deposit {
96:     uint256 balance;
97:     address owner;
98:     address delegatee;
99:     address beneficiary;
100:   }
101: 
103:   bytes32 public constant STAKE_TYPEHASH = keccak256(
104:     "Stake(uint256 amount,address delegatee,address beneficiary,address depositor,uint256 nonce)"

```


*GitHub* : [5](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L5-L13)

### [N-29]<a name="n-29"></a> Multiple mappings can be replaced with a single struct mapping

Using a single struct mapping in place of multiple defined mappings in a Solidity contract can lead to improved code organization, better readability, and easier maintainability. By consolidating related data into a single struct, developers can create a more cohesive data structure that logically groups together relevant pieces of information, thus reducing redundancy and clutter. This approach simplifies the codebase, making it easier to understand, navigate, and modify. Additionally, it can result in more efficient gas usage when accessing or updating multiple related data points simultaneously. 

*There are 1 instance(s) of this issue:*

```solidity
31: contract UniStaker is INotifiableRewardReceiver, Multicall, EIP712, Nonces {
32:   type DepositIdentifier is uint256;
33: 
89:   bytes32 public constant STAKE_TYPEHASH = keccak256(
90:     "Stake(uint256 amount,address delegatee,address beneficiary,address depositor,uint256 nonce)"
91:   );
92:   
93:   bytes32 public constant STAKE_MORE_TYPEHASH =
94:     keccak256("StakeMore(uint256 depositId,uint256 amount,address depositor,uint256 nonce)");
95:   
96:   bytes32 public constant ALTER_DELEGATEE_TYPEHASH = keccak256(
97:     "AlterDelegatee(uint256 depositId,address newDelegatee,address depositor,uint256 nonce)"
98:   );
99:   
100:   bytes32 public constant ALTER_BENEFICIARY_TYPEHASH = keccak256(
101:     "AlterBeneficiary(uint256 depositId,address newBeneficiary,address depositor,uint256 nonce)"
102:   );
103:   
104:   bytes32 public constant WITHDRAW_TYPEHASH =
105:     keccak256("Withdraw(uint256 depositId,uint256 amount,address depositor,uint256 nonce)");
106:   
107:   bytes32 public constant CLAIM_REWARD_TYPEHASH =
108:     keccak256("ClaimReward(address beneficiary,uint256 nonce)");
109: 
111:   IERC20 public immutable REWARD_TOKEN;
112: 
114:   IERC20Delegates public immutable STAKE_TOKEN;
115: 
117:   uint256 public constant REWARD_DURATION = 30 days;
118: 
121:   uint256 public constant SCALE_FACTOR = 1e36;
122: 
124:   DepositIdentifier private nextDepositId;
125: 
127:   address public admin;
128: 
130:   uint256 public totalStaked;
131: 
133:   mapping(address depositor => uint256 amount) public depositorTotalStaked; // <= FOUND
134: 
136:   mapping(address beneficiary => uint256 amount) public earningPower; // <= FOUND
137: 
139:   mapping(DepositIdentifier depositId => Deposit deposit) public deposits; // <= FOUND
140: 
143:   mapping(address delegatee => DelegationSurrogate surrogate) public surrogates; // <= FOUND
144: 
146:   uint256 public rewardEndTime;
147: 
149:   uint256 public lastCheckpointTime;
150: 
153:   uint256 public scaledRewardRate;
154: 
156:   uint256 public rewardPerTokenAccumulatedCheckpoint;
157: 
162:   mapping(address account => uint256) public beneficiaryRewardPerTokenCheckpoint; // <= FOUND
163: 
169:   mapping(address account => uint256 amount) public unclaimedRewardCheckpoint; // <= FOUND
170: 
172:   mapping(address rewardNotifier => bool) public isRewardNotifier; // <= FOUND
173: 
448: }

```


*GitHub* : [133](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L133-L172)

### [N-30]<a name="n-30"></a> Use safePermit in place of permit

 OpenZeppelin's SafePermit is designed to facilitate secure and seamless token approvals via off-chain signed messages, mitigating the risks associated with on-chain transactions. It follows the ERC-2612 standard, ensuring compatibility with various wallets and dApps, and aligning with established industry guidelines. 

*There are 2 instance(s) of this issue:*

```solidity
301:     STAKE_TOKEN.permit(msg.sender, address(this), _amount, _deadline, _v, _r, _s); // <= FOUND

```


*GitHub* : [301](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L301-L301)

```solidity
301: 
302:     STAKE_TOKEN.permit(msg.sender, address(this), _amount, _deadline, _v, _r, _s); // <= FOUND

```


*GitHub* : [301](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L301-L302)

### [N-31]<a name="n-31"></a> Consider using named mappings

In Solidity version 0.8.18 and beyond mapping parameters can be named. This makes the purpose and function of a given mapping far clearer which in turn improves readability.

*There are 2 instance(s) of this issue:*

```solidity
185:   mapping(address rewardNotifier => bool) public isRewardNotifier; // <= FOUND

```


*GitHub* : [185](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L185-L185)

```solidity
175:   mapping(address account => uint256) public beneficiaryRewardPerTokenCheckpoint; // <= FOUND

```


*GitHub* : [175](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L175-L175)

### [N-32]<a name="n-32"></a> Use a single contract or library for system wide constants



*There are 1 instance(s) of this issue:*

```solidity
31: contract UniStaker is INotifiableRewardReceiver, Multicall, EIP712, Nonces {
32:   type DepositIdentifier is uint256;
33: 
89:   bytes32 public constant STAKE_TYPEHASH = keccak256( // <= FOUND
90:     "Stake(uint256 amount,address delegatee,address beneficiary,address depositor,uint256 nonce)"
91:   );
92:   
93:   bytes32 public constant STAKE_MORE_TYPEHASH = // <= FOUND
94:     keccak256("StakeMore(uint256 depositId,uint256 amount,address depositor,uint256 nonce)");
95:   
96:   bytes32 public constant ALTER_DELEGATEE_TYPEHASH = keccak256( // <= FOUND
97:     "AlterDelegatee(uint256 depositId,address newDelegatee,address depositor,uint256 nonce)"
98:   );
99:   
100:   bytes32 public constant ALTER_BENEFICIARY_TYPEHASH = keccak256( // <= FOUND
101:     "AlterBeneficiary(uint256 depositId,address newBeneficiary,address depositor,uint256 nonce)"
102:   );
103:   
104:   bytes32 public constant WITHDRAW_TYPEHASH = // <= FOUND
105:     keccak256("Withdraw(uint256 depositId,uint256 amount,address depositor,uint256 nonce)");
106:   
107:   bytes32 public constant CLAIM_REWARD_TYPEHASH = // <= FOUND
108:     keccak256("ClaimReward(address beneficiary,uint256 nonce)");
109: 
111:   IERC20 public immutable REWARD_TOKEN;
112: 
114:   IERC20Delegates public immutable STAKE_TOKEN;
115: 
117:   uint256 public constant REWARD_DURATION = 30 days; // <= FOUND
118: 
121:   uint256 public constant SCALE_FACTOR = 1e36; // <= FOUND
122: 
124:   DepositIdentifier private nextDepositId;
125: 
127:   address public admin;
128: 
130:   uint256 public totalStaked;
131: 
133:   mapping(address depositor => uint256 amount) public depositorTotalStaked;
134: 
136:   mapping(address beneficiary => uint256 amount) public earningPower;
137: 
139:   mapping(DepositIdentifier depositId => Deposit deposit) public deposits;
140: 
143:   mapping(address delegatee => DelegationSurrogate surrogate) public surrogates;
144: 
146:   uint256 public rewardEndTime;
147: 
149:   uint256 public lastCheckpointTime;
150: 
153:   uint256 public scaledRewardRate;
154: 
156:   uint256 public rewardPerTokenAccumulatedCheckpoint;
157: 
162:   mapping(address account => uint256) public beneficiaryRewardPerTokenCheckpoint;
163: 
169:   mapping(address account => uint256 amount) public unclaimedRewardCheckpoint;
170: 
172:   mapping(address rewardNotifier => bool) public isRewardNotifier;
173: 
448: }

```


*GitHub* : [89](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L89-L121)

### [N-33]<a name="n-33"></a> Off-by-one timestamp error

In Solidity, using `>=` or `<=` to compare against `block.timestamp` (alias `now`) may introduce off-by-one errors due to the fact that `block.timestamp` is only updated once per block and its value remains constant throughout the block's execution. If an operation happens at the exact second when `block.timestamp` changes, it could result in unexpected behavior. To avoid this, it's safer to use strict inequality operators (`>` or `<`). For instance, if a condition should only be met after a certain time, use `block.timestamp > time` rather than `block.timestamp >= time`. This way, potential off-by-one errors due to the exact timing of block mining are mitigated, leading to safer, more predictable contract behavior.

*There are 2 instance(s) of this issue:*

```solidity
220:   function lastTimeRewardDistributed() public view returns (uint256) { // <= FOUND
221:     if (rewardEndTime <= block.timestamp) return rewardEndTime;
222:     else return block.timestamp;
223:   }

```


*GitHub* : [220](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L220-L220)

```solidity
570:   function notifyRewardAmount(uint256 _amount) external { // <= FOUND
571:     if (!isRewardNotifier[msg.sender]) revert UniStaker__Unauthorized("not notifier", msg.sender);
572: 
575:     rewardPerTokenAccumulatedCheckpoint = rewardPerTokenAccumulated();
576: 
577:     if (block.timestamp >= rewardEndTime) {
578:       scaledRewardRate = (_amount * SCALE_FACTOR) / REWARD_DURATION;
579:     } else {
580:       uint256 _remainingReward = scaledRewardRate * (rewardEndTime - block.timestamp);
581:       scaledRewardRate = (_remainingReward + _amount * SCALE_FACTOR) / REWARD_DURATION;
582:     }
583: 
584:     rewardEndTime = block.timestamp + REWARD_DURATION;
585:     lastCheckpointTime = block.timestamp;
586: 
587:     if ((scaledRewardRate / SCALE_FACTOR) == 0) revert UniStaker__InvalidRewardRate();
588: 
594:     if (
595:       (scaledRewardRate * REWARD_DURATION) > (REWARD_TOKEN.balanceOf(address(this)) * SCALE_FACTOR)
596:     ) revert UniStaker__InsufficientRewardBalance();
597: 
598:     emit RewardNotified(_amount, msg.sender);
599:   }

```


*GitHub* : [570](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L570-L570)

### [N-34]<a name="n-34"></a> increase/decrease allowance should be used instead of approve/safeApprove

Using `approve()` in ERC20 tokens has a known race condition when resetting allowances, making it susceptible to double spending. Instead, the `increaseAllowance()` and `decreaseAllowance()` functions are introduced to safely adjust allowances without the need to first reset them to zero. They atomically change the allowance, avoiding potential vulnerabilities. Developers should transition from the deprecated `approve()` method to these newer functions to enhance security. By using `increaseAllowance()` or `decreaseAllowance()`, you can ensure that allowances are adjusted in a safer manner, mitigating possible attack vectors associated with the traditional `approve()` function.

*There are 1 instance(s) of this issue:*

```solidity
27:     _token.approve(msg.sender, type(uint256).max); // <= FOUND

```


*GitHub* : [27](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L27-L27)

### [N-35]<a name="n-35"></a> Use immutable not constant for keccak state variables

It's crucial to leverage the right features for the appropriate contexts in Solidity, despite the compiler's ability to correct common developer mistakes. Both `constant` and `immutable` variables have distinct uses. `Constant` variables are best suited for hard-coded, literal values within your contract, where the value doesn't need to be computed or modified. 

On the other hand, `immutable` variables are ideal for situations where the value might be the result of an expression or received from a constructor. While both serve to define unchanging variables, they function differently and their proper utilization contributes to clearer, more efficient code. Remember, even if the compiler can correct certain mistakes, best practices dictate using the correct feature for the task at hand.

*There are 3 instance(s) of this issue:*

```solidity
102: bytes32 public constant STAKE_TYPEHASH = keccak256( // <= FOUND

```


*GitHub* : [102](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L102-L102)

```solidity
109: bytes32 public constant ALTER_DELEGATEE_TYPEHASH = keccak256( // <= FOUND

```


*GitHub* : [109](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L109-L109)

```solidity
113: bytes32 public constant ALTER_BENEFICIARY_TYPEHASH = keccak256( // <= FOUND

```


*GitHub* : [113](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L113-L113)

### [N-36]<a name="n-36"></a> Custom error has no error variables

In Solidity, the use of custom error messages provides a valuable method of conveying meaningful information about failures during execution. In the current implementation, the custom errors lack specifics, making it challenging to understand the root cause of a failure. It's advisable to incorporate parameters into your error messages to indicate which user action or specific value caused the exception. This not only enhances error transparency but also aids debugging and fosters a more robust and maintainable codebase. Providing such precise error context greatly helps developers identify and resolve issues faster.

*There are 8 instance(s) of this issue:*

```solidity
76: error UniStaker__InvalidRewardRate(); // <= FOUND

```


*GitHub* : [76](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L76-L76)

```solidity
81: error UniStaker__InsufficientRewardBalance(); // <= FOUND

```


*GitHub* : [81](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L81-L81)

```solidity
84: error UniStaker__InvalidAddress(); // <= FOUND

```


*GitHub* : [84](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L84-L84)

```solidity
87: error UniStaker__InvalidSignature(); // <= FOUND

```


*GitHub* : [87](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L87-L87)

```solidity
54: error V3FactoryOwner__Unauthorized(); // <= FOUND

```


*GitHub* : [54](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L54-L54)

```solidity
57: error V3FactoryOwner__InvalidAddress(); // <= FOUND

```


*GitHub* : [57](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L57-L57)

```solidity
60: error V3FactoryOwner__InvalidPayoutAmount(); // <= FOUND

```


*GitHub* : [60](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L60-L60)

```solidity
63: error V3FactoryOwner__InsufficientFeesCollected(); // <= FOUND

```


*GitHub* : [63](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L63-L63)

### [N-37]<a name="n-37"></a> Empty bytes check is missing

When developing smart contracts in Solidity, it's crucial to validate the inputs of your functions. This includes ensuring that the bytes parameters are not empty, especially when they represent crucial data such as addresses, identifiers, or raw data that the contract needs to process.

Missing empty bytes checks can lead to unexpected behaviour in your contract. For instance, certain operations might fail, produce incorrect results, or consume unnecessary gas when performed with empty bytes. Moreover, missing input validation can potentially expose your contract to malicious activity, including exploitation of unhandled edge cases.

To mitigate these issues, always validate that bytes parameters are not empty when the logic of your contract requires it.

*There are 9 instance(s) of this issue:*

```solidity
292:   function permitAndStake(
293:     uint256 _amount,
294:     address _delegatee,
295:     address _beneficiary,
296:     uint256 _deadline,
297:     uint8 _v,
298:     bytes32 _r,
299:     bytes32 _s
300:   ) external returns (DepositIdentifier _depositId) {
301:     STAKE_TOKEN.permit(msg.sender, address(this), _amount, _deadline, _v, _r, _s);
302:     _depositId = _stake(msg.sender, _amount, _delegatee, _beneficiary);
303:   }

```


*GitHub* : [292](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L292-L292)

```solidity
315:   function stakeOnBehalf(
316:     uint256 _amount,
317:     address _delegatee,
318:     address _beneficiary,
319:     address _depositor,
320:     bytes memory _signature
321:   ) external returns (DepositIdentifier _depositId) {
322:     _revertIfSignatureIsNotValidNow(
323:       _depositor,
324:       _hashTypedDataV4(
325:         keccak256(
326:           abi.encode(
327:             STAKE_TYPEHASH, _amount, _delegatee, _beneficiary, _depositor, _useNonce(_depositor)
328:           )
329:         )
330:       ),
331:       _signature
332:     );
333:     _depositId = _stake(_depositor, _amount, _delegatee, _beneficiary);
334:   }

```


*GitHub* : [315](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L315-L315)

```solidity
360:   function permitAndStakeMore(
361:     DepositIdentifier _depositId,
362:     uint256 _amount,
363:     uint256 _deadline,
364:     uint8 _v,
365:     bytes32 _r,
366:     bytes32 _s
367:   ) external {
368:     Deposit storage deposit = deposits[_depositId];
369:     _revertIfNotDepositOwner(deposit, msg.sender);
370: 
371:     STAKE_TOKEN.permit(msg.sender, address(this), _amount, _deadline, _v, _r, _s);
372:     _stakeMore(deposit, _depositId, _amount);
373:   }

```


*GitHub* : [360](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L360-L360)

```solidity
382:   function stakeMoreOnBehalf(
383:     DepositIdentifier _depositId,
384:     uint256 _amount,
385:     address _depositor,
386:     bytes memory _signature
387:   ) external {
388:     Deposit storage deposit = deposits[_depositId];
389:     _revertIfNotDepositOwner(deposit, _depositor);
390: 
391:     _revertIfSignatureIsNotValidNow(
392:       _depositor,
393:       _hashTypedDataV4(
394:         keccak256(
395:           abi.encode(STAKE_MORE_TYPEHASH, _depositId, _amount, _depositor, _useNonce(_depositor))
396:         )
397:       ),
398:       _signature
399:     );
400: 
401:     _stakeMore(deposit, _depositId, _amount);
402:   }

```


*GitHub* : [382](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L382-L382)

```solidity
423:   function alterDelegateeOnBehalf(
424:     DepositIdentifier _depositId,
425:     address _newDelegatee,
426:     address _depositor,
427:     bytes memory _signature
428:   ) external {
429:     Deposit storage deposit = deposits[_depositId];
430:     _revertIfNotDepositOwner(deposit, _depositor);
431: 
432:     _revertIfSignatureIsNotValidNow(
433:       _depositor,
434:       _hashTypedDataV4(
435:         keccak256(
436:           abi.encode(
437:             ALTER_DELEGATEE_TYPEHASH, _depositId, _newDelegatee, _depositor, _useNonce(_depositor)
438:           )
439:         )
440:       ),
441:       _signature
442:     );
443: 
444:     _alterDelegatee(deposit, _depositId, _newDelegatee);
445:   }

```


*GitHub* : [423](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L423-L423)

```solidity
466:   function alterBeneficiaryOnBehalf(
467:     DepositIdentifier _depositId,
468:     address _newBeneficiary,
469:     address _depositor,
470:     bytes memory _signature
471:   ) external {
472:     Deposit storage deposit = deposits[_depositId];
473:     _revertIfNotDepositOwner(deposit, _depositor);
474: 
475:     _revertIfSignatureIsNotValidNow(
476:       _depositor,
477:       _hashTypedDataV4(
478:         keccak256(
479:           abi.encode(
480:             ALTER_BENEFICIARY_TYPEHASH,
481:             _depositId,
482:             _newBeneficiary,
483:             _depositor,
484:             _useNonce(_depositor)
485:           )
486:         )
487:       ),
488:       _signature
489:     );
490: 
491:     _alterBeneficiary(deposit, _depositId, _newBeneficiary);
492:   }

```


*GitHub* : [466](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L466-L466)

```solidity
512:   function withdrawOnBehalf(
513:     DepositIdentifier _depositId,
514:     uint256 _amount,
515:     address _depositor,
516:     bytes memory _signature
517:   ) external {
518:     Deposit storage deposit = deposits[_depositId];
519:     _revertIfNotDepositOwner(deposit, _depositor);
520: 
521:     _revertIfSignatureIsNotValidNow(
522:       _depositor,
523:       _hashTypedDataV4(
524:         keccak256(
525:           abi.encode(WITHDRAW_TYPEHASH, _depositId, _amount, _depositor, _useNonce(_depositor))
526:         )
527:       ),
528:       _signature
529:     );
530: 
531:     _withdraw(deposit, _depositId, _amount);
532:   }

```


*GitHub* : [512](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L512-L512)

```solidity
544:   function claimRewardOnBehalf(address _beneficiary, bytes memory _signature) external {
545:     _revertIfSignatureIsNotValidNow(
546:       _beneficiary,
547:       _hashTypedDataV4(
548:         keccak256(abi.encode(CLAIM_REWARD_TYPEHASH, _beneficiary, _useNonce(_beneficiary)))
549:       ),
550:       _signature
551:     );
552:     _claimReward(_beneficiary);
553:   }

```


*GitHub* : [544](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L544-L544)

```solidity
803:   function _revertIfSignatureIsNotValidNow(address _signer, bytes32 _hash, bytes memory _signature)
804:     internal
805:     view
806:   {
807:     bool _isValid = SignatureChecker.isValidSignatureNow(_signer, _hash, _signature);
808:     if (!_isValid) revert UniStaker__InvalidSignature();
809:   }

```


*GitHub* : [803](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L803-L803)

### [N-38]<a name="n-38"></a> Consider using SMTChecker

The SMTChecker is a valuable tool for Solidity developers as it helps detect potential vulnerabilities and logical errors in the contract's code. By utilizing Satisfiability Modulo Theories (SMT) solvers, it can reason about the potential states a contract can be in, and therefore, identify conditions that could lead to undesirable behavior. This automatic formal verification can catch issues that might otherwise be missed in manual code reviews or standard testing, enhancing the overall contract's security and reliability.

*There are 7 instance(s) of this issue:*

```solidity
1: // SPDX-License-Identifier: GPL-2.0-or-later
2: pragma solidity ^0.8.23;
3: 
4: /// @title The interface for the Uniswap V3 Factory
5: /// @notice The Uniswap V3 Factory facilitates creation of Uniswap V3 pools and control over the
6: /// protocol fees
7: /// @dev Stripped down and renamed from:
8: /// https://github.com/Uniswap/v3-core/blob/d8b1c635c275d2a9450bd6a78f3fa2484fef73eb/contracts/interfaces/IUniswapV3Factory.sol
9: interface IUniswapV3FactoryOwnerActions {
10:   /// @notice Returns the current owner of the factory
11:   /// @dev Can be changed by the current owner via setOwner
12:   /// @return The address of the factory owner
13:   function owner() external view returns (address);
14: 
15:   /// @notice Updates the owner of the factory
16:   /// @dev Must be called by the current owner
17:   /// @param _owner The new owner of the factory
18:   function setOwner(address _owner) external;
19: 
20:   /// @notice Enables a fee amount with the given tickSpacing
21:   /// @dev Fee amounts may never be removed once enabled
22:   /// @param fee The fee amount to enable, denominated in hundredths of a bip (i.e. 1e-6)
23:   /// @param tickSpacing The spacing between ticks to be enforced for all pools created with the
24:   /// given fee amount
25:   function enableFeeAmount(uint24 fee, int24 tickSpacing) external;
26: 
27:   /// @notice Returns the tick spacing for a given fee amount, if enabled, or 0 if not enabled
28:   /// @dev A fee amount can never be removed, so this value should be hard coded or cached in the
29:   /// calling context
30:   /// @param fee The enabled fee, denominated in hundredths of a bip. Returns 0 in case of unenabled
31:   /// fee
32:   /// @return The tick spacing
33:   function feeAmountTickSpacing(uint24 fee) external view returns (int24);
34: }
35: 

```


*GitHub* : [1](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L1-L1)

```solidity
1: // SPDX-License-Identifier: AGPL-3.0-only
2: pragma solidity ^0.8.23;
3: 
4: /// @title INotifiableRewardReceiver
5: /// @author ScopeLift
6: /// @notice The communication interface between the V3FactoryOwner contract and the UniStaker
7: /// contract. In particular, the V3FactoryOwner only needs to know the latter implements the
8: /// specified method in order to forward payouts to the UniStaker contract. The UniStaker contract
9: /// receives the rewards and abstracts the distribution mechanics
10: interface INotifiableRewardReceiver {
11:   /// @notice Method called to notify a reward receiver it has received a reward.
12:   /// @param _amount The amount of reward.
13:   function notifyRewardAmount(uint256 _amount) external;
14: }
15: 

```


*GitHub* : [1](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/INotifiableRewardReceiver.sol#L1-L1)

```solidity
1: // SPDX-License-Identifier: AGPL-3.0-only
2: pragma solidity 0.8.23;
3: 
4: import {DelegationSurrogate} from "src/DelegationSurrogate.sol";
5: import {INotifiableRewardReceiver} from "src/interfaces/INotifiableRewardReceiver.sol";
6: import {IERC20Delegates} from "src/interfaces/IERC20Delegates.sol";
7: import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";
8: import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol";
9: import {Multicall} from "openzeppelin/utils/Multicall.sol";
10: import {Nonces} from "openzeppelin/utils/Nonces.sol";
11: import {SignatureChecker} from "openzeppelin/utils/cryptography/SignatureChecker.sol";
12: import {EIP712} from "openzeppelin/utils/cryptography/EIP712.sol";
13: 
14: /// @title UniStaker
15: /// @author ScopeLift
16: /// @notice This contract manages the distribution of rewards to stakers. Rewards are denominated
17: /// in an ERC20 token and sent to the contract by authorized reward notifiers. To stake means to
18: /// deposit a designated, delegable ERC20 governance token and leave it over a period of time.
19: /// The contract allows stakers to delegate the voting power of the tokens they stake to any
20: /// governance delegatee on a per deposit basis. The contract also allows stakers to designate the
21: /// beneficiary address that earns rewards for the associated deposit.
22: ///
23: /// The staking mechanism of this contract is directly inspired by the Synthetix StakingRewards.sol
24: /// implementation. The core mechanic involves the streaming of rewards over a designated period
25: /// of time. Each staker earns rewards proportional to their share of the total stake, and each
26: /// staker earns only while their tokens are staked. Stakers may add or withdraw their stake at any
27: /// point. Beneficiaries can claim the rewards they've earned at any point. When a new reward is
28: /// received, the reward duration restarts, and the rate at which rewards are streamed is updated
29: /// to include the newly received rewards along with any remaining rewards that have finished
30: /// streaming since the last time a reward was received.
31: contract UniStaker is INotifiableRewardReceiver, Multicall, EIP712, Nonces {
32:   type DepositIdentifier is uint256;
33: 
34:   /// @notice Emitted when stake is deposited by a depositor, either to a new deposit or one that
35:   /// already exists.
36:   event StakeDeposited(
37:     address owner, DepositIdentifier indexed depositId, uint256 amount, uint256 depositBalance
38:   );
39: 
40:   /// @notice Emitted when a depositor withdraws some portion of stake from a given deposit.
41:   event StakeWithdrawn(DepositIdentifier indexed depositId, uint256 amount, uint256 depositBalance);
42: 
43:   /// @notice Emitted when a deposit's delegatee is changed.
44:   event DelegateeAltered(
45:     DepositIdentifier indexed depositId, address oldDelegatee, address newDelegatee
46:   );
47: 
48:   /// @notice Emitted when a deposit's beneficiary is changed.
49:   event BeneficiaryAltered(
50:     DepositIdentifier indexed depositId,
51:     address indexed oldBeneficiary,
52:     address indexed newBeneficiary
53:   );
54: 
55:   /// @notice Emitted when a beneficiary claims their earned reward.
56:   event RewardClaimed(address indexed beneficiary, uint256 amount);
57: 
58:   /// @notice Emitted when this contract is notified of a new reward.
59:   event RewardNotified(uint256 amount, address notifier);
60: 
61:   /// @notice Emitted when the admin address is set.
62:   event AdminSet(address indexed oldAdmin, address indexed newAdmin);
63: 
64:   /// @notice Emitted when a reward notifier address is enabled or disabled.
65:   event RewardNotifierSet(address indexed account, bool isEnabled);
66: 
67:   /// @notice Emitted when a surrogate contract is deployed.
68:   event SurrogateDeployed(address indexed delegatee, address indexed surrogate);
69: 
70:   /// @notice Thrown when an account attempts a call for which it lacks appropriate permission.
71:   /// @param reason Human readable code explaining why the call is unauthorized.
72:   /// @param caller The address that attempted the unauthorized call.
73:   error UniStaker__Unauthorized(bytes32 reason, address caller);
74: 
75:   /// @notice Thrown if the new rate after a reward notification would be zero.
76:   error UniStaker__InvalidRewardRate();
77: 
78:   /// @notice Thrown if the following invariant is broken after a new reward: the contract should
79:   /// always have a reward balance sufficient to distribute at the reward rate across the reward
80:   /// duration.
81:   error UniStaker__InsufficientRewardBalance();
82: 
83:   /// @notice Thrown if a caller attempts to specify address zero for certain designated addresses.
84:   error UniStaker__InvalidAddress();
85: 
86:   /// @notice Thrown if a caller supplies an invalid signature to a method that requires one.
87:   error UniStaker__InvalidSignature();
88: 
89:   /// @notice Metadata associated with a discrete staking deposit.
90:   /// @param balance The deposit's staked balance.
91:   /// @param owner The owner of this deposit.
92:   /// @param delegatee The governance delegate who receives the voting weight for this deposit.
93:   /// @param beneficiary The address that accrues staking rewards earned by this deposit.
94:   struct Deposit {
95:     uint256 balance;
96:     address owner;
97:     address delegatee;
98:     address beneficiary;
99:   }
100: 
101:   /// @notice Type hash used when encoding data for `stakeOnBehalf` calls.
102:   bytes32 public constant STAKE_TYPEHASH = keccak256(
103:     "Stake(uint256 amount,address delegatee,address beneficiary,address depositor,uint256 nonce)"
104:   );
105:   /// @notice Type hash used when encoding data for `stakeMoreOnBehalf` calls.
106:   bytes32 public constant STAKE_MORE_TYPEHASH =
107:     keccak256("StakeMore(uint256 depositId,uint256 amount,address depositor,uint256 nonce)");
108:   /// @notice Type hash used when encoding data for `alterDelegateeOnBehalf` calls.
109:   bytes32 public constant ALTER_DELEGATEE_TYPEHASH = keccak256(
110:     "AlterDelegatee(uint256 depositId,address newDelegatee,address depositor,uint256 nonce)"
111:   );
112:   /// @notice Type hash used when encoding data for `alterBeneficiaryOnBehalf` calls.
113:   bytes32 public constant ALTER_BENEFICIARY_TYPEHASH = keccak256(
114:     "AlterBeneficiary(uint256 depositId,address newBeneficiary,address depositor,uint256 nonce)"
115:   );
116:   /// @notice Type hash used when encoding data for `withdrawOnBehalf` calls.
117:   bytes32 public constant WITHDRAW_TYPEHASH =
118:     keccak256("Withdraw(uint256 depositId,uint256 amount,address depositor,uint256 nonce)");
119:   /// @notice Type hash used when encoding data for `claimRewardOnBehalf` calls.
120:   bytes32 public constant CLAIM_REWARD_TYPEHASH =
121:     keccak256("ClaimReward(address beneficiary,uint256 nonce)");
122: 
123:   /// @notice ERC20 token in which rewards are denominated and distributed.
124:   IERC20 public immutable REWARD_TOKEN;
125: 
126:   /// @notice Delegable governance token which users stake to earn rewards.
127:   IERC20Delegates public immutable STAKE_TOKEN;
128: 
129:   /// @notice Length of time over which rewards sent to this contract are distributed to stakers.
130:   uint256 public constant REWARD_DURATION = 30 days;
131: 
132:   /// @notice Scale factor used in reward calculation math to reduce rounding errors caused by
133:   /// truncation during division.
134:   uint256 public constant SCALE_FACTOR = 1e36;
135: 
136:   /// @dev Unique identifier that will be used for the next deposit.
137:   DepositIdentifier private nextDepositId;
138: 
139:   /// @notice Permissioned actor that can enable/disable `rewardNotifier` addresses.
140:   address public admin;
141: 
142:   /// @notice Global amount currently staked across all deposits.
143:   uint256 public totalStaked;
144: 
145:   /// @notice Tracks the total staked by a depositor across all unique deposits.
146:   mapping(address depositor => uint256 amount) public depositorTotalStaked;
147: 
148:   /// @notice Tracks the total stake actively earning rewards for a given beneficiary account.
149:   mapping(address beneficiary => uint256 amount) public earningPower;
150: 
151:   /// @notice Stores the metadata associated with a given deposit.
152:   mapping(DepositIdentifier depositId => Deposit deposit) public deposits;
153: 
154:   /// @notice Maps the account of each governance delegate with the surrogate contract which holds
155:   /// the staked tokens from deposits which assign voting weight to said delegate.
156:   mapping(address delegatee => DelegationSurrogate surrogate) public surrogates;
157: 
158:   /// @notice Time at which rewards distribution will complete if there are no new rewards.
159:   uint256 public rewardEndTime;
160: 
161:   /// @notice Last time at which the global rewards accumulator was updated.
162:   uint256 public lastCheckpointTime;
163: 
164:   /// @notice Global rate at which rewards are currently being distributed to stakers,
165:   /// denominated in scaled reward tokens per second, using the SCALE_FACTOR.
166:   uint256 public scaledRewardRate;
167: 
168:   /// @notice Checkpoint value of the global reward per token accumulator.
169:   uint256 public rewardPerTokenAccumulatedCheckpoint;
170: 
171:   /// @notice Checkpoint of the reward per token accumulator on a per account basis. It represents
172:   /// the value of the global accumulator at the last time a given beneficiary's rewards were
173:   /// calculated and stored. The difference between the global value and this value can be
174:   /// used to calculate the interim rewards earned by given account.
175:   mapping(address account => uint256) public beneficiaryRewardPerTokenCheckpoint;
176: 
177:   /// @notice Checkpoint of the unclaimed rewards earned by a given beneficiary. This value is
178:   /// stored any time an action is taken that specifically impacts the rate at which rewards are
179:   /// earned by a given beneficiary account. Total unclaimed rewards for an account are thus this
180:   /// value plus all rewards earned after this checkpoint was taken. This value is reset to zero
181:   /// when a beneficiary account claims their earned rewards.
182:   mapping(address account => uint256 amount) public unclaimedRewardCheckpoint;
183: 
184:   /// @notice Maps addresses to whether they are authorized to call `notifyRewardAmount`.
185:   mapping(address rewardNotifier => bool) public isRewardNotifier;
186: 
187:   /// @param _rewardToken ERC20 token in which rewards will be denominated.
188:   /// @param _stakeToken Delegable governance token which users will stake to earn rewards.
189:   /// @param _admin Address which will have permission to manage rewardNotifiers.
190:   constructor(IERC20 _rewardToken, IERC20Delegates _stakeToken, address _admin)
191:     EIP712("UniStaker", "1")
192:   {
193:     REWARD_TOKEN = _rewardToken;
194:     STAKE_TOKEN = _stakeToken;
195:     _setAdmin(_admin);
196:   }
197: 
198:   /// @notice Set the admin address.
199:   /// @param _newAdmin Address of the new admin.
200:   /// @dev Caller must be the current admin.
201:   function setAdmin(address _newAdmin) external {
202:     _revertIfNotAdmin();
203:     _setAdmin(_newAdmin);
204:   }
205: 
206:   /// @notice Enables or disables a reward notifier address.
207:   /// @param _rewardNotifier Address of the reward notifier.
208:   /// @param _isEnabled `true` to enable the `_rewardNotifier`, or `false` to disable.
209:   /// @dev Caller must be the current admin.
210:   function setRewardNotifier(address _rewardNotifier, bool _isEnabled) external {
211:     _revertIfNotAdmin();
212:     isRewardNotifier[_rewardNotifier] = _isEnabled;
213:     emit RewardNotifierSet(_rewardNotifier, _isEnabled);
214:   }
215: 
216:   /// @notice Timestamp representing the last time at which rewards have been distributed, which is
217:   /// either the current timestamp (because rewards are still actively being streamed) or the time
218:   /// at which the reward duration ended (because all rewards to date have already been streamed).
219:   /// @return Timestamp representing the last time at which rewards have been distributed.
220:   function lastTimeRewardDistributed() public view returns (uint256) {
221:     if (rewardEndTime <= block.timestamp) return rewardEndTime;
222:     else return block.timestamp;
223:   }
224: 
225:   /// @notice Live value of the global reward per token accumulator. It is the sum of the last
226:   /// checkpoint value with the live calculation of the value that has accumulated in the interim.
227:   /// This number should monotonically increase over time as more rewards are distributed.
228:   /// @return Live value of the global reward per token accumulator.
229:   function rewardPerTokenAccumulated() public view returns (uint256) {
230:     if (totalStaked == 0) return rewardPerTokenAccumulatedCheckpoint;
231: 
232:     return rewardPerTokenAccumulatedCheckpoint
233:       + (scaledRewardRate * (lastTimeRewardDistributed() - lastCheckpointTime)) / totalStaked;
234:   }
235: 
236:   /// @notice Live value of the unclaimed rewards earned by a given beneficiary account. It is the
237:   /// sum of the last checkpoint value of their unclaimed rewards with the live calculation of the
238:   /// rewards that have accumulated for this account in the interim. This value can only increase,
239:   /// until it is reset to zero once the beneficiary account claims their unearned rewards.
240:   /// @return Live value of the unclaimed rewards earned by a given beneficiary account.
241:   function unclaimedReward(address _beneficiary) public view returns (uint256) {
242:     return unclaimedRewardCheckpoint[_beneficiary]
243:       + (
244:         earningPower[_beneficiary]
245:           * (rewardPerTokenAccumulated() - beneficiaryRewardPerTokenCheckpoint[_beneficiary])
246:       ) / SCALE_FACTOR;
247:   }
248: 
249:   /// @notice Stake tokens to a new deposit. The caller must pre-approve the staking contract to
250:   /// spend at least the would-be staked amount of the token.
251:   /// @param _amount The amount of the staking token to stake.
252:   /// @param _delegatee The address to assign the governance voting weight of the staked tokens.
253:   /// @return _depositId The unique identifier for this deposit.
254:   /// @dev The delegatee may not be the zero address. The deposit will be owned by the message
255:   /// sender, and the beneficiary will also be the message sender.
256:   function stake(uint256 _amount, address _delegatee)
257:     external
258:     returns (DepositIdentifier _depositId)
259:   {
260:     _depositId = _stake(msg.sender, _amount, _delegatee, msg.sender);
261:   }
262: 
263:   /// @notice Method to stake tokens to a new deposit. The caller must pre-approve the staking
264:   /// contract to spend at least the would-be staked amount of the token.
265:   /// @param _amount Quantity of the staking token to stake.
266:   /// @param _delegatee Address to assign the governance voting weight of the staked tokens.
267:   /// @param _beneficiary Address that will accrue rewards for this stake.
268:   /// @return _depositId Unique identifier for this deposit.
269:   /// @dev Neither the delegatee nor the beneficiary may be the zero address. The deposit will be
270:   /// owned by the message sender.
271:   function stake(uint256 _amount, address _delegatee, address _beneficiary)
272:     external
273:     returns (DepositIdentifier _depositId)
274:   {
275:     _depositId = _stake(msg.sender, _amount, _delegatee, _beneficiary);
276:   }
277: 
278:   /// @notice Method to stake tokens to a new deposit. The caller must approve the staking
279:   /// contract to spend at least the would-be staked amount of the token via a signature which is
280:   /// is also provided, and is passed to the token contract's permit method before the staking
281:   /// operation occurs.
282:   /// @param _amount Quantity of the staking token to stake.
283:   /// @param _delegatee Address to assign the governance voting weight of the staked tokens.
284:   /// @param _beneficiary Address that will accrue rewards for this stake.
285:   /// @param _deadline The timestamp at which the permit signature should expire.
286:   /// @param _v ECDSA signature component: Parity of the `y` coordinate of point `R`
287:   /// @param _r ECDSA signature component: x-coordinate of `R`
288:   /// @param _s ECDSA signature component: `s` value of the signature
289:   /// @return _depositId Unique identifier for this deposit.
290:   /// @dev Neither the delegatee nor the beneficiary may be the zero address. The deposit will be
291:   /// owned by the message sender.
292:   function permitAndStake(
293:     uint256 _amount,
294:     address _delegatee,
295:     address _beneficiary,
296:     uint256 _deadline,
297:     uint8 _v,
298:     bytes32 _r,
299:     bytes32 _s
300:   ) external returns (DepositIdentifier _depositId) {
301:     STAKE_TOKEN.permit(msg.sender, address(this), _amount, _deadline, _v, _r, _s);
302:     _depositId = _stake(msg.sender, _amount, _delegatee, _beneficiary);
303:   }
304: 
305:   /// @notice Stake tokens to a new deposit on behalf of a user, using a signature to validate the
306:   /// user's intent. The caller must pre-approve the staking contract to spend at least the
307:   /// would-be staked amount of the token.
308:   /// @param _amount Quantity of the staking token to stake.
309:   /// @param _delegatee Address to assign the governance voting weight of the staked tokens.
310:   /// @param _beneficiary Address that will accrue rewards for this stake.
311:   /// @param _depositor Address of the user on whose behalf this stake is being made.
312:   /// @param _signature Signature of the user authorizing this stake.
313:   /// @return _depositId Unique identifier for this deposit.
314:   /// @dev Neither the delegatee nor the beneficiary may be the zero address.
315:   function stakeOnBehalf(
316:     uint256 _amount,
317:     address _delegatee,
318:     address _beneficiary,
319:     address _depositor,
320:     bytes memory _signature
321:   ) external returns (DepositIdentifier _depositId) {
322:     _revertIfSignatureIsNotValidNow(
323:       _depositor,
324:       _hashTypedDataV4(
325:         keccak256(
326:           abi.encode(
327:             STAKE_TYPEHASH, _amount, _delegatee, _beneficiary, _depositor, _useNonce(_depositor)
328:           )
329:         )
330:       ),
331:       _signature
332:     );
333:     _depositId = _stake(_depositor, _amount, _delegatee, _beneficiary);
334:   }
335: 
336:   /// @notice Add more staking tokens to an existing deposit. A staker should call this method when
337:   /// they have an existing deposit, and wish to stake more while retaining the same delegatee and
338:   /// beneficiary.
339:   /// @param _depositId Unique identifier of the deposit to which stake will be added.
340:   /// @param _amount Quantity of stake to be added.
341:   /// @dev The message sender must be the owner of the deposit.
342:   function stakeMore(DepositIdentifier _depositId, uint256 _amount) external {
343:     Deposit storage deposit = deposits[_depositId];
344:     _revertIfNotDepositOwner(deposit, msg.sender);
345:     _stakeMore(deposit, _depositId, _amount);
346:   }
347: 
348:   /// @notice Add more staking tokens to an existing deposit. A staker should call this method when
349:   /// they have an existing deposit, and wish to stake more while retaining the same delegatee and
350:   /// beneficiary. The caller must approve the staking contract to spend at least the would-be
351:   /// staked amount of the token via a signature which is is also provided, and is passed to the
352:   /// token contract's permit method before the staking operation occurs.
353:   /// @param _depositId Unique identifier of the deposit to which stake will be added.
354:   /// @param _amount Quantity of stake to be added.
355:   /// @param _deadline The timestamp at which the permit signature should expire.
356:   /// @param _v ECDSA signature component: Parity of the `y` coordinate of point `R`
357:   /// @param _r ECDSA signature component: x-coordinate of `R`
358:   /// @param _s ECDSA signature component: `s` value of the signature
359:   /// @dev The message sender must be the owner of the deposit.
360:   function permitAndStakeMore(
361:     DepositIdentifier _depositId,
362:     uint256 _amount,
363:     uint256 _deadline,
364:     uint8 _v,
365:     bytes32 _r,
366:     bytes32 _s
367:   ) external {
368:     Deposit storage deposit = deposits[_depositId];
369:     _revertIfNotDepositOwner(deposit, msg.sender);
370: 
371:     STAKE_TOKEN.permit(msg.sender, address(this), _amount, _deadline, _v, _r, _s);
372:     _stakeMore(deposit, _depositId, _amount);
373:   }
374: 
375:   /// @notice Add more staking tokens to an existing deposit on behalf of a user, using a signature
376:   /// to validate the user's intent. A staker should call this method when they have an existing
377:   /// deposit, and wish to stake more while retaining the same delegatee and beneficiary.
378:   /// @param _depositId Unique identifier of the deposit to which stake will be added.
379:   /// @param _amount Quantity of stake to be added.
380:   /// @param _depositor Address of the user on whose behalf this stake is being made.
381:   /// @param _signature Signature of the user authorizing this stake.
382:   function stakeMoreOnBehalf(
383:     DepositIdentifier _depositId,
384:     uint256 _amount,
385:     address _depositor,
386:     bytes memory _signature
387:   ) external {
388:     Deposit storage deposit = deposits[_depositId];
389:     _revertIfNotDepositOwner(deposit, _depositor);
390: 
391:     _revertIfSignatureIsNotValidNow(
392:       _depositor,
393:       _hashTypedDataV4(
394:         keccak256(
395:           abi.encode(STAKE_MORE_TYPEHASH, _depositId, _amount, _depositor, _useNonce(_depositor))
396:         )
397:       ),
398:       _signature
399:     );
400: 
401:     _stakeMore(deposit, _depositId, _amount);
402:   }
403: 
404:   /// @notice For an existing deposit, change the address to which governance voting power is
405:   /// assigned.
406:   /// @param _depositId Unique identifier of the deposit which will have its delegatee altered.
407:   /// @param _newDelegatee Address of the new governance delegate.
408:   /// @dev The new delegatee may not be the zero address. The message sender must be the owner of
409:   /// the deposit.
410:   function alterDelegatee(DepositIdentifier _depositId, address _newDelegatee) external {
411:     Deposit storage deposit = deposits[_depositId];
412:     _revertIfNotDepositOwner(deposit, msg.sender);
413:     _alterDelegatee(deposit, _depositId, _newDelegatee);
414:   }
415: 
416:   /// @notice For an existing deposit, change the address to which governance voting power is
417:   /// assigned on behalf of a user, using a signature to validate the user's intent.
418:   /// @param _depositId Unique identifier of the deposit which will have its delegatee altered.
419:   /// @param _newDelegatee Address of the new governance delegate.
420:   /// @param _depositor Address of the user on whose behalf this stake is being made.
421:   /// @param _signature Signature of the user authorizing this stake.
422:   /// @dev The new delegatee may not be the zero address.
423:   function alterDelegateeOnBehalf(
424:     DepositIdentifier _depositId,
425:     address _newDelegatee,
426:     address _depositor,
427:     bytes memory _signature
428:   ) external {
429:     Deposit storage deposit = deposits[_depositId];
430:     _revertIfNotDepositOwner(deposit, _depositor);
431: 
432:     _revertIfSignatureIsNotValidNow(
433:       _depositor,
434:       _hashTypedDataV4(
435:         keccak256(
436:           abi.encode(
437:             ALTER_DELEGATEE_TYPEHASH, _depositId, _newDelegatee, _depositor, _useNonce(_depositor)
438:           )
439:         )
440:       ),
441:       _signature
442:     );
443: 
444:     _alterDelegatee(deposit, _depositId, _newDelegatee);
445:   }
446: 
447:   /// @notice For an existing deposit, change the beneficiary to which staking rewards are
448:   /// accruing.
449:   /// @param _depositId Unique identifier of the deposit which will have its beneficiary altered.
450:   /// @param _newBeneficiary Address of the new rewards beneficiary.
451:   /// @dev The new beneficiary may not be the zero address. The message sender must be the owner of
452:   /// the deposit.
453:   function alterBeneficiary(DepositIdentifier _depositId, address _newBeneficiary) external {
454:     Deposit storage deposit = deposits[_depositId];
455:     _revertIfNotDepositOwner(deposit, msg.sender);
456:     _alterBeneficiary(deposit, _depositId, _newBeneficiary);
457:   }
458: 
459:   /// @notice For an existing deposit, change the beneficiary to which staking rewards are
460:   /// accruing on behalf of a user, using a signature to validate the user's intent.
461:   /// @param _depositId Unique identifier of the deposit which will have its beneficiary altered.
462:   /// @param _newBeneficiary Address of the new rewards beneficiary.
463:   /// @param _depositor Address of the user on whose behalf this stake is being made.
464:   /// @param _signature Signature of the user authorizing this stake.
465:   /// @dev The new beneficiary may not be the zero address.
466:   function alterBeneficiaryOnBehalf(
467:     DepositIdentifier _depositId,
468:     address _newBeneficiary,
469:     address _depositor,
470:     bytes memory _signature
471:   ) external {
472:     Deposit storage deposit = deposits[_depositId];
473:     _revertIfNotDepositOwner(deposit, _depositor);
474: 
475:     _revertIfSignatureIsNotValidNow(
476:       _depositor,
477:       _hashTypedDataV4(
478:         keccak256(
479:           abi.encode(
480:             ALTER_BENEFICIARY_TYPEHASH,
481:             _depositId,
482:             _newBeneficiary,
483:             _depositor,
484:             _useNonce(_depositor)
485:           )
486:         )
487:       ),
488:       _signature
489:     );
490: 
491:     _alterBeneficiary(deposit, _depositId, _newBeneficiary);
492:   }
493: 
494:   /// @notice Withdraw staked tokens from an existing deposit.
495:   /// @param _depositId Unique identifier of the deposit from which stake will be withdrawn.
496:   /// @param _amount Quantity of staked token to withdraw.
497:   /// @dev The message sender must be the owner of the deposit. Stake is withdrawn to the message
498:   /// sender's account.
499:   function withdraw(DepositIdentifier _depositId, uint256 _amount) external {
500:     Deposit storage deposit = deposits[_depositId];
501:     _revertIfNotDepositOwner(deposit, msg.sender);
502:     _withdraw(deposit, _depositId, _amount);
503:   }
504: 
505:   /// @notice Withdraw staked tokens from an existing deposit on behalf of a user, using a
506:   /// signature to validate the user's intent.
507:   /// @param _depositId Unique identifier of the deposit from which stake will be withdrawn.
508:   /// @param _amount Quantity of staked token to withdraw.
509:   /// @param _depositor Address of the user on whose behalf this stake is being made.
510:   /// @param _signature Signature of the user authorizing this stake.
511:   /// @dev Stake is withdrawn to the deposit owner's account.
512:   function withdrawOnBehalf(
513:     DepositIdentifier _depositId,
514:     uint256 _amount,
515:     address _depositor,
516:     bytes memory _signature
517:   ) external {
518:     Deposit storage deposit = deposits[_depositId];
519:     _revertIfNotDepositOwner(deposit, _depositor);
520: 
521:     _revertIfSignatureIsNotValidNow(
522:       _depositor,
523:       _hashTypedDataV4(
524:         keccak256(
525:           abi.encode(WITHDRAW_TYPEHASH, _depositId, _amount, _depositor, _useNonce(_depositor))
526:         )
527:       ),
528:       _signature
529:     );
530: 
531:     _withdraw(deposit, _depositId, _amount);
532:   }
533: 
534:   /// @notice Claim reward tokens the message sender has earned as a stake beneficiary. Tokens are
535:   /// sent to the message sender.
536:   function claimReward() external {
537:     _claimReward(msg.sender);
538:   }
539: 
540:   /// @notice Claim earned reward tokens for a beneficiary, using a signature to validate the
541:   /// beneficiary's intent. Tokens are sent to the beneficiary.
542:   /// @param _beneficiary Address of the beneficiary who will receive the reward.
543:   /// @param _signature Signature of the beneficiary authorizing this reward claim.
544:   function claimRewardOnBehalf(address _beneficiary, bytes memory _signature) external {
545:     _revertIfSignatureIsNotValidNow(
546:       _beneficiary,
547:       _hashTypedDataV4(
548:         keccak256(abi.encode(CLAIM_REWARD_TYPEHASH, _beneficiary, _useNonce(_beneficiary)))
549:       ),
550:       _signature
551:     );
552:     _claimReward(_beneficiary);
553:   }
554: 
555:   /// @notice Called by an authorized rewards notifier to alert the staking contract that a new
556:   /// reward has been transferred to it. It is assumed that the reward has already been
557:   /// transferred to this staking contract before the rewards notifier calls this method.
558:   /// @param _amount Quantity of reward tokens the staking contract is being notified of.
559:   /// @dev It is critical that only well behaved contracts are approved by the admin to call this
560:   /// method, for two reasons.
561:   ///
562:   /// 1. A misbehaving contract could grief stakers by frequently notifying this contract of tiny
563:   ///    rewards, thereby continuously stretching out the time duration over which real rewards are
564:   ///    distributed. It is required that reward notifiers supply reasonable rewards at reasonable
565:   ///    intervals.
566:   //  2. A misbehaving contract could falsely notify this contract of rewards that were not actually
567:   ///    distributed, creating a shortfall for those claiming their rewards after others. It is
568:   ///    required that a notifier contract always transfers the `_amount` to this contract before
569:   ///    calling this method.
570:   function notifyRewardAmount(uint256 _amount) external {
571:     if (!isRewardNotifier[msg.sender]) revert UniStaker__Unauthorized("not notifier", msg.sender);
572: 
573:     // We checkpoint the accumulator without updating the timestamp at which it was updated, because
574:     // that second operation will be done after updating the reward rate.
575:     rewardPerTokenAccumulatedCheckpoint = rewardPerTokenAccumulated();
576: 
577:     if (block.timestamp >= rewardEndTime) {
578:       scaledRewardRate = (_amount * SCALE_FACTOR) / REWARD_DURATION;
579:     } else {
580:       uint256 _remainingReward = scaledRewardRate * (rewardEndTime - block.timestamp);
581:       scaledRewardRate = (_remainingReward + _amount * SCALE_FACTOR) / REWARD_DURATION;
582:     }
583: 
584:     rewardEndTime = block.timestamp + REWARD_DURATION;
585:     lastCheckpointTime = block.timestamp;
586: 
587:     if ((scaledRewardRate / SCALE_FACTOR) == 0) revert UniStaker__InvalidRewardRate();
588: 
589:     // This check cannot _guarantee_ sufficient rewards have been transferred to the contract,
590:     // because it cannot isolate the unclaimed rewards owed to stakers left in the balance. While
591:     // this check is useful for preventing degenerate cases, it is not sufficient. Therefore, it is
592:     // critical that only safe reward notifier contracts are approved to call this method by the
593:     // admin.
594:     if (
595:       (scaledRewardRate * REWARD_DURATION) > (REWARD_TOKEN.balanceOf(address(this)) * SCALE_FACTOR)
596:     ) revert UniStaker__InsufficientRewardBalance();
597: 
598:     emit RewardNotified(_amount, msg.sender);
599:   }
600: 
601:   /// @notice Internal method which finds the existing surrogate contract—or deploys a new one if
602:   /// none exists—for a given delegatee.
603:   /// @param _delegatee Account for which a surrogate is sought.
604:   /// @return _surrogate The address of the surrogate contract for the delegatee.
605:   function _fetchOrDeploySurrogate(address _delegatee)
606:     internal
607:     returns (DelegationSurrogate _surrogate)
608:   {
609:     _surrogate = surrogates[_delegatee];
610: 
611:     if (address(_surrogate) == address(0)) {
612:       _surrogate = new DelegationSurrogate(STAKE_TOKEN, _delegatee);
613:       surrogates[_delegatee] = _surrogate;
614:       emit SurrogateDeployed(_delegatee, address(_surrogate));
615:     }
616:   }
617: 
618:   /// @notice Internal convenience method which calls the `transferFrom` method on the stake token
619:   /// contract and reverts on failure.
620:   /// @param _from Source account from which stake token is to be transferred.
621:   /// @param _to Destination account of the stake token which is to be transferred.
622:   /// @param _value Quantity of stake token which is to be transferred.
623:   function _stakeTokenSafeTransferFrom(address _from, address _to, uint256 _value) internal {
624:     SafeERC20.safeTransferFrom(IERC20(address(STAKE_TOKEN)), _from, _to, _value);
625:   }
626: 
627:   /// @notice Internal method which generates and returns a unique, previously unused deposit
628:   /// identifier.
629:   /// @return _depositId Previously unused deposit identifier.
630:   function _useDepositId() internal returns (DepositIdentifier _depositId) {
631:     _depositId = nextDepositId;
632:     nextDepositId = DepositIdentifier.wrap(DepositIdentifier.unwrap(_depositId) + 1);
633:   }
634: 
635:   /// @notice Internal convenience methods which performs the staking operations.
636:   /// @dev This method must only be called after proper authorization has been completed.
637:   /// @dev See public stake methods for additional documentation.
638:   function _stake(address _depositor, uint256 _amount, address _delegatee, address _beneficiary)
639:     internal
640:     returns (DepositIdentifier _depositId)
641:   {
642:     _revertIfAddressZero(_delegatee);
643:     _revertIfAddressZero(_beneficiary);
644: 
645:     _checkpointGlobalReward();
646:     _checkpointReward(_beneficiary);
647: 
648:     DelegationSurrogate _surrogate = _fetchOrDeploySurrogate(_delegatee);
649:     _depositId = _useDepositId();
650: 
651:     totalStaked += _amount;
652:     depositorTotalStaked[_depositor] += _amount;
653:     earningPower[_beneficiary] += _amount;
654:     deposits[_depositId] = Deposit({
655:       balance: _amount,
656:       owner: _depositor,
657:       delegatee: _delegatee,
658:       beneficiary: _beneficiary
659:     });
660:     _stakeTokenSafeTransferFrom(_depositor, address(_surrogate), _amount);
661:     emit StakeDeposited(_depositor, _depositId, _amount, _amount);
662:     emit BeneficiaryAltered(_depositId, address(0), _beneficiary);
663:     emit DelegateeAltered(_depositId, address(0), _delegatee);
664:   }
665: 
666:   /// @notice Internal convenience method which adds more stake to an existing deposit.
667:   /// @dev This method must only be called after proper authorization has been completed.
668:   /// @dev See public stakeMore methods for additional documentation.
669:   function _stakeMore(Deposit storage deposit, DepositIdentifier _depositId, uint256 _amount)
670:     internal
671:   {
672:     _checkpointGlobalReward();
673:     _checkpointReward(deposit.beneficiary);
674: 
675:     DelegationSurrogate _surrogate = surrogates[deposit.delegatee];
676: 
677:     totalStaked += _amount;
678:     depositorTotalStaked[deposit.owner] += _amount;
679:     earningPower[deposit.beneficiary] += _amount;
680:     deposit.balance += _amount;
681:     _stakeTokenSafeTransferFrom(deposit.owner, address(_surrogate), _amount);
682:     emit StakeDeposited(deposit.owner, _depositId, _amount, deposit.balance);
683:   }
684: 
685:   /// @notice Internal convenience method which alters the delegatee of an existing deposit.
686:   /// @dev This method must only be called after proper authorization has been completed.
687:   /// @dev See public alterDelegatee methods for additional documentation.
688:   function _alterDelegatee(
689:     Deposit storage deposit,
690:     DepositIdentifier _depositId,
691:     address _newDelegatee
692:   ) internal {
693:     _revertIfAddressZero(_newDelegatee);
694:     DelegationSurrogate _oldSurrogate = surrogates[deposit.delegatee];
695:     emit DelegateeAltered(_depositId, deposit.delegatee, _newDelegatee);
696:     deposit.delegatee = _newDelegatee;
697:     DelegationSurrogate _newSurrogate = _fetchOrDeploySurrogate(_newDelegatee);
698:     _stakeTokenSafeTransferFrom(address(_oldSurrogate), address(_newSurrogate), deposit.balance);
699:   }
700: 
701:   /// @notice Internal convenience method which alters the beneficiary of an existing deposit.
702:   /// @dev This method must only be called after proper authorization has been completed.
703:   /// @dev See public alterBeneficiary methods for additional documentation.
704:   function _alterBeneficiary(
705:     Deposit storage deposit,
706:     DepositIdentifier _depositId,
707:     address _newBeneficiary
708:   ) internal {
709:     _revertIfAddressZero(_newBeneficiary);
710:     _checkpointGlobalReward();
711:     _checkpointReward(deposit.beneficiary);
712:     earningPower[deposit.beneficiary] -= deposit.balance;
713: 
714:     _checkpointReward(_newBeneficiary);
715:     emit BeneficiaryAltered(_depositId, deposit.beneficiary, _newBeneficiary);
716:     deposit.beneficiary = _newBeneficiary;
717:     earningPower[_newBeneficiary] += deposit.balance;
718:   }
719: 
720:   /// @notice Internal convenience method which withdraws the stake from an existing deposit.
721:   /// @dev This method must only be called after proper authorization has been completed.
722:   /// @dev See public withdraw methods for additional documentation.
723:   function _withdraw(Deposit storage deposit, DepositIdentifier _depositId, uint256 _amount)
724:     internal
725:   {
726:     _checkpointGlobalReward();
727:     _checkpointReward(deposit.beneficiary);
728: 
729:     deposit.balance -= _amount; // overflow prevents withdrawing more than balance
730:     totalStaked -= _amount;
731:     depositorTotalStaked[deposit.owner] -= _amount;
732:     earningPower[deposit.beneficiary] -= _amount;
733:     _stakeTokenSafeTransferFrom(address(surrogates[deposit.delegatee]), deposit.owner, _amount);
734:     emit StakeWithdrawn(_depositId, _amount, deposit.balance);
735:   }
736: 
737:   /// @notice Internal convenience method which claims earned rewards.
738:   /// @dev This method must only be called after proper authorization has been completed.
739:   /// @dev See public claimReward methods for additional documentation.
740:   function _claimReward(address _beneficiary) internal {
741:     _checkpointGlobalReward();
742:     _checkpointReward(_beneficiary);
743: 
744:     uint256 _reward = unclaimedRewardCheckpoint[_beneficiary];
745:     if (_reward == 0) return;
746:     unclaimedRewardCheckpoint[_beneficiary] = 0;
747:     emit RewardClaimed(_beneficiary, _reward);
748: 
749:     SafeERC20.safeTransfer(REWARD_TOKEN, _beneficiary, _reward);
750:   }
751: 
752:   /// @notice Checkpoints the global reward per token accumulator.
753:   function _checkpointGlobalReward() internal {
754:     rewardPerTokenAccumulatedCheckpoint = rewardPerTokenAccumulated();
755:     lastCheckpointTime = lastTimeRewardDistributed();
756:   }
757: 
758:   /// @notice Checkpoints the unclaimed rewards and reward per token accumulator of a given
759:   /// beneficiary account.
760:   /// @param _beneficiary The account for which reward parameters will be checkpointed.
761:   /// @dev This is a sensitive internal helper method that must only be called after global rewards
762:   /// accumulator has been checkpointed. It assumes the global `rewardPerTokenCheckpoint` is up to
763:   /// date.
764:   function _checkpointReward(address _beneficiary) internal {
765:     unclaimedRewardCheckpoint[_beneficiary] = unclaimedReward(_beneficiary);
766:     beneficiaryRewardPerTokenCheckpoint[_beneficiary] = rewardPerTokenAccumulatedCheckpoint;
767:   }
768: 
769:   /// @notice Internal helper method which sets the admin address.
770:   /// @param _newAdmin Address of the new admin.
771:   function _setAdmin(address _newAdmin) internal {
772:     _revertIfAddressZero(_newAdmin);
773:     emit AdminSet(admin, _newAdmin);
774:     admin = _newAdmin;
775:   }
776: 
777:   /// @notice Internal helper method which reverts UniStaker__Unauthorized if the message sender is
778:   /// not the admin.
779:   function _revertIfNotAdmin() internal view {
780:     if (msg.sender != admin) revert UniStaker__Unauthorized("not admin", msg.sender);
781:   }
782: 
783:   /// @notice Internal helper method which reverts UniStaker__Unauthorized if the alleged owner is
784:   /// not the true owner of the deposit.
785:   /// @param deposit Deposit to validate.
786:   /// @param owner Alleged owner of deposit.
787:   function _revertIfNotDepositOwner(Deposit storage deposit, address owner) internal view {
788:     if (owner != deposit.owner) revert UniStaker__Unauthorized("not owner", owner);
789:   }
790: 
791:   /// @notice Internal helper method which reverts with UniStaker__InvalidAddress if the account in
792:   /// question is address zero.
793:   /// @param _account Account to verify.
794:   function _revertIfAddressZero(address _account) internal pure {
795:     if (_account == address(0)) revert UniStaker__InvalidAddress();
796:   }
797: 
798:   /// @notice Internal helper method which reverts with UniStaker__InvalidSignature if the signature
799:   /// is invalid.
800:   /// @param _signer Address of the signer.
801:   /// @param _hash Hash of the message.
802:   /// @param _signature Signature to validate.
803:   function _revertIfSignatureIsNotValidNow(address _signer, bytes32 _hash, bytes memory _signature)
804:     internal
805:     view
806:   {
807:     bool _isValid = SignatureChecker.isValidSignatureNow(_signer, _hash, _signature);
808:     if (!_isValid) revert UniStaker__InvalidSignature();
809:   }
810: }
811: 

```


*GitHub* : [1](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L1-L1)

```solidity
1: // SPDX-License-Identifier: AGPL-3.0-only
2: pragma solidity 0.8.23;
3: 
4: import {IUniswapV3PoolOwnerActions} from "src/interfaces/IUniswapV3PoolOwnerActions.sol";
5: import {IUniswapV3FactoryOwnerActions} from "src/interfaces/IUniswapV3FactoryOwnerActions.sol";
6: import {INotifiableRewardReceiver} from "src/interfaces/INotifiableRewardReceiver.sol";
7: import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";
8: import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol";
9: 
10: /// @title V3FactoryOwner
11: /// @author ScopeLift
12: /// @notice A contract that can serve as the owner of the Uniswap v3 factory. This contract itself
13: /// has an admin. That admin retains the exclusive right to call privileged methods on the v3
14: /// factory, and on pools which it has deployed, via passthrough methods. This includes the ability
15: /// to enable fee amounts on the factory, and set protocol fees on individual pools. The admin can
16: /// also set a new admin.
17: ///
18: /// One privileged function that is _not_ reserved exclusively for the admin is the ability to
19: /// collect protocol fees from a pool. This method is instead exposed publicly by this contract's
20: /// `claimFees` method. That method collects fees from the protocol as long as the caller pays for
21: /// them with a transfer of a designated amount of a designated token. That payout is forwarded
22: /// to a reward receiver.
23: ///
24: /// In the context of the broader system, it is expected that this contract's REWARD_RECEIVER is
25: /// a deployment of the `UniStaker` contract. It is expected the admin of this contract will be the
26: /// Uniswap Governance timelock. It is expected governance will transfer
27: /// ownership of the factory to an instance of this contract, and turn on protocol fees for select
28: /// pools. It is also expected a competitive market of seekers will emerge racing to "buy" the fees
29: /// for an arbitrage opportunity.
30: contract V3FactoryOwner {
31:   using SafeERC20 for IERC20;
32: 
33:   /// @notice Emitted when a user pays the payout and claims the fees from a given v3 pool.
34:   /// @param pool The v3 pool from which protocol fees were claimed.
35:   /// @param caller The address which executes the call to claim the fees.
36:   /// @param recipient The address to which the claimed pool fees are sent.
37:   /// @param amount0 The raw amount of token0 fees claimed from the pool.
38:   /// @param amount1 The raw amount token1 fees claimed from the pool.
39:   event FeesClaimed(
40:     address indexed pool,
41:     address indexed caller,
42:     address indexed recipient,
43:     uint256 amount0,
44:     uint256 amount1
45:   );
46: 
47:   /// @notice Emitted when the existing admin designates a new address as the admin.
48:   event AdminSet(address indexed oldAmin, address indexed newAdmin);
49: 
50:   /// @notice Emitted when the admin updates the payout amount.
51:   event PayoutAmountSet(uint256 indexed oldPayoutAmount, uint256 indexed newPayoutAmount);
52: 
53:   /// @notice Thrown when an unauthorized account calls a privileged function.
54:   error V3FactoryOwner__Unauthorized();
55: 
56:   /// @notice Thrown if the proposed admin is the zero address.
57:   error V3FactoryOwner__InvalidAddress();
58: 
59:   /// @notice Thrown if the proposed payout amount is zero.
60:   error V3FactoryOwner__InvalidPayoutAmount();
61: 
62:   /// @notice Thrown when the fees collected from a pool are less than the caller expects.
63:   error V3FactoryOwner__InsufficientFeesCollected();
64: 
65:   /// @notice The instance of the Uniswap v3 factory contract which this contract will own.
66:   IUniswapV3FactoryOwnerActions public immutable FACTORY;
67: 
68:   /// @notice The ERC-20 token which must be used to pay for fees when claiming pool fees.
69:   IERC20 public immutable PAYOUT_TOKEN;
70: 
71:   /// @notice The raw amount of the payout token which is paid by a user when claiming pool fees.
72:   uint256 public payoutAmount;
73: 
74:   /// @notice The contract that receives the payout and is notified via method call, when pool fees
75:   /// are claimed.
76:   INotifiableRewardReceiver public immutable REWARD_RECEIVER;
77: 
78:   /// @notice The address that can call privileged methods, including passthrough owner functions
79:   /// to the factory itself.
80:   address public admin;
81: 
82:   /// @param _admin The initial admin address for this deployment. Cannot be zero address.
83:   /// @param _factory The v3 factory instance for which this deployment will serve as owner.
84:   /// @param _payoutToken The ERC-20 token in which payouts will be denominated.
85:   /// @param _payoutAmount The initial raw amount of the payout token required to claim fees from
86:   /// a pool.
87:   /// @param _rewardReceiver The contract that will receive the payout when fees are claimed.
88:   constructor(
89:     address _admin,
90:     IUniswapV3FactoryOwnerActions _factory,
91:     IERC20 _payoutToken,
92:     uint256 _payoutAmount,
93:     INotifiableRewardReceiver _rewardReceiver
94:   ) {
95:     if (_admin == address(0)) revert V3FactoryOwner__InvalidAddress();
96:     if (_payoutAmount == 0) revert V3FactoryOwner__InvalidPayoutAmount();
97: 
98:     admin = _admin;
99:     FACTORY = _factory;
100:     PAYOUT_TOKEN = _payoutToken;
101:     payoutAmount = _payoutAmount;
102:     REWARD_RECEIVER = _rewardReceiver;
103: 
104:     emit AdminSet(address(0), _admin);
105:     emit PayoutAmountSet(0, _payoutAmount);
106:   }
107: 
108:   /// @notice Pass the admin role to a new address. Must be called by the existing admin.
109:   /// @param _newAdmin The address that will be the admin after this call completes.
110:   function setAdmin(address _newAdmin) external {
111:     _revertIfNotAdmin();
112:     if (_newAdmin == address(0)) revert V3FactoryOwner__InvalidAddress();
113:     emit AdminSet(admin, _newAdmin);
114:     admin = _newAdmin;
115:   }
116: 
117:   /// @notice Update the payout amount to a new value. Must be called by admin.
118:   /// @param _newPayoutAmount The value that will be the new payout amount.
119:   function setPayoutAmount(uint256 _newPayoutAmount) external {
120:     _revertIfNotAdmin();
121:     if (_newPayoutAmount == 0) revert V3FactoryOwner__InvalidPayoutAmount();
122:     emit PayoutAmountSet(payoutAmount, _newPayoutAmount);
123:     payoutAmount = _newPayoutAmount;
124:   }
125: 
126:   /// @notice Passthrough method that enables a fee amount on the factory. Must be called by the
127:   /// admin.
128:   /// @param _fee The fee param to forward to the factory.
129:   /// @param _tickSpacing The tick spacing param to forward to the factory.
130:   /// @dev See docs on IUniswapV3FactoryOwnerActions for more information on forwarded params.
131:   function enableFeeAmount(uint24 _fee, int24 _tickSpacing) external {
132:     _revertIfNotAdmin();
133:     FACTORY.enableFeeAmount(_fee, _tickSpacing);
134:   }
135: 
136:   /// @notice Passthrough method that sets the protocol fee on a v3 pool. Must be called by the
137:   /// admin.
138:   /// @param _pool The Uniswap v3 pool on which the protocol fee is being set.
139:   /// @param _feeProtocol0 The fee protocol 0 param to forward to the pool.
140:   /// @param _feeProtocol1 The fee protocol 1 parm to forward to the pool.
141:   /// @dev See docs on IUniswapV3PoolOwnerActions for more information on forwarded params.
142:   function setFeeProtocol(
143:     IUniswapV3PoolOwnerActions _pool,
144:     uint8 _feeProtocol0,
145:     uint8 _feeProtocol1
146:   ) external {
147:     _revertIfNotAdmin();
148:     _pool.setFeeProtocol(_feeProtocol0, _feeProtocol1);
149:   }
150: 
151:   /// @notice Public method that allows any caller to claim the protocol fees accrued by a given
152:   /// Uniswap v3 pool contract. Caller must pre-approve this factory owner contract on the payout
153:   /// token contract for at least the payout amount, which is transferred from the caller to the
154:   /// reward receiver. The reward receiver is "notified" of the payout via a method call. The
155:   /// protocol fees collected are sent to a receiver of the caller's specification.
156:   ///
157:   /// A quick example can help illustrate why an external party, such as an MEV searcher, would be
158:   /// incentivized to call this method. Imagine, purely for the sake of example, that protocol fees
159:   /// have been activated for the USDC/USDT stablecoin v3 pool. Imagine also the payout token and
160:   /// payout amount are WETH and 10e18 respectively. Finally, assume the spot USD price of ETH is
161:   /// $2,500, and both stablecoins are trading at their $1 peg. As regular users trade against the
162:   /// USDC/USDT pool, protocol fees amass in the pool contract in both stablecoins. Once the fees
163:   /// in the pool total more than 25,000 in stablecoins, it becomes profitable for an external
164:   /// party to arbitrage the fees by calling this method, paying 10 WETH (worth $25K) and getting
165:   /// more than $25K worth of stablecoins. (This ignores other details, which real searchers would
166:   /// take into consideration, such as the gas/builder fee they would pay to call the method).
167:   ///
168:   /// The same mechanic applies regardless of what the pool currencies, payout token, or payout
169:   /// amount are. Effectively, as each pool accrues fees, it eventually becomes possible to "buy"
170:   /// the pool fees for less than they are valued by "paying" the the payout amount of the payout
171:   /// token.
172:   /// @param _pool The Uniswap v3 pool contract from which protocol fees are being collected.
173:   /// @param _recipient The address to which collected protocol fees will be transferred.
174:   /// @param _amount0Requested The amount0Requested param to forward to the pool's collectProtocol
175:   /// method.
176:   /// @param _amount1Requested The amount1Requested param to forward to the pool's collectProtocol
177:   /// method.
178:   /// @return _amount0 The amount0 fees collected, returned by the pool's collectProtocol method.
179:   /// @return _amount1 The amount1 fees collected, returned by the pool's collectProtocol method.
180:   /// @dev See docs on IUniswapV3PoolOwnerActions for more information on forwarded params.
181:   function claimFees(
182:     IUniswapV3PoolOwnerActions _pool,
183:     address _recipient,
184:     uint128 _amount0Requested,
185:     uint128 _amount1Requested
186:   ) external returns (uint128, uint128) {
187:     PAYOUT_TOKEN.safeTransferFrom(msg.sender, address(REWARD_RECEIVER), payoutAmount);
188:     REWARD_RECEIVER.notifyRewardAmount(payoutAmount);
189:     (uint128 _amount0, uint128 _amount1) =
190:       _pool.collectProtocol(_recipient, _amount0Requested, _amount1Requested);
191: 
192:     // Protect the caller from receiving less than requested. See `collectProtocol` for context.
193:     if (_amount0 < _amount0Requested || _amount1 < _amount1Requested) {
194:       revert V3FactoryOwner__InsufficientFeesCollected();
195:     }
196:     emit FeesClaimed(address(_pool), msg.sender, _recipient, _amount0, _amount1);
197:     return (_amount0, _amount1);
198:   }
199: 
200:   /// @notice Ensures the msg.sender is the contract admin and reverts otherwise.
201:   /// @dev Place inside external methods to make them admin-only.
202:   function _revertIfNotAdmin() internal view {
203:     if (msg.sender != admin) revert V3FactoryOwner__Unauthorized();
204:   }
205: }
206: 

```


*GitHub* : [1](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L1-L1)

```solidity
1: // SPDX-License-Identifier: AGPL-3.0-only
2: pragma solidity ^0.8.23;
3: 
4: /// @notice A subset of the ERC20Votes-style governance token to which UNI conforms.
5: /// Methods related to standard ERC20 functionality and to delegation are included.
6: /// These methods are needed in the context of this system. Methods related to check pointing,
7: /// past voting weights, and other functionality are omitted.
8: interface IERC20Delegates {
9:   // ERC20 related methods
10:   function allowance(address account, address spender) external view returns (uint256);
11:   function approve(address spender, uint256 rawAmount) external returns (bool);
12:   function balanceOf(address account) external view returns (uint256);
13:   function decimals() external view returns (uint8);
14:   function symbol() external view returns (string memory);
15:   function totalSupply() external view returns (uint256);
16:   function transfer(address dst, uint256 rawAmount) external returns (bool);
17:   function transferFrom(address src, address dst, uint256 rawAmount) external returns (bool);
18:   function permit(
19:     address owner,
20:     address spender,
21:     uint256 rawAmount,
22:     uint256 deadline,
23:     uint8 v,
24:     bytes32 r,
25:     bytes32 s
26:   ) external;
27: 
28:   // ERC20Votes delegation methods
29:   function delegate(address delegatee) external;
30:   function delegates(address) external view returns (address);
31: }
32: 

```


*GitHub* : [1](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IERC20Delegates.sol#L1-L1)

```solidity
1: // SPDX-License-Identifier: AGPL-3.0-only
2: pragma solidity 0.8.23;
3: 
4: import {IERC20Delegates} from "src/interfaces/IERC20Delegates.sol";
5: 
6: /// @title DelegationSurrogate
7: /// @author ScopeLift
8: /// @notice A dead-simple contract whose only purpose is to hold governance tokens on behalf of
9: /// users while delegating voting power to one specific delegatee. This is needed because a single
10: /// address can only delegate its (full) token weight to a single address at a time. Thus, when a
11: /// contract holds governance tokens in a pool on behalf of disparate token holders, those holders
12: /// are typically disenfranchised from their governance rights.
13: ///
14: /// If a pool contract deploys a DelegationSurrogate for each delegatee, and transfers each
15: /// depositor's tokens to the appropriate  surrogate—or deploys it on their behalf—users can retain
16: /// their governance rights.
17: ///
18: /// The pool contract deploying the surrogates must handle all accounting. The surrogate simply
19: /// delegates its voting weight and max-approves its deployer to allow tokens to be reclaimed.
20: contract DelegationSurrogate {
21:   /// @param _token The governance token that will be held by this surrogate
22:   /// @param _delegatee The address of the would-be voter to which this surrogate will delegate its
23:   /// voting weight. 100% of all voting tokens held by this surrogate will be delegated to this
24:   /// address.
25:   constructor(IERC20Delegates _token, address _delegatee) {
26:     _token.delegate(_delegatee);
27:     _token.approve(msg.sender, type(uint256).max);
28:   }
29: }
30: 

```


*GitHub* : [1](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L1-L1)

```solidity
1: // SPDX-License-Identifier: GPL-2.0-or-later
2: pragma solidity ^0.8.23;
3: 
4: /// @title Permissioned pool actions
5: /// @notice Contains pool methods that may only be called by the factory owner
6: /// @dev Vendored from
7: /// https://github.com/Uniswap/v3-core/blob/d8b1c635c275d2a9450bd6a78f3fa2484fef73eb/contracts/interfaces/pool/IUniswapV3PoolOwnerActions.sol
8: interface IUniswapV3PoolOwnerActions {
9:   /// @notice Set the denominator of the protocol's % share of the fees
10:   /// @param feeProtocol0 new protocol fee for token0 of the pool
11:   /// @param feeProtocol1 new protocol fee for token1 of the pool
12:   function setFeeProtocol(uint8 feeProtocol0, uint8 feeProtocol1) external;
13: 
14:   /// @notice Collect the protocol fee accrued to the pool
15:   /// @param recipient The address to which collected protocol fees should be sent
16:   /// @param amount0Requested The maximum amount of token0 to send, can be 0 to collect fees in only
17:   /// token1
18:   /// @param amount1Requested The maximum amount of token1 to send, can be 0 to collect fees in only
19:   /// token0
20:   /// @return amount0 The protocol fee collected in token0
21:   /// @return amount1 The protocol fee collected in token1
22:   function collectProtocol(address recipient, uint128 amount0Requested, uint128 amount1Requested)
23:     external
24:     returns (uint128 amount0, uint128 amount1);
25: }
26: 

```


*GitHub* : [1](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3PoolOwnerActions.sol#L1-L1)

### [N-39]<a name="n-39"></a> Contracts should have full test coverage

Attaining 100% code coverage is not an assurance of a bug-free codebase, but it significantly improves the likelihood of identifying simple bugs and aids in maintaining a stable codebase by preventing regressions during code modifications. Additionally, to achieve complete coverage, code writers usually have to structure their code more modularly, which implies testing each component independently. This reduces the complex interdependencies between modules and layers, creating a more understandable and auditable codebase. Consequently, this practice aids in enhancing code maintainability and reduces the risk of introducing bugs during future changes.

*There are 3 instance(s) of this issue:*

```solidity
31: contract UniStaker is INotifiableRewardReceiver, Multicall, EIP712, Nonces  // <= FOUND

```


*GitHub* : [31](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L31-L31)

```solidity
30: contract V3FactoryOwner  // <= FOUND

```


*GitHub* : [30](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L30-L30)

```solidity
20: contract DelegationSurrogate  // <= FOUND

```


*GitHub* : [20](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L20-L20)

### [N-40]<a name="n-40"></a> Consider using named function calls

Named function calls in Solidity greatly improve code readability by explicitly mapping arguments to their respective parameter names. This clarity becomes critical when dealing with functions that have numerous or complex parameters, reducing potential errors due to misordered arguments. Therefore, adopting named function calls contributes to more maintainable and less error-prone code.

*There are 10 instance(s) of this issue:*

```solidity
333:     _depositId = _stake(_depositor, _amount, _delegatee, _beneficiary); // <= FOUND

```


*GitHub* : [333](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L333-L333)

```solidity
345:     _stakeMore(deposit, _depositId, _amount); // <= FOUND

```


*GitHub* : [345](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L345-L345)

```solidity
345: 
346:     _stakeMore(deposit, _depositId, _amount); // <= FOUND

```


*GitHub* : [345](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L345-L346)

```solidity
413:     _alterDelegatee(deposit, _depositId, _newDelegatee); // <= FOUND

```


*GitHub* : [413](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L413-L413)

```solidity
413: 
414:     _alterDelegatee(deposit, _depositId, _newDelegatee); // <= FOUND

```


*GitHub* : [413](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L413-L414)

```solidity
456:     _alterBeneficiary(deposit, _depositId, _newBeneficiary); // <= FOUND

```


*GitHub* : [456](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L456-L456)

```solidity
456: 
457:     _alterBeneficiary(deposit, _depositId, _newBeneficiary); // <= FOUND

```


*GitHub* : [456](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L456-L457)

```solidity
502:     _withdraw(deposit, _depositId, _amount); // <= FOUND

```


*GitHub* : [502](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L502-L502)

```solidity
502: 
503:     _withdraw(deposit, _depositId, _amount); // <= FOUND

```


*GitHub* : [502](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L502-L503)

```solidity
660:     _stakeTokenSafeTransferFrom(_depositor, address(_surrogate), _amount); // <= FOUND

```


*GitHub* : [660](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L660-L660)

### [N-41]<a name="n-41"></a> Lack Of Brace Spacing

Lack of brace spacing in coding refers to the absence of spaces around braces, which can hinder code readability. In Solidity, as in many programming languages, spacing can enhance the visual distinction between different parts of the code, making it easier to follow. A lack of spacing can lead to a dense, confusing appearance. The resolution to this issue is to follow a consistent style guide that defines rules for brace spacing. By including spaces around braces, such as `{ statement }` instead of `{statement}`, developers can ensure that the code is more legible and maintainable, especially in larger codebases.

*There are 12 instance(s) of this issue:*

```solidity
4: 
5: import {DelegationSurrogate} from "src/DelegationSurrogate.sol"; // <= FOUND

```


*GitHub* : [4](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L4-L5)

```solidity
5: import {INotifiableRewardReceiver} from "src/interfaces/INotifiableRewardReceiver.sol"; // <= FOUND

```


*GitHub* : [5](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L5-L5)

```solidity
6: import {IERC20Delegates} from "src/interfaces/IERC20Delegates.sol"; // <= FOUND

```


*GitHub* : [6](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L6-L6)

```solidity
7: import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol"; // <= FOUND

```


*GitHub* : [7](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L7-L7)

```solidity
8: import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol"; // <= FOUND

```


*GitHub* : [8](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L8-L8)

```solidity
9: import {Multicall} from "openzeppelin/utils/Multicall.sol"; // <= FOUND

```


*GitHub* : [9](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L9-L9)

```solidity
10: import {Nonces} from "openzeppelin/utils/Nonces.sol"; // <= FOUND

```


*GitHub* : [10](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L10-L10)

```solidity
11: import {SignatureChecker} from "openzeppelin/utils/cryptography/SignatureChecker.sol"; // <= FOUND

```


*GitHub* : [11](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L11-L11)

```solidity
12: import {EIP712} from "openzeppelin/utils/cryptography/EIP712.sol"; // <= FOUND

```


*GitHub* : [12](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L12-L12)

```solidity
4: 
5: import {IUniswapV3PoolOwnerActions} from "src/interfaces/IUniswapV3PoolOwnerActions.sol"; // <= FOUND

```


*GitHub* : [4](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L4-L5)

```solidity
5: import {IUniswapV3FactoryOwnerActions} from "src/interfaces/IUniswapV3FactoryOwnerActions.sol"; // <= FOUND

```


*GitHub* : [5](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L5-L5)

```solidity
6: 
7: import {IERC20Delegates} from "src/interfaces/IERC20Delegates.sol"; // <= FOUND

```


*GitHub* : [6](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L6-L7)

### [N-42]<a name="n-42"></a> If statement control structures do not comply with best practices

If statements which include a single line do not need to have curly brackets, however according to the Solidiity style guide the line of code executed upon the if statement condition being met should still be on the next line, not on the same line as the if statement declaration.

*There are 15 instance(s) of this issue:*

```solidity
221:     if (rewardEndTime <= block.timestamp) return rewardEndTime; // <= FOUND

```


*GitHub* : [221](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L221-L221)

```solidity
230:     if (totalStaked == 0) return rewardPerTokenAccumulatedCheckpoint; // <= FOUND

```


*GitHub* : [230](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L230-L230)

```solidity
571:     if (!isRewardNotifier[msg.sender]) revert UniStaker__Unauthorized("not notifier", msg.sender); // <= FOUND

```


*GitHub* : [571](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L571-L571)

```solidity
587: 
588:     if ((scaledRewardRate / SCALE_FACTOR) == 0) revert UniStaker__InvalidRewardRate(); // <= FOUND

```


*GitHub* : [587](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L587-L588)

```solidity
594: 
600:     if ( // <= FOUND
601:       (scaledRewardRate * REWARD_DURATION) > (REWARD_TOKEN.balanceOf(address(this)) * SCALE_FACTOR)
602:     ) revert UniStaker__InsufficientRewardBalance(); // <= FOUND

```


*GitHub* : [594](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L594-L602)

```solidity
745:     if (_reward == 0) return; // <= FOUND

```


*GitHub* : [745](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L745-L745)

```solidity
780:     if (msg.sender != admin) revert UniStaker__Unauthorized("not admin", msg.sender); // <= FOUND

```


*GitHub* : [780](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L780-L780)

```solidity
788:     if (owner != deposit.owner) revert UniStaker__Unauthorized("not owner", owner); // <= FOUND

```


*GitHub* : [788](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L788-L788)

```solidity
795:     if (_account == address(0)) revert UniStaker__InvalidAddress(); // <= FOUND

```


*GitHub* : [795](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L795-L795)

```solidity
808:     if (!_isValid) revert UniStaker__InvalidSignature(); // <= FOUND

```


*GitHub* : [808](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L808-L808)

```solidity
95:     if (_admin == address(0)) revert V3FactoryOwner__InvalidAddress(); // <= FOUND

```


*GitHub* : [95](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L95-L95)

```solidity
96:     if (_payoutAmount == 0) revert V3FactoryOwner__InvalidPayoutAmount(); // <= FOUND

```


*GitHub* : [96](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L96-L96)

```solidity
112:     if (_newAdmin == address(0)) revert V3FactoryOwner__InvalidAddress(); // <= FOUND

```


*GitHub* : [112](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L112-L112)

```solidity
121:     if (_newPayoutAmount == 0) revert V3FactoryOwner__InvalidPayoutAmount(); // <= FOUND

```


*GitHub* : [121](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L121-L121)

```solidity
203:     if (msg.sender != admin) revert V3FactoryOwner__Unauthorized(); // <= FOUND

```


*GitHub* : [203](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L203-L203)

### [N-43]<a name="n-43"></a> Incorrect withdraw declaration

In Solidity, it's essential for clarity and interoperability to correctly specify return types in function declarations. If the `withdraw` function is expected to return a `bool` to indicate success or failure, its omission could lead to ambiguity or unexpected behavior when interacting with or calling this function from other contracts or off-chain systems. Missing return values can mislead developers and potentially lead to contract integrations built on incorrect assumptions. To resolve this, the function declaration for `withdraw` should be modified to explicitly include the `bool` return type, ensuring clarity and correctness in contract interactions.

*There are 1 instance(s) of this issue:*

```solidity
499:   function withdraw(DepositIdentifier _depositId, uint256 _amount) external  // <= FOUND

```


*GitHub* : [499](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L499-L499)

### [N-44]<a name="n-44"></a> Consider adding formal verification proofs



*There are 3 instance(s) of this issue:*

```solidity
31: contract UniStaker is INotifiableRewardReceiver, Multicall, EIP712, Nonces  // <= FOUND

```


*GitHub* : [31](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L31-L31)

```solidity
30: contract V3FactoryOwner  // <= FOUND

```


*GitHub* : [30](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L30-L30)

```solidity
20: contract DelegationSurrogate  // <= FOUND

```


*GitHub* : [20](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L20-L20)

### [N-45]<a name="n-45"></a> Missing events in sensitive functions

Sensitive setter functions in smart contracts often alter critical state variables. Without events emitted in these functions, external observers or dApps cannot easily track or react to these state changes. Missing events can obscure contract activity, hampering transparency and making integration more challenging. To resolve this, incorporate appropriate event emissions within these functions. Events offer an efficient way to log crucial changes, aiding in real-time tracking and post-transaction verification.

*There are 2 instance(s) of this issue:*

```solidity
201:   function setAdmin(address _newAdmin) external { // <= FOUND
202:     _revertIfNotAdmin();
203:     _setAdmin(_newAdmin);
204:   }

```


*GitHub* : [201](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L201-L201)

```solidity
142:   function setFeeProtocol( // <= FOUND
143:     IUniswapV3PoolOwnerActions _pool,
144:     uint8 _feeProtocol0,
145:     uint8 _feeProtocol1
146:   ) external {
147:     _revertIfNotAdmin();
148:     _pool.setFeeProtocol(_feeProtocol0, _feeProtocol1);
149:   }

```


*GitHub* : [142](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L142-L142)

### [N-46]<a name="n-46"></a> Ensure block.timestamp is only used in long time intervals

`block.timestamp` represents the current block's timestamp and can be influenced, within limits, by miners. For short time intervals, this malleability can be exploited, potentially allowing miners to manipulate contract behavior. For instance, they might fast-forward an expiration or delay an event. When designing smart contracts, if precise time checks are needed for short intervals, alternatives like block numbers can be considered. However, for longer durations where a few seconds of deviation is inconsequential, `block.timestamp` is generally safe and efficient. Always assess the implications of time manipulations for the specific use-case before utilizing `block.timestamp`. In practice, if you're using block.timestamp to measure intervals that are a matter of days, weeks, or longer, the potential manipulation by miners becomes less significant. Always prioritize the security and integrity of your smart contract operations when making these decisions.

*There are 1 instance(s) of this issue:*

```solidity
584: 
585:     rewardEndTime = block.timestamp + REWARD_DURATION; // <= FOUND

```


*GitHub* : [584](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L584-L585)

### [N-47]<a name="n-47"></a> It is best practice to use linear inheritance

In Solidity, complex inheritance structures can obfuscate code understanding, introducing potential security risks. Multiple inheritance, especially with overlapping function names or state variables, can cause unintentional overrides or ambiguous behavior. Resolution: Strive for linear and simple inheritance chains. Avoid diamond or circular inheritance patterns. Clearly document the purpose and relationships of base contracts, ensuring that overrides are intentional. Tools like Remix or Hardhat can visualize inheritance chains, assisting in verification. Keeping inheritance streamlined aids in better code readability, reduces potential errors, and ensures smoother audits and upgrades.

*There are 1 instance(s) of this issue:*

```solidity
31: contract UniStaker is INotifiableRewardReceiver, Multicall, EIP712, Nonces  // <= FOUND

```


*GitHub* : [31](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L31-L31)

### [N-48]<a name="n-48"></a> Create methods are suspicious of the reorg attack

"Create" methods, which deploy contracts via " = new <contract>", are at risk from re-org attacks since the derived contract address is solely based on the Factory's nonce. Re-orgs, chain reorganizations, can occur across all EVM chains. The vulnerability amplifies when deploying contracts on EVM-compatible L2 solutions like Arbitrum and Polygon, which are notably susceptible to re-org attacks. Ethereum, a primary deployment target, has already experienced re-org events.

To bolster security against re-org threats, developers are advised to use the `create2` method for contract deployments instead of the basic `create`. By using `create2` with a salt that includes `msg.sender`, the contract's address derivation becomes more predictable and less prone to unexpected changes due to re-orgs. This strategy not only provides a more consistent deployment pattern but also minimizes risks associated with potential blockchain reorganizations.

*There are 1 instance(s) of this issue:*

```solidity
605:   function _fetchOrDeploySurrogate(address _delegatee)
606:     internal
607:     returns (DelegationSurrogate _surrogate)
608:   {
609:     _surrogate = surrogates[_delegatee];
610: 
611:     if (address(_surrogate) == address(0)) {
612:       _surrogate = new DelegationSurrogate(STAKE_TOKEN, _delegatee); // <= FOUND
613:       surrogates[_delegatee] = _surrogate;
614:       emit SurrogateDeployed(_delegatee, address(_surrogate));
615:     }
616:   }

```


*GitHub* : [612](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L612-L612)

### [N-49]<a name="n-49"></a> Superfluous parameter can only be one value

Using redundant parameters in smart contracts can lead to unnecessary complexity and potential vulnerabilities. When a function parameter is always constrained to a specific value due to an `if` or `require` statement, it renders the parameter superfluous. Including such parameters can be misleading to developers or users, suggesting a flexibility that doesn't exist in reality. Additionally, unnecessary parameters increase the gas cost for transactions. Resolution: Analyze the contract to identify parameters that are rendered static by conditional checks. Remove these parameters from the function signature and update the function logic accordingly. This simplifies the code, reduces gas costs, and enhances clarity and security.

*There are 1 instance(s) of this issue:*

```solidity
787:   function _revertIfNotDepositOwner(Deposit storage deposit, address owner) internal view { // <= FOUND
788:     if (owner != deposit.owner) revert UniStaker__Unauthorized("not owner", owner); // <= FOUND
789:   }

```


*GitHub* : [787](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L787-L788)

### [N-50]<a name="n-50"></a> Use the Modern Upgradeable Contract Paradigm

Modern smart contract development often employs upgradeable contract structures, utilizing proxy patterns like OpenZeppelin’s Upgradeable Contracts. This paradigm separates logic and state, allowing developers to amend and enhance the contract's functionality without altering its state or the deployed contract address. Transitioning to this approach enhances long-term maintainability.

**Resolution**: Adopt a well-established proxy pattern for upgradeability, ensuring proper initialization and employing transparent proxies to mitigate potential risks. Embrace comprehensive testing and audit practices, particularly when updating contract logic, to ensure state consistency and security are preserved across upgrades. This ensures your contract remains robust and adaptable to future requirements.

*There are 3 instance(s) of this issue:*

```solidity
31: contract UniStaker is INotifiableRewardReceiver, Multicall, EIP712, Nonces 

```


*GitHub* : [31](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L31-L31)

```solidity
30: contract V3FactoryOwner 

```


*GitHub* : [30](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L30-L30)

```solidity
20: contract DelegationSurrogate 

```


*GitHub* : [20](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L20-L20)

### [N-51]<a name="n-51"></a> Use a struct to encapsulate multiple function parameters

Using a struct to encapsulate multiple parameters in Solidity functions can significantly enhance code readability and maintainability. Instead of passing a long list of arguments, which can be error-prone and hard to manage, a struct allows grouping related data into a single, coherent entity. This approach simplifies function signatures and makes the code more organized. It also enhances code clarity, as developers can easily understand the relationship between the parameters. Moreover, it aids in future code modifications and expansions, as adding or modifying a parameter only requires changes in the struct definition, rather than in every function that uses these parameters.

*There are 3 instance(s) of this issue:*

```solidity
292:   function permitAndStake(
293:     uint256 _amount, // <= FOUND
294:     address _delegatee, // <= FOUND
295:     address _beneficiary, // <= FOUND
296:     uint256 _deadline, // <= FOUND
297:     uint8 _v, // <= FOUND
298:     bytes32 _r, // <= FOUND
299:     bytes32 _s
300:   ) external returns (DepositIdentifier _depositId) 

```


*GitHub* : [293](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L293-L298)

```solidity
315:   function stakeOnBehalf(
316:     uint256 _amount, // <= FOUND
317:     address _delegatee, // <= FOUND
318:     address _beneficiary, // <= FOUND
319:     address _depositor, // <= FOUND
320:     bytes memory _signature
321:   ) external returns (DepositIdentifier _depositId) 

```


*GitHub* : [316](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L316-L319)

```solidity
360:   function permitAndStakeMore(
361:     DepositIdentifier _depositId, // <= FOUND
362:     uint256 _amount, // <= FOUND
363:     uint256 _deadline, // <= FOUND
364:     uint8 _v, // <= FOUND
365:     bytes32 _r, // <= FOUND
366:     bytes32 _s
367:   ) external 

```


*GitHub* : [361](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L361-L365)

### [N-52]<a name="n-52"></a> Using delete instead of setting mapping to 0 saves gas



*There are 1 instance(s) of this issue:*

```solidity
746:     unclaimedRewardCheckpoint[_beneficiary] = 0; // <= FOUND

```


*GitHub* : [746](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L746-L746)

### [N-53]<a name="n-53"></a> Consider using a format prettier or forge fmt

Some comments use // X and others //X Amend comments to use only use // X or //X consistently such style inconsistencies can be resolved by running the project through a format prettier or by using forge fmt.

*There are 1 instance(s) of this issue:*

```solidity
4: /// // <= FOUND

```


*GitHub* : [4](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L4-L4)

### [N-54]<a name="n-54"></a> Avoid defining a function in a single line including it's contents



*There are 18 instance(s) of this issue:*

```solidity
10:   
11:   function allowance(address account, address spender) external view returns (uint256); // <= FOUND

```


*GitHub* : [10](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IERC20Delegates.sol#L10-L11)

```solidity
11:   function approve(address spender, uint256 rawAmount) external returns (bool); // <= FOUND

```


*GitHub* : [11](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IERC20Delegates.sol#L11-L11)

```solidity
12:   function balanceOf(address account) external view returns (uint256); // <= FOUND

```


*GitHub* : [12](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IERC20Delegates.sol#L12-L12)

```solidity
13:   function decimals() external view returns (uint8); // <= FOUND

```


*GitHub* : [13](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IERC20Delegates.sol#L13-L13)

```solidity
14:   function symbol() external view returns (string memory); // <= FOUND

```


*GitHub* : [14](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IERC20Delegates.sol#L14-L14)

```solidity
15:   function totalSupply() external view returns (uint256); // <= FOUND

```


*GitHub* : [15](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IERC20Delegates.sol#L15-L15)

```solidity
16:   function transfer(address dst, uint256 rawAmount) external returns (bool); // <= FOUND

```


*GitHub* : [16](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IERC20Delegates.sol#L16-L16)

```solidity
17:   function transferFrom(address src, address dst, uint256 rawAmount) external returns (bool); // <= FOUND

```


*GitHub* : [17](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IERC20Delegates.sol#L17-L17)

```solidity
18:   function permit( // <= FOUND
19:     address owner,
20:     address spender,
21:     uint256 rawAmount,
22:     uint256 deadline,
23:     uint8 v,
24:     bytes32 r,
25:     bytes32 s
26:   ) external; // <= FOUND

```


*GitHub* : [18](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IERC20Delegates.sol#L18-L26)

```solidity
29: 
31:   function delegate(address delegatee) external; // <= FOUND

```


*GitHub* : [29](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IERC20Delegates.sol#L29-L31)

```solidity
30:   function delegates(address) external view returns (address); // <= FOUND

```


*GitHub* : [30](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IERC20Delegates.sol#L30-L30)

```solidity
13:   
15:   function notifyRewardAmount(uint256 _amount) external; // <= FOUND

```


*GitHub* : [13](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/INotifiableRewardReceiver.sol#L13-L15)

```solidity
13:   
16:   function owner() external view returns (address); // <= FOUND

```


*GitHub* : [13](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L13-L16)

```solidity
18: 
22:   function setOwner(address _owner) external; // <= FOUND

```


*GitHub* : [18](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L18-L22)

```solidity
25: 
31:   function enableFeeAmount(uint24 fee, int24 tickSpacing) external; // <= FOUND

```


*GitHub* : [25](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L25-L31)

```solidity
33: 
40:   function feeAmountTickSpacing(uint24 fee) external view returns (int24); // <= FOUND

```


*GitHub* : [33](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L33-L40)

```solidity
12:   
15:   function setFeeProtocol(uint8 feeProtocol0, uint8 feeProtocol1) external; // <= FOUND

```


*GitHub* : [12](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3PoolOwnerActions.sol#L12-L15)

```solidity
22: 
31:   function collectProtocol(address recipient, uint128 amount0Requested, uint128 amount1Requested) // <= FOUND
32:     external
33:     returns (uint128 amount0, uint128 amount1); // <= FOUND

```


*GitHub* : [22](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3PoolOwnerActions.sol#L22-L33)

### [N-55]<a name="n-55"></a> Use 'using' keyword when using specific imports rather than calling the specific import directly

In Solidity, the `using` keyword can streamline the use of library functions for specific types. Instead of calling library functions directly with their full import paths, you can declare a library once with `using` for a specific type. This approach makes your code more readable and concise. For example, instead of `LibraryName.functionName(variable)`, you would first declare `using LibraryName for TypeName;` at the contract level. After this, you can call library functions directly on variables of `TypeName` like `variable.functionName()`. This method not only enhances code clarity but also promotes cleaner and more organized code, especially when multiple functions from the same library are used frequently.

*There are 3 instance(s) of this issue:*

```solidity
624:     SafeERC20.safeTransferFrom(IERC20(address(STAKE_TOKEN)), _from, _to, _value); // <= FOUND 'SafeERC20.'

```


*GitHub* : [624](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L624-L624)

```solidity
749: 
750:     SafeERC20.safeTransfer(REWARD_TOKEN, _beneficiary, _reward); // <= FOUND 'SafeERC20.'

```


*GitHub* : [749](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L749-L750)

```solidity
807:     bool _isValid = SignatureChecker.isValidSignatureNow(_signer, _hash, _signature); // <= FOUND 'SignatureChecker.'

```


*GitHub* : [807](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L807-L807)

### [N-56]<a name="n-56"></a> Avoid revertible function calls in a constructor

It is advisable to to perform validation within the constructor itself rather than in function calls it makes. This is because contract deployement may be performed through a frontend or manually so by having all of the validation conditions viewable in a single place allows for greater transparency during deployment for both the team and project users.

*There are 1 instance(s) of this issue:*

```solidity
190:   constructor(IERC20 _rewardToken, IERC20Delegates _stakeToken, address _admin)
191:     EIP712("UniStaker", "1")
192:   {
193:     REWARD_TOKEN = _rewardToken;
194:     STAKE_TOKEN = _stakeToken;
195:     _setAdmin(_admin); // <= FOUND
196:   }

```


*GitHub* : [195](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L195-L195)

### [N-57]<a name="n-57"></a> Upgradeable contract uses non-upgradeable version of the OpenZeppelin libraries/contracts

Using the upgradeable counterpart of the OpenZeppelin (OZ) library in Solidity is beneficial for creating contracts that can be updated in the future. OpenZeppelin's upgradeable contracts library is designed with proxy patterns in mind, which allow the logic of contracts to be upgraded while preserving the contract's state and address. This can be crucial for long-lived contracts where future requirements or improvements may not be fully known at the time of deployment. The upgradeable OZ contracts also include protection against a class of vulnerabilities related to initialization of storage variables in upgradeable contracts. Hence, it's a good idea to use them when developing contracts that may need to be upgraded in the future, as they provide a solid foundation for secure and upgradeable smart contracts.

*There are 5 instance(s) of this issue:*

```solidity
7: import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol"; // <= FOUND

```


*GitHub* : [7](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L7-L7)

```solidity
8: import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol"; // <= FOUND

```


*GitHub* : [8](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L8-L8)

```solidity
11: import {SignatureChecker} from "openzeppelin/utils/cryptography/SignatureChecker.sol"; // <= FOUND

```


*GitHub* : [11](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L11-L11)

```solidity
9: import {Multicall} from "openzeppelin/utils/Multicall.sol"; // <= FOUND

```


*GitHub* : [9](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L9-L9)

```solidity
12: import {EIP712} from "openzeppelin/utils/cryptography/EIP712.sol"; // <= FOUND

```


*GitHub* : [12](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L12-L12)

### [N-58]<a name="n-58"></a> All verbatim blocks are considered identical by deduplicator and can incorrectly be unified

The Solidity Team reported a bug on October 24, 2023, affecting Yul code using the verbatim builtin, specifically in the Block Deduplicator optimizer step. This bug, present since Solidity version 0.8.5, caused incorrect deduplication of verbatim assembly items surrounded by identical opcodes, considering them identical regardless of their data. The bug was confined to pure Yul compilation with optimization enabled and was unlikely to be exploited as an attack vector. The conditions triggering the bug were very specific, and its occurrence was deemed to have a low likelihood. The bug was rated with an overall low score due to these factors. 

*There are 2 instance(s) of this issue:*

```solidity
2: pragma solidity 0.8.23; // <= FOUND

```


*GitHub* : [2](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L2-L2)

```solidity
2: pragma solidity ^0.8.23; // <= FOUND

```


*GitHub* : [2](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/interfaces/IUniswapV3FactoryOwnerActions.sol#L2-L2)

### [N-59]<a name="n-59"></a> Constructors should emit an event

Emitting an event in a constructor of a smart contract provides transparency and traceability in blockchain applications. This event logs the contract’s creation, aiding in monitoring and verifying contract deployment. Although constructors are executed only once, the emitted event ensures the contract's initialization is recorded on the blockchain.

*There are 2 instance(s) of this issue:*

```solidity
190:   constructor(IERC20 _rewardToken, IERC20Delegates _stakeToken, address _admin) // <= FOUND
191:     EIP712("UniStaker", "1")
192:   {
193:     REWARD_TOKEN = _rewardToken;
194:     STAKE_TOKEN = _stakeToken;
195:     _setAdmin(_admin);
196:   }

```


*GitHub* : [190](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L190-L190)

```solidity
25:   constructor(IERC20Delegates _token, address _delegatee) { // <= FOUND
26:     _token.delegate(_delegatee);
27:     _token.approve(msg.sender, type(uint256).max);
28:   }

```


*GitHub* : [25](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/DelegationSurrogate.sol#L25-L25)

### [N-60]<a name="n-60"></a> Avoid single line non empty object declarations

In programming, avoiding single-line, non-empty object declarations enhances readability and maintainability. When properties are declared in a single line, it becomes challenging to scan and differentiate between them, especially as the object grows. Multi-line declarations improve clarity, making it easier to add, remove, or modify properties and to track changes in version control systems.

*There are 11 instance(s) of this issue:*

```solidity
4: import {DelegationSurrogate} from "src/DelegationSurrogate.sol"; // <= FOUND

```


*GitHub* : [4](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L4-L4)

```solidity
5: import {INotifiableRewardReceiver} from "src/interfaces/INotifiableRewardReceiver.sol"; // <= FOUND

```


*GitHub* : [5](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L5-L5)

```solidity
6: import {IERC20Delegates} from "src/interfaces/IERC20Delegates.sol"; // <= FOUND

```


*GitHub* : [6](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L6-L6)

```solidity
7: import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol"; // <= FOUND

```


*GitHub* : [7](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L7-L7)

```solidity
8: import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol"; // <= FOUND

```


*GitHub* : [8](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L8-L8)

```solidity
9: import {Multicall} from "openzeppelin/utils/Multicall.sol"; // <= FOUND

```


*GitHub* : [9](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L9-L9)

```solidity
10: import {Nonces} from "openzeppelin/utils/Nonces.sol"; // <= FOUND

```


*GitHub* : [10](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L10-L10)

```solidity
11: import {SignatureChecker} from "openzeppelin/utils/cryptography/SignatureChecker.sol"; // <= FOUND

```


*GitHub* : [11](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L11-L11)

```solidity
12: import {EIP712} from "openzeppelin/utils/cryptography/EIP712.sol"; // <= FOUND

```


*GitHub* : [12](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L12-L12)

```solidity
4: import {IUniswapV3PoolOwnerActions} from "src/interfaces/IUniswapV3PoolOwnerActions.sol"; // <= FOUND

```


*GitHub* : [4](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L4-L4)

```solidity
5: import {IUniswapV3FactoryOwnerActions} from "src/interfaces/IUniswapV3FactoryOwnerActions.sol"; // <= FOUND

```


*GitHub* : [5](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L5-L5)

### [N-61]<a name="n-61"></a> Consider validating all user inputs

Validating user inputs in external and public functions is a critical security practice in smart contract development. This approach prevents malicious or erroneous data from compromising contract integrity or behavior. By checking inputs against expected formats, ranges, or conditions before processing, contracts can avoid common vulnerabilities like reentrancy, overflow/underflow, and unauthorized access. 

*There are 20 instance(s) of this issue:*

```solidity
210:   function setRewardNotifier(address _rewardNotifier, bool _isEnabled) external { // <= FOUND
211:     _revertIfNotAdmin(); // <= FOUND
212:     isRewardNotifier[_rewardNotifier] = _isEnabled; // <= FOUND
213:     emit RewardNotifierSet(_rewardNotifier, _isEnabled); // <= FOUND
214:   }

```


*GitHub* : [210](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L210-L213)

```solidity
241:   function unclaimedReward(address _beneficiary) public view returns (uint256) { // <= FOUND
242:     return unclaimedRewardCheckpoint[_beneficiary] // <= FOUND
243:       + (
244:         earningPower[_beneficiary] // <= FOUND
245:           * (rewardPerTokenAccumulated() - beneficiaryRewardPerTokenCheckpoint[_beneficiary]) // <= FOUND
246:       ) / SCALE_FACTOR;
247:   }

```


*GitHub* : [241](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L241-L245)

```solidity
256:   function stake(uint256 _amount, address _delegatee) // <= FOUND
257:     external
258:     returns (DepositIdentifier _depositId) // <= FOUND
259:   {
260:     _depositId = _stake(msg.sender, _amount, _delegatee, msg.sender); // <= FOUND
261:   }

```


*GitHub* : [256](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L256-L260)

```solidity
271:   function stake(uint256 _amount, address _delegatee, address _beneficiary) // <= FOUND
272:     external
273:     returns (DepositIdentifier _depositId) // <= FOUND
274:   {
275:     _depositId = _stake(msg.sender, _amount, _delegatee, _beneficiary); // <= FOUND
276:   }

```


*GitHub* : [271](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L271-L275)

```solidity
292:   function permitAndStake(
293:     uint256 _amount, // <= FOUND
294:     address _delegatee, // <= FOUND
295:     address _beneficiary, // <= FOUND
296:     uint256 _deadline, // <= FOUND
297:     uint8 _v, // <= FOUND
298:     bytes32 _r, // <= FOUND
299:     bytes32 _s // <= FOUND
300:   ) external returns (DepositIdentifier _depositId) { // <= FOUND
301:     STAKE_TOKEN.permit(msg.sender, address(this), _amount, _deadline, _v, _r, _s); // <= FOUND
302:     _depositId = _stake(msg.sender, _amount, _delegatee, _beneficiary); // <= FOUND
303:   }

```


*GitHub* : [292](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L292-L302)

```solidity
315:   function stakeOnBehalf(
316:     uint256 _amount, // <= FOUND
317:     address _delegatee, // <= FOUND
318:     address _beneficiary, // <= FOUND
319:     address _depositor, // <= FOUND
320:     bytes memory _signature // <= FOUND
321:   ) external returns (DepositIdentifier _depositId) { // <= FOUND
322:     _revertIfSignatureIsNotValidNow( // <= FOUND
323:       _depositor, // <= FOUND
324:       _hashTypedDataV4( // <= FOUND
325:         keccak256(
326:           abi.encode(
327:             STAKE_TYPEHASH, _amount, _delegatee, _beneficiary, _depositor, _useNonce(_depositor) // <= FOUND
328:           )
329:         )
330:       ),
331:       _signature // <= FOUND
332:     );
333:     _depositId = _stake(_depositor, _amount, _delegatee, _beneficiary); // <= FOUND
334:   }

```


*GitHub* : [315](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L315-L333)

```solidity
342:   function stakeMore(DepositIdentifier _depositId, uint256 _amount) external { // <= FOUND
343:     Deposit storage deposit = deposits[_depositId]; // <= FOUND
344:     _revertIfNotDepositOwner(deposit, msg.sender); // <= FOUND
345:     _stakeMore(deposit, _depositId, _amount); // <= FOUND
346:   }

```


*GitHub* : [342](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L342-L345)

```solidity
360:   function permitAndStakeMore(
361:     DepositIdentifier _depositId, // <= FOUND
362:     uint256 _amount, // <= FOUND
363:     uint256 _deadline, // <= FOUND
364:     uint8 _v, // <= FOUND
365:     bytes32 _r, // <= FOUND
366:     bytes32 _s // <= FOUND
367:   ) external {
368:     Deposit storage deposit = deposits[_depositId]; // <= FOUND
369:     _revertIfNotDepositOwner(deposit, msg.sender); // <= FOUND
370: 
371:     STAKE_TOKEN.permit(msg.sender, address(this), _amount, _deadline, _v, _r, _s); // <= FOUND
372:     _stakeMore(deposit, _depositId, _amount); // <= FOUND
373:   }

```


*GitHub* : [360](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L360-L372)

```solidity
382:   function stakeMoreOnBehalf(
383:     DepositIdentifier _depositId, // <= FOUND
384:     uint256 _amount, // <= FOUND
385:     address _depositor, // <= FOUND
386:     bytes memory _signature // <= FOUND
387:   ) external {
388:     Deposit storage deposit = deposits[_depositId]; // <= FOUND
389:     _revertIfNotDepositOwner(deposit, _depositor); // <= FOUND
390: 
391:     _revertIfSignatureIsNotValidNow( // <= FOUND
392:       _depositor, // <= FOUND
393:       _hashTypedDataV4( // <= FOUND
394:         keccak256(
395:           abi.encode(STAKE_MORE_TYPEHASH, _depositId, _amount, _depositor, _useNonce(_depositor)) // <= FOUND
396:         )
397:       ),
398:       _signature // <= FOUND
399:     );
400: 
401:     _stakeMore(deposit, _depositId, _amount); // <= FOUND
402:   }

```


*GitHub* : [382](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L382-L401)

```solidity
410:   function alterDelegatee(DepositIdentifier _depositId, address _newDelegatee) external { // <= FOUND
411:     Deposit storage deposit = deposits[_depositId]; // <= FOUND
412:     _revertIfNotDepositOwner(deposit, msg.sender); // <= FOUND
413:     _alterDelegatee(deposit, _depositId, _newDelegatee); // <= FOUND
414:   }

```


*GitHub* : [410](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L410-L413)

```solidity
423:   function alterDelegateeOnBehalf(
424:     DepositIdentifier _depositId, // <= FOUND
425:     address _newDelegatee, // <= FOUND
426:     address _depositor, // <= FOUND
427:     bytes memory _signature // <= FOUND
428:   ) external {
429:     Deposit storage deposit = deposits[_depositId]; // <= FOUND
430:     _revertIfNotDepositOwner(deposit, _depositor); // <= FOUND
431: 
432:     _revertIfSignatureIsNotValidNow( // <= FOUND
433:       _depositor, // <= FOUND
434:       _hashTypedDataV4( // <= FOUND
435:         keccak256(
436:           abi.encode(
437:             ALTER_DELEGATEE_TYPEHASH, _depositId, _newDelegatee, _depositor, _useNonce(_depositor) // <= FOUND
438:           )
439:         )
440:       ),
441:       _signature // <= FOUND
442:     );
443: 
444:     _alterDelegatee(deposit, _depositId, _newDelegatee); // <= FOUND
445:   }

```


*GitHub* : [423](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L423-L444)

```solidity
453:   function alterBeneficiary(DepositIdentifier _depositId, address _newBeneficiary) external { // <= FOUND
454:     Deposit storage deposit = deposits[_depositId]; // <= FOUND
455:     _revertIfNotDepositOwner(deposit, msg.sender); // <= FOUND
456:     _alterBeneficiary(deposit, _depositId, _newBeneficiary); // <= FOUND
457:   }

```


*GitHub* : [453](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L453-L456)

```solidity
466:   function alterBeneficiaryOnBehalf(
467:     DepositIdentifier _depositId, // <= FOUND
468:     address _newBeneficiary, // <= FOUND
469:     address _depositor, // <= FOUND
470:     bytes memory _signature // <= FOUND
471:   ) external {
472:     Deposit storage deposit = deposits[_depositId]; // <= FOUND
473:     _revertIfNotDepositOwner(deposit, _depositor); // <= FOUND
474: 
475:     _revertIfSignatureIsNotValidNow( // <= FOUND
476:       _depositor, // <= FOUND
477:       _hashTypedDataV4( // <= FOUND
478:         keccak256(
479:           abi.encode(
480:             ALTER_BENEFICIARY_TYPEHASH,
481:             _depositId, // <= FOUND
482:             _newBeneficiary, // <= FOUND
483:             _depositor, // <= FOUND
484:             _useNonce(_depositor) // <= FOUND
485:           )
486:         )
487:       ),
488:       _signature // <= FOUND
489:     );
490: 
491:     _alterBeneficiary(deposit, _depositId, _newBeneficiary); // <= FOUND
492:   }

```


*GitHub* : [466](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L466-L491)

```solidity
499:   function withdraw(DepositIdentifier _depositId, uint256 _amount) external { // <= FOUND
500:     Deposit storage deposit = deposits[_depositId]; // <= FOUND
501:     _revertIfNotDepositOwner(deposit, msg.sender); // <= FOUND
502:     _withdraw(deposit, _depositId, _amount); // <= FOUND
503:   }

```


*GitHub* : [499](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L499-L502)

```solidity
512:   function withdrawOnBehalf(
513:     DepositIdentifier _depositId, // <= FOUND
514:     uint256 _amount, // <= FOUND
515:     address _depositor, // <= FOUND
516:     bytes memory _signature // <= FOUND
517:   ) external {
518:     Deposit storage deposit = deposits[_depositId]; // <= FOUND
519:     _revertIfNotDepositOwner(deposit, _depositor); // <= FOUND
520: 
521:     _revertIfSignatureIsNotValidNow( // <= FOUND
522:       _depositor, // <= FOUND
523:       _hashTypedDataV4( // <= FOUND
524:         keccak256(
525:           abi.encode(WITHDRAW_TYPEHASH, _depositId, _amount, _depositor, _useNonce(_depositor)) // <= FOUND
526:         )
527:       ),
528:       _signature // <= FOUND
529:     );
530: 
531:     _withdraw(deposit, _depositId, _amount); // <= FOUND
532:   }

```


*GitHub* : [512](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L512-L531)

```solidity
544:   function claimRewardOnBehalf(address _beneficiary, bytes memory _signature) external { // <= FOUND
545:     _revertIfSignatureIsNotValidNow( // <= FOUND
546:       _beneficiary, // <= FOUND
547:       _hashTypedDataV4( // <= FOUND
548:         keccak256(abi.encode(CLAIM_REWARD_TYPEHASH, _beneficiary, _useNonce(_beneficiary))) // <= FOUND
549:       ),
550:       _signature // <= FOUND
551:     );
552:     _claimReward(_beneficiary); // <= FOUND
553:   }

```


*GitHub* : [544](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L544-L552)

```solidity
570:   function notifyRewardAmount(uint256 _amount) external { // <= FOUND
571:     if (!isRewardNotifier[msg.sender]) revert UniStaker__Unauthorized("not notifier", msg.sender);
572: 
575:     rewardPerTokenAccumulatedCheckpoint = rewardPerTokenAccumulated();
576: 
577:     if (block.timestamp >= rewardEndTime) {
578:       scaledRewardRate = (_amount * SCALE_FACTOR) / REWARD_DURATION; // <= FOUND
579:     } else {
580:       uint256 _remainingReward = scaledRewardRate * (rewardEndTime - block.timestamp); // <= FOUND
581:       scaledRewardRate = (_remainingReward + _amount * SCALE_FACTOR) / REWARD_DURATION; // <= FOUND
582:     }
583: 
584:     rewardEndTime = block.timestamp + REWARD_DURATION;
585:     lastCheckpointTime = block.timestamp;
586: 
587:     if ((scaledRewardRate / SCALE_FACTOR) == 0) revert UniStaker__InvalidRewardRate();
588: 
594:     if (
595:       (scaledRewardRate * REWARD_DURATION) > (REWARD_TOKEN.balanceOf(address(this)) * SCALE_FACTOR)
596:     ) revert UniStaker__InsufficientRewardBalance();
597: 
598:     emit RewardNotified(_amount, msg.sender); // <= FOUND
599:   }

```


*GitHub* : [570](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L570-L598)

```solidity
131:   function enableFeeAmount(uint24 _fee, int24 _tickSpacing) external { // <= FOUND
132:     _revertIfNotAdmin(); // <= FOUND
133:     FACTORY.enableFeeAmount(_fee, _tickSpacing); // <= FOUND
134:   }

```


*GitHub* : [131](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L131-L133)

```solidity
142:   function setFeeProtocol(
143:     IUniswapV3PoolOwnerActions _pool, // <= FOUND
144:     uint8 _feeProtocol0, // <= FOUND
145:     uint8 _feeProtocol1 // <= FOUND
146:   ) external {
147:     _revertIfNotAdmin(); // <= FOUND
148:     _pool.setFeeProtocol(_feeProtocol0, _feeProtocol1); // <= FOUND
149:   }

```


*GitHub* : [142](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L142-L148)

```solidity
181:   function claimFees(
182:     IUniswapV3PoolOwnerActions _pool, // <= FOUND
183:     address _recipient, // <= FOUND
184:     uint128 _amount0Requested, // <= FOUND
185:     uint128 _amount1Requested // <= FOUND
186:   ) external returns (uint128, uint128) {
187:     PAYOUT_TOKEN.safeTransferFrom(msg.sender, address(REWARD_RECEIVER), payoutAmount);
188:     REWARD_RECEIVER.notifyRewardAmount(payoutAmount);
189:     (uint128 _amount0, uint128 _amount1) = // <= FOUND
190:       _pool.collectProtocol(_recipient, _amount0Requested, _amount1Requested); // <= FOUND
191: 
193:     if (_amount0 < _amount0Requested || _amount1 < _amount1Requested) { // <= FOUND
194:       revert V3FactoryOwner__InsufficientFeesCollected();
195:     }
196:     emit FeesClaimed(address(_pool), msg.sender, _recipient, _amount0, _amount1); // <= FOUND
197:     return (_amount0, _amount1); // <= FOUND
198:   }

```


*GitHub* : [181](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L181-L197)

### [N-62]<a name="n-62"></a> Consider using named returns

Using named returns in Solidity functions enhances code readability and clarity. By explicitly naming return variables in the function signature, developers can document what each return value represents, making the code easier to understand and maintain. This practice can also slightly optimize gas usage by avoiding extra variable declarations.

*There are 8 instance(s) of this issue:*

```solidity
220:   function lastTimeRewardDistributed() public view returns (uint256)  // <= FOUND

```


*GitHub* : [220](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L220-L220)

```solidity
229:   function rewardPerTokenAccumulated() public view returns (uint256)  // <= FOUND

```


*GitHub* : [229](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L229-L229)

```solidity
241:   function unclaimedReward(address _beneficiary) public view returns (uint256)  // <= FOUND

```


*GitHub* : [241](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L241-L241)

```solidity
292:   function permitAndStake(
293:     uint256 _amount,
294:     address _delegatee,
295:     address _beneficiary,
296:     uint256 _deadline,
297:     uint8 _v,
298:     bytes32 _r,
299:     bytes32 _s
300:   ) external returns (DepositIdentifier _depositId)  // <= FOUND

```


*GitHub* : [300](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L300-L300)

```solidity
638:   function _stake(address _depositor, uint256 _amount, address _delegatee, address _beneficiary)
639:     internal
640:     returns (DepositIdentifier _depositId) // <= FOUND
641:   

```


*GitHub* : [640](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L640-L640)

```solidity
181:   function claimFees(
182:     IUniswapV3PoolOwnerActions _pool,
183:     address _recipient,
184:     uint128 _amount0Requested,
185:     uint128 _amount1Requested
186:   ) external returns (uint128, uint128)  // <= FOUND

```


*GitHub* : [186](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L186-L186)

```solidity
271:   function stake(uint256 _amount, address _delegatee, address _beneficiary)
272:     external
273:     returns (DepositIdentifier _depositId) // <= FOUND
274:   

```


*GitHub* : [273](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L273-L273)

```solidity
315:   function stakeOnBehalf(
316:     uint256 _amount,
317:     address _delegatee,
318:     address _beneficiary,
319:     address _depositor,
320:     bytes memory _signature
321:   ) external returns (DepositIdentifier _depositId)  // <= FOUND

```


*GitHub* : [321](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L321-L321)

### [N-63]<a name="n-63"></a> Errors should have parameters

In Solidity, custom errors with parameters offer a gas-efficient way to convey detailed information about issues encountered during contract execution. Unlike revert messages, which are strings consuming more gas, custom errors defined with parameters allow developers to specify types and details of errors succinctly. This method enhances debugging, provides clearer insights into contract failures, and improves the developer's and end-user's understanding of what went wrong, all while optimizing for gas usage and maintaining contract efficiency.

*There are 8 instance(s) of this issue:*

```solidity
76: 
78:   error UniStaker__InvalidRewardRate(); // <= FOUND

```


*GitHub* : [76](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L76-L78)

```solidity
81: 
85:   error UniStaker__InsufficientRewardBalance(); // <= FOUND

```


*GitHub* : [81](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L81-L85)

```solidity
84: 
86:   error UniStaker__InvalidAddress(); // <= FOUND

```


*GitHub* : [84](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L84-L86)

```solidity
87: 
89:   error UniStaker__InvalidSignature(); // <= FOUND

```


*GitHub* : [87](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L87-L89)

```solidity
54: 
56:   error V3FactoryOwner__Unauthorized(); // <= FOUND

```


*GitHub* : [54](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L54-L56)

```solidity
57: 
59:   error V3FactoryOwner__InvalidAddress(); // <= FOUND

```


*GitHub* : [57](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L57-L59)

```solidity
60: 
62:   error V3FactoryOwner__InvalidPayoutAmount(); // <= FOUND

```


*GitHub* : [60](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L60-L62)

```solidity
63: 
65:   error V3FactoryOwner__InsufficientFeesCollected(); // <= FOUND

```


*GitHub* : [63](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L63-L65)

### [N-64]<a name="n-64"></a> Avoid using 'owner' or '_owner' as a parameter name

Using 'owner' or '_owner' as a parameter name in functions, especially in contracts inheriting from or interacting with OpenZeppelin's `Ownable` contract, can lead to confusion and potential bugs. These contracts often have a state variable named `owner`, managed by the `Ownable` pattern for access control. Using the same name for function parameters may obscure the contract's `owner` state variable, complicating code readability and maintenance. Prefer alternative descriptive names for parameters to maintain clarity and prevent conflicts with established ownership patterns.

*There are 1 instance(s) of this issue:*

```solidity
787:   function _revertIfNotDepositOwner(Deposit storage deposit, address owner) internal view  // <= FOUND

```


*GitHub* : [787](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L787-L787)

### [N-65]<a name="n-65"></a> ERC777 tokens can introduce reentrancy risks

ERC777 is an advanced token standard that introduces hooks, allowing operators to execute additional logic during transfers. While this feature offers greater flexibility, it also opens up the possibility of reentrancy attacks. Specifically, when tokens are sent, the receiving contract's `tokensReceived` hook gets called, and this external call can execute arbitrary code. An attacker can exploit this feature to re-enter the original function, potentially leading to double-spending or other types of financial manipulation.

To mitigate reentrancy risks with ERC777, it's crucial to adopt established security measures, such as utilizing reentrancy guards or following the check-effects-interactions pattern. Some developers opt to stick with the simpler ERC20 standard, which does not have these hooks, to minimize this risk. If you do choose to use ERC777, extreme caution and thorough auditing are advised to secure against potential reentrancy vulnerabilities.

*There are 6 instance(s) of this issue:*

```solidity
623:   function _stakeTokenSafeTransferFrom(address _from, address _to, uint256 _value) internal { // <= FOUND
624:     SafeERC20.safeTransferFrom(IERC20(address(STAKE_TOKEN)), _from, _to, _value); // <= FOUND
625:   }

```


*GitHub* : [623](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L623-L624)

```solidity
638:   function _stake(address _depositor, uint256 _amount, address _delegatee, address _beneficiary)
639:     internal
640:     returns (DepositIdentifier _depositId)
641:   {
642:     _revertIfAddressZero(_delegatee);
643:     _revertIfAddressZero(_beneficiary);
644: 
645:     _checkpointGlobalReward();
646:     _checkpointReward(_beneficiary);
647: 
648:     DelegationSurrogate _surrogate = _fetchOrDeploySurrogate(_delegatee);
649:     _depositId = _useDepositId();
650: 
651:     totalStaked += _amount;
652:     depositorTotalStaked[_depositor] += _amount;
653:     earningPower[_beneficiary] += _amount;
654:     deposits[_depositId] = Deposit({
655:       balance: _amount,
656:       owner: _depositor,
657:       delegatee: _delegatee,
658:       beneficiary: _beneficiary
659:     });
660:     _stakeTokenSafeTransferFrom(_depositor, address(_surrogate), _amount); // <= FOUND
661:     emit StakeDeposited(_depositor, _depositId, _amount, _amount);
662:     emit BeneficiaryAltered(_depositId, address(0), _beneficiary);
663:     emit DelegateeAltered(_depositId, address(0), _delegatee);
664:   }

```


*GitHub* : [638](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L638-L660)

```solidity
669:   function _stakeMore(Deposit storage deposit, DepositIdentifier _depositId, uint256 _amount)
670:     internal
671:   {
672:     _checkpointGlobalReward();
673:     _checkpointReward(deposit.beneficiary);
674: 
675:     DelegationSurrogate _surrogate = surrogates[deposit.delegatee];
676: 
677:     totalStaked += _amount;
678:     depositorTotalStaked[deposit.owner] += _amount;
679:     earningPower[deposit.beneficiary] += _amount;
680:     deposit.balance += _amount;
681:     _stakeTokenSafeTransferFrom(deposit.owner, address(_surrogate), _amount); // <= FOUND
682:     emit StakeDeposited(deposit.owner, _depositId, _amount, deposit.balance);
683:   }

```


*GitHub* : [669](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L669-L681)

```solidity
688:   function _alterDelegatee(
689:     Deposit storage deposit,
690:     DepositIdentifier _depositId,
691:     address _newDelegatee
692:   ) internal {
693:     _revertIfAddressZero(_newDelegatee);
694:     DelegationSurrogate _oldSurrogate = surrogates[deposit.delegatee];
695:     emit DelegateeAltered(_depositId, deposit.delegatee, _newDelegatee);
696:     deposit.delegatee = _newDelegatee;
697:     DelegationSurrogate _newSurrogate = _fetchOrDeploySurrogate(_newDelegatee);
698:     _stakeTokenSafeTransferFrom(address(_oldSurrogate), address(_newSurrogate), deposit.balance); // <= FOUND
699:   }

```


*GitHub* : [688](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L688-L698)

```solidity
723:   function _withdraw(Deposit storage deposit, DepositIdentifier _depositId, uint256 _amount)
724:     internal
725:   {
726:     _checkpointGlobalReward();
727:     _checkpointReward(deposit.beneficiary);
728: 
729:     deposit.balance -= _amount; 
730:     totalStaked -= _amount;
731:     depositorTotalStaked[deposit.owner] -= _amount;
732:     earningPower[deposit.beneficiary] -= _amount;
733:     _stakeTokenSafeTransferFrom(address(surrogates[deposit.delegatee]), deposit.owner, _amount); // <= FOUND
734:     emit StakeWithdrawn(_depositId, _amount, deposit.balance);
735:   }

```


*GitHub* : [723](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/UniStaker.sol#L723-L733)

```solidity
181:   function claimFees(
182:     IUniswapV3PoolOwnerActions _pool,
183:     address _recipient,
184:     uint128 _amount0Requested,
185:     uint128 _amount1Requested
186:   ) external returns (uint128, uint128) {
187:     PAYOUT_TOKEN.safeTransferFrom(msg.sender, address(REWARD_RECEIVER), payoutAmount); // <= FOUND
188:     REWARD_RECEIVER.notifyRewardAmount(payoutAmount);
189:     (uint128 _amount0, uint128 _amount1) =
190:       _pool.collectProtocol(_recipient, _amount0Requested, _amount1Requested);
191: 
193:     if (_amount0 < _amount0Requested || _amount1 < _amount1Requested) {
194:       revert V3FactoryOwner__InsufficientFeesCollected();
195:     }
196:     emit FeesClaimed(address(_pool), msg.sender, _recipient, _amount0, _amount1);
197:     return (_amount0, _amount1);
198:   }

```


*GitHub* : [181](https://github.com/code-423n4/2024-02-uniswap-foundation/blob/main/src/V3FactoryOwner.sol#L181-L187)

V4 wen?