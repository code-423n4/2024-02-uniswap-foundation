**Summary**



# Vulnerability Report


## Low Issues


||Issue|Instances|
|-|:-|:-:|
| [L-1](#L-1) | `approve()`/`safeApprove()` may revert if the current approval is not zero | 1 |
| [L-2](#L-2) | Division by zero not prevented | 1 |
| [L-3](#L-3) | Signature use at deadlines should be allowed | 1 |
| [L-4](#L-4) | Possible rounding issue | 1 |
| [L-5](#L-5) | Loss of precision | 5 |
### <a name="L-1"></a>[L-1] `approve()`/`safeApprove()` may revert if the current approval is not zero

- Some tokens (like the *very popular* USDT) do not work when changing the allowance from an existing non-zero allowance value (it will revert if the current approval is not zero to protect against front-running changes of approvals). These tokens must first be approved for zero and then the actual allowance can be approved.
- Furthermore, OZ's implementation of safeApprove would throw an error if an approve is attempted from a non-zero value (`"SafeERC20: approve from non-zero to non-zero allowance"`)

Set the allowance to zero immediately before each of the existing allowance calls

Affected code:

- [src/DelegationSurrogate.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/DelegationSurrogate.sol)

```solidity
# File: src/DelegationSurrogate.sol

DelegationSurrogate.sol:27:     _token.approve(msg.sender, type(uint256).max);
```

### <a name="L-2"></a>[L-2] Division by zero not prevented

The divisions below take an input parameter which does not have any zero-value checks, which may lead to the functions reverting when zero is passed.

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:233:       + (scaledRewardRate * (lastTimeRewardDistributed() - lastCheckpointTime)) / totalStaked;
```

### <a name="L-3"></a>[L-3] Signature use at deadlines should be allowed

According to [EIP-2612](https://github.com/ethereum/EIPs/blob/71dc97318013bf2ac572ab63fab530ac9ef419ca/EIPS/eip-2612.md?plain=1#L58), signatures used on exactly the deadline timestamp are supposed to be allowed. While the signature may or may not be used for the exact EIP-2612 use case (transfer approvals), for consistency's sake, all deadlines should follow this semantic. If the timestamp is an expiration rather than a deadline, consider whether it makes more sense to include the expiration timestamp as a valid timestamp, as is done for deadlines.

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:221:     if (rewardEndTime <= block.timestamp) return rewardEndTime;
```

### <a name="L-4"></a>[L-4] Possible rounding issue

Division by large numbers may result in the result being zero, due to solidity not supporting fractions. Consider requiring a minimum amount for the numerator to ensure that it is always larger than the denominator. Also, there is indication of multiplication and division without the use of parenthesis which could result in issues.

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:233:       + (scaledRewardRate * (lastTimeRewardDistributed() - lastCheckpointTime)) / totalStaked;
```

### <a name="L-5"></a>[L-5] Loss of precision

Division by large numbers may result in the result being zero, due to solidity not supporting fractions. Consider requiring a minimum amount for the numerator to ensure that it is always larger than the denominator

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:233:       + (scaledRewardRate * (lastTimeRewardDistributed() - lastCheckpointTime)) / totalStaked;

UniStaker.sol:246:       ) / SCALE_FACTOR;

UniStaker.sol:578:       scaledRewardRate = (_amount * SCALE_FACTOR) / REWARD_DURATION;

UniStaker.sol:581:       scaledRewardRate = (_remainingReward + _amount * SCALE_FACTOR) / REWARD_DURATION;

UniStaker.sol:587:     if ((scaledRewardRate / SCALE_FACTOR) == 0) revert UniStaker__InvalidRewardRate();
```


## Informational Issues


||Issue|Instances|
|-|:-|:-:|
| [NC-1](#NC-1) | Return values of `approve()` not checked | 1 |
| [NC-2](#NC-2) | For readability, add commented parameter names (`Type Location /* name */`) | 3 |
| [NC-3](#NC-3) | Expressions for constant values such as a call to `keccak256()`, should use `immutable` rather than `constant` | 3 |
| [NC-4](#NC-4) | Constants in comparisons should appear on the left side | 5 |
| [NC-5](#NC-5) | Control structures do not follow the Solidity Style Guide | 73 |
| [NC-6](#NC-6) | Critical Changes Should Use Two-step Procedure | 2 |
| [NC-7](#NC-7) | Consider using `delete` rather than assigning zero to clear values | 1 |
| [NC-8](#NC-8) | Functions should not be longer than 50 lines | 25 |
| [NC-9](#NC-9) | Change int to int256 | 2 |
| [NC-10](#NC-10) | Imports could be organized more systematically | 4 |
| [NC-11](#NC-11) | Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor | 9 |
| [NC-12](#NC-12) | Take advantage of Custom Error's return value property | 18 |
| [NC-13](#NC-13) | Consider using `uint48` for time-related variables | 3 |
### <a name="NC-1"></a>[NC-1] Return values of `approve()` not checked

Not all IERC20 implementations `revert()` when there's a failure in `approve()`. The function signature has a boolean return value and they indicate errors that way instead. By not checking the return value, operations that should have marked as failed, may potentially go through without actually approving anything

Affected code:

- [src/DelegationSurrogate.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/DelegationSurrogate.sol)

```solidity
# File: src/DelegationSurrogate.sol

DelegationSurrogate.sol:27:     _token.approve(msg.sender, type(uint256).max);
```

### <a name="NC-2"></a>[NC-2] For readability, add commented parameter names (`Type Location /* name */`)

When the return statement is documented but unnamed, consider adding a little comment with the name as such: `Type Location /* name */`.

As an example:

```diff
-  ) public view returns (string memory) {
+  ) public view returns (string memory /* Giving a Name Here to Explain the Intent of the Returned Value */) {
```

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:220:   function lastTimeRewardDistributed() public view returns (uint256) {

UniStaker.sol:229:   function rewardPerTokenAccumulated() public view returns (uint256) {

UniStaker.sol:241:   function unclaimedReward(address _beneficiary) public view returns (uint256) {
```

### <a name="NC-3"></a>[NC-3] Expressions for constant values such as a call to `keccak256()`, should use `immutable` rather than `constant`

While it **doesn't save any gas** because the compiler knows that developers often make this mistake, it's still best to use the right tool for the task at hand. There is a difference between `constant` variables and `immutable` variables, and they should each be used in their appropriate contexts. `constants` should be used for literal values written into the code, and `immutable` variables should be used for expressions, or values calculated in, or passed into the constructor.

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:107:     keccak256("StakeMore(uint256 depositId,uint256 amount,address depositor,uint256 nonce)");

UniStaker.sol:118:     keccak256("Withdraw(uint256 depositId,uint256 amount,address depositor,uint256 nonce)");

UniStaker.sol:121:     keccak256("ClaimReward(address beneficiary,uint256 nonce)");
```

### <a name="NC-4"></a>[NC-4] Constants in comparisons should appear on the left side

Doing so will prevent [typo bugs](https://www.moserware.com/2008/01/constants-on-left-are-better-but-this.html)

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:230:     if (totalStaked == 0) return rewardPerTokenAccumulatedCheckpoint;

UniStaker.sol:587:     if ((scaledRewardRate / SCALE_FACTOR) == 0) revert UniStaker__InvalidRewardRate();

UniStaker.sol:745:     if (_reward == 0) return;
```

- [src/V3FactoryOwner.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/V3FactoryOwner.sol)

```solidity
# File: src/V3FactoryOwner.sol

V3FactoryOwner.sol:96:     if (_payoutAmount == 0) revert V3FactoryOwner__InvalidPayoutAmount();

V3FactoryOwner.sol:121:     if (_newPayoutAmount == 0) revert V3FactoryOwner__InvalidPayoutAmount();
```

### <a name="NC-5"></a>[NC-5] Control structures do not follow the Solidity Style Guide

See the [control structures](https://docs.soliditylang.org/en/latest/style-guide.html#control-structures) section of the Solidity Style Guide

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:5: import {INotifiableRewardReceiver} from "src/interfaces/INotifiableRewardReceiver.sol";

UniStaker.sol:32:   type DepositIdentifier is uint256;

UniStaker.sol:37:     address owner, DepositIdentifier indexed depositId, uint256 amount, uint256 depositBalance

UniStaker.sol:41:   event StakeWithdrawn(DepositIdentifier indexed depositId, uint256 amount, uint256 depositBalance);

UniStaker.sol:45:     DepositIdentifier indexed depositId, address oldDelegatee, address newDelegatee

UniStaker.sol:50:     DepositIdentifier indexed depositId,

UniStaker.sol:59:   event RewardNotified(uint256 amount, address notifier);

UniStaker.sol:65:   event RewardNotifierSet(address indexed account, bool isEnabled);

UniStaker.sol:137:   DepositIdentifier private nextDepositId;

UniStaker.sol:152:   mapping(DepositIdentifier depositId => Deposit deposit) public deposits;

UniStaker.sol:185:   mapping(address rewardNotifier => bool) public isRewardNotifier;

UniStaker.sol:202:     _revertIfNotAdmin();

UniStaker.sol:211:     _revertIfNotAdmin();

UniStaker.sol:212:     isRewardNotifier[_rewardNotifier] = _isEnabled;

UniStaker.sol:213:     emit RewardNotifierSet(_rewardNotifier, _isEnabled);

UniStaker.sol:221:     if (rewardEndTime <= block.timestamp) return rewardEndTime;

UniStaker.sol:230:     if (totalStaked == 0) return rewardPerTokenAccumulatedCheckpoint;

UniStaker.sol:258:     returns (DepositIdentifier _depositId)

UniStaker.sol:273:     returns (DepositIdentifier _depositId)

UniStaker.sol:322:     _revertIfSignatureIsNotValidNow(

UniStaker.sol:344:     _revertIfNotDepositOwner(deposit, msg.sender);

UniStaker.sol:361:     DepositIdentifier _depositId,

UniStaker.sol:369:     _revertIfNotDepositOwner(deposit, msg.sender);

UniStaker.sol:383:     DepositIdentifier _depositId,

UniStaker.sol:389:     _revertIfNotDepositOwner(deposit, _depositor);

UniStaker.sol:391:     _revertIfSignatureIsNotValidNow(

UniStaker.sol:412:     _revertIfNotDepositOwner(deposit, msg.sender);

UniStaker.sol:424:     DepositIdentifier _depositId,

UniStaker.sol:430:     _revertIfNotDepositOwner(deposit, _depositor);

UniStaker.sol:432:     _revertIfSignatureIsNotValidNow(

UniStaker.sol:455:     _revertIfNotDepositOwner(deposit, msg.sender);

UniStaker.sol:467:     DepositIdentifier _depositId,

UniStaker.sol:473:     _revertIfNotDepositOwner(deposit, _depositor);

UniStaker.sol:475:     _revertIfSignatureIsNotValidNow(

UniStaker.sol:501:     _revertIfNotDepositOwner(deposit, msg.sender);

UniStaker.sol:513:     DepositIdentifier _depositId,

UniStaker.sol:519:     _revertIfNotDepositOwner(deposit, _depositor);

UniStaker.sol:521:     _revertIfSignatureIsNotValidNow(

UniStaker.sol:545:     _revertIfSignatureIsNotValidNow(

UniStaker.sol:571:     if (!isRewardNotifier[msg.sender]) revert UniStaker__Unauthorized("not notifier", msg.sender);

UniStaker.sol:587:     if ((scaledRewardRate / SCALE_FACTOR) == 0) revert UniStaker__InvalidRewardRate();

UniStaker.sol:594:     if (

UniStaker.sol:598:     emit RewardNotified(_amount, msg.sender);

UniStaker.sol:632:     nextDepositId = DepositIdentifier.wrap(DepositIdentifier.unwrap(_depositId) + 1);

UniStaker.sol:640:     returns (DepositIdentifier _depositId)

UniStaker.sol:642:     _revertIfAddressZero(_delegatee);

UniStaker.sol:643:     _revertIfAddressZero(_beneficiary);

UniStaker.sol:669:   function _stakeMore(Deposit storage deposit, DepositIdentifier _depositId, uint256 _amount)

UniStaker.sol:690:     DepositIdentifier _depositId,

UniStaker.sol:693:     _revertIfAddressZero(_newDelegatee);

UniStaker.sol:706:     DepositIdentifier _depositId,

UniStaker.sol:709:     _revertIfAddressZero(_newBeneficiary);

UniStaker.sol:723:   function _withdraw(Deposit storage deposit, DepositIdentifier _depositId, uint256 _amount)

UniStaker.sol:745:     if (_reward == 0) return;

UniStaker.sol:772:     _revertIfAddressZero(_newAdmin);

UniStaker.sol:780:     if (msg.sender != admin) revert UniStaker__Unauthorized("not admin", msg.sender);

UniStaker.sol:788:     if (owner != deposit.owner) revert UniStaker__Unauthorized("not owner", owner);

UniStaker.sol:795:     if (_account == address(0)) revert UniStaker__InvalidAddress();

UniStaker.sol:803:   function _revertIfSignatureIsNotValidNow(address _signer, bytes32 _hash, bytes memory _signature)

UniStaker.sol:808:     if (!_isValid) revert UniStaker__InvalidSignature();
```

- [src/V3FactoryOwner.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/V3FactoryOwner.sol)

```solidity
# File: src/V3FactoryOwner.sol

V3FactoryOwner.sol:6: import {INotifiableRewardReceiver} from "src/interfaces/INotifiableRewardReceiver.sol";

V3FactoryOwner.sol:76:   INotifiableRewardReceiver public immutable REWARD_RECEIVER;

V3FactoryOwner.sol:93:     INotifiableRewardReceiver _rewardReceiver

V3FactoryOwner.sol:95:     if (_admin == address(0)) revert V3FactoryOwner__InvalidAddress();

V3FactoryOwner.sol:96:     if (_payoutAmount == 0) revert V3FactoryOwner__InvalidPayoutAmount();

V3FactoryOwner.sol:111:     _revertIfNotAdmin();

V3FactoryOwner.sol:112:     if (_newAdmin == address(0)) revert V3FactoryOwner__InvalidAddress();

V3FactoryOwner.sol:120:     _revertIfNotAdmin();

V3FactoryOwner.sol:121:     if (_newPayoutAmount == 0) revert V3FactoryOwner__InvalidPayoutAmount();

V3FactoryOwner.sol:132:     _revertIfNotAdmin();

V3FactoryOwner.sol:147:     _revertIfNotAdmin();

V3FactoryOwner.sol:188:     REWARD_RECEIVER.notifyRewardAmount(payoutAmount);

V3FactoryOwner.sol:203:     if (msg.sender != admin) revert V3FactoryOwner__Unauthorized();
```

### <a name="NC-6"></a>[NC-6] Critical Changes Should Use Two-step Procedure

The critical procedures should be two step process.

See similar findings in previous Code4rena contests for reference: <https://code4rena.com/reports/2022-06-illuminate/#2-critical-changes-should-use-two-step-procedure>

**Recommended Mitigation Steps**

Lack of two-step procedure for critical operations leaves them error-prone. Consider adding two step procedure on the critical functions.

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:201:   function setAdmin(address _newAdmin) external {
```

- [src/V3FactoryOwner.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/V3FactoryOwner.sol)

```solidity
# File: src/V3FactoryOwner.sol

V3FactoryOwner.sol:110:   function setAdmin(address _newAdmin) external {
```

### <a name="NC-7"></a>[NC-7] Consider using `delete` rather than assigning zero to clear values

The `delete` keyword more closely matches the semantics of what is being done, and draws more attention to the changing of state, which may lead to a more thorough audit of its associated logic

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:746:     unclaimedRewardCheckpoint[_beneficiary] = 0;
```

### <a name="NC-8"></a>[NC-8] Functions should not be longer than 50 lines

Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:210:   function setRewardNotifier(address _rewardNotifier, bool _isEnabled) external {

UniStaker.sol:220:   function lastTimeRewardDistributed() public view returns (uint256) {

UniStaker.sol:229:   function rewardPerTokenAccumulated() public view returns (uint256) {

UniStaker.sol:241:   function unclaimedReward(address _beneficiary) public view returns (uint256) {

UniStaker.sol:256:   function stake(uint256 _amount, address _delegatee)

UniStaker.sol:271:   function stake(uint256 _amount, address _delegatee, address _beneficiary)

UniStaker.sol:342:   function stakeMore(DepositIdentifier _depositId, uint256 _amount) external {

UniStaker.sol:410:   function alterDelegatee(DepositIdentifier _depositId, address _newDelegatee) external {

UniStaker.sol:453:   function alterBeneficiary(DepositIdentifier _depositId, address _newBeneficiary) external {

UniStaker.sol:499:   function withdraw(DepositIdentifier _depositId, uint256 _amount) external {

UniStaker.sol:544:   function claimRewardOnBehalf(address _beneficiary, bytes memory _signature) external {

UniStaker.sol:570:   function notifyRewardAmount(uint256 _amount) external {

UniStaker.sol:605:   function _fetchOrDeploySurrogate(address _delegatee)

UniStaker.sol:623:   function _stakeTokenSafeTransferFrom(address _from, address _to, uint256 _value) internal {

UniStaker.sol:630:   function _useDepositId() internal returns (DepositIdentifier _depositId) {

UniStaker.sol:638:   function _stake(address _depositor, uint256 _amount, address _delegatee, address _beneficiary)

UniStaker.sol:669:   function _stakeMore(Deposit storage deposit, DepositIdentifier _depositId, uint256 _amount)

UniStaker.sol:723:   function _withdraw(Deposit storage deposit, DepositIdentifier _depositId, uint256 _amount)

UniStaker.sol:740:   function _claimReward(address _beneficiary) internal {

UniStaker.sol:764:   function _checkpointReward(address _beneficiary) internal {

UniStaker.sol:787:   function _revertIfNotDepositOwner(Deposit storage deposit, address owner) internal view {

UniStaker.sol:794:   function _revertIfAddressZero(address _account) internal pure {

UniStaker.sol:803:   function _revertIfSignatureIsNotValidNow(address _signer, bytes32 _hash, bytes memory _signature)
```

- [src/V3FactoryOwner.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/V3FactoryOwner.sol)

```solidity
# File: src/V3FactoryOwner.sol

V3FactoryOwner.sol:119:   function setPayoutAmount(uint256 _newPayoutAmount) external {

V3FactoryOwner.sol:131:   function enableFeeAmount(uint24 _fee, int24 _tickSpacing) external {
```

### <a name="NC-9"></a>[NC-9] Change int to int256

Throughout the code base, some variables are declared as `int`. To favor explicitness, consider changing all instances of `int` to `int256`

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:575:     rewardPerTokenAccumulatedCheckpoint = rewardPerTokenAccumulated();

UniStaker.sol:754:     rewardPerTokenAccumulatedCheckpoint = rewardPerTokenAccumulated();
```

### <a name="NC-10"></a>[NC-10] Imports could be organized more systematically

The contract's interface should be imported first, followed by each of the interfaces it uses, followed by all other files. The examples below do not follow this layout.

Affected code:

- [src/DelegationSurrogate.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/DelegationSurrogate.sol)

```solidity
# File: src/DelegationSurrogate.sol

DelegationSurrogate.sol:4: import {IERC20Delegates} from "src/interfaces/IERC20Delegates.sol";
```

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:6: import {IERC20Delegates} from "src/interfaces/IERC20Delegates.sol";

UniStaker.sol:7: import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";
```

- [src/V3FactoryOwner.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/V3FactoryOwner.sol)

```solidity
# File: src/V3FactoryOwner.sol

V3FactoryOwner.sol:7: import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";
```

### <a name="NC-11"></a>[NC-11] Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor

If a function is supposed to be access-controlled, a `modifier` should be used instead of a `require/if` statement for more readability.

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:344:     _revertIfNotDepositOwner(deposit, msg.sender);

UniStaker.sol:369:     _revertIfNotDepositOwner(deposit, msg.sender);

UniStaker.sol:412:     _revertIfNotDepositOwner(deposit, msg.sender);

UniStaker.sol:455:     _revertIfNotDepositOwner(deposit, msg.sender);

UniStaker.sol:501:     _revertIfNotDepositOwner(deposit, msg.sender);

UniStaker.sol:571:     if (!isRewardNotifier[msg.sender]) revert UniStaker__Unauthorized("not notifier", msg.sender);

UniStaker.sol:598:     emit RewardNotified(_amount, msg.sender);

UniStaker.sol:780:     if (msg.sender != admin) revert UniStaker__Unauthorized("not admin", msg.sender);
```

- [src/V3FactoryOwner.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/V3FactoryOwner.sol)

```solidity
# File: src/V3FactoryOwner.sol

V3FactoryOwner.sol:203:     if (msg.sender != admin) revert V3FactoryOwner__Unauthorized();
```

### <a name="NC-12"></a>[NC-12] Take advantage of Custom Error's return value property

An important feature of Custom Error is that values such as address, tokenID, msg.value can be written inside the () sign, this kind of approach provides a serious advantage in debugging and examining the revert details of dapps such as tenderly.

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:202:     _revertIfNotAdmin();

UniStaker.sol:211:     _revertIfNotAdmin();

UniStaker.sol:587:     if ((scaledRewardRate / SCALE_FACTOR) == 0) revert UniStaker__InvalidRewardRate();

UniStaker.sol:596:     ) revert UniStaker__InsufficientRewardBalance();

UniStaker.sol:779:   function _revertIfNotAdmin() internal view {

UniStaker.sol:795:     if (_account == address(0)) revert UniStaker__InvalidAddress();

UniStaker.sol:808:     if (!_isValid) revert UniStaker__InvalidSignature();
```

- [src/V3FactoryOwner.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/V3FactoryOwner.sol)

```solidity
# File: src/V3FactoryOwner.sol

V3FactoryOwner.sol:95:     if (_admin == address(0)) revert V3FactoryOwner__InvalidAddress();

V3FactoryOwner.sol:96:     if (_payoutAmount == 0) revert V3FactoryOwner__InvalidPayoutAmount();

V3FactoryOwner.sol:111:     _revertIfNotAdmin();

V3FactoryOwner.sol:112:     if (_newAdmin == address(0)) revert V3FactoryOwner__InvalidAddress();

V3FactoryOwner.sol:120:     _revertIfNotAdmin();

V3FactoryOwner.sol:121:     if (_newPayoutAmount == 0) revert V3FactoryOwner__InvalidPayoutAmount();

V3FactoryOwner.sol:132:     _revertIfNotAdmin();

V3FactoryOwner.sol:147:     _revertIfNotAdmin();

V3FactoryOwner.sol:194:       revert V3FactoryOwner__InsufficientFeesCollected();

V3FactoryOwner.sol:202:   function _revertIfNotAdmin() internal view {

V3FactoryOwner.sol:203:     if (msg.sender != admin) revert V3FactoryOwner__Unauthorized();
```

### <a name="NC-13"></a>[NC-13] Consider using `uint48` for time-related variables

While `uint32` ends in 2106 and could cause some issues in this distant future, higher types than `uint48` (like `uint256`) aren't necessary for time-related variables.

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:159:   uint256 public rewardEndTime;

UniStaker.sol:162:   uint256 public lastCheckpointTime;

UniStaker.sol:580:       uint256 _remainingReward = scaledRewardRate * (rewardEndTime - block.timestamp);
```


# Gas Report


## Gas Optimizations


||Issue|Instances|Estimated Gas Savings|
|-|:-|:-:|:-:|
| [GAS-1](#GAS-1) | Use EIP-1167 minimal proxies for 10x cheaper contract instantiation | 1 | -
| [GAS-2](#GAS-2) | Using `private` rather than `public` for constants, saves gas | 8 | -
| [GAS-3](#GAS-3) | Unchecking arithmetics operations that can't underflow/overflow | 7 | -
| [GAS-4](#GAS-4) | `a = a + b` is more gas effective than `a += b` for state variables (excluding arrays and mappings) | 8 | 152
| [GAS-5](#GAS-5) | Using bools for storage incurs overhead | 3 | 51300
| [GAS-6](#GAS-6) | Avoid contract existence checks by using low level calls | 1 | -
| [GAS-7](#GAS-7) | `>=` costs less gas than `>` | 1 | 3

Total: **29 instances** over **7 issues** with an estimated **51455 Gas Saved**

Gas totals use the lower-bound of ranges and count 1 iteration of each for-loop. All values above are runtime, not deployment.

### <a name="GAS-1"></a>[GAS-1] Use EIP-1167 minimal proxies for 10x cheaper contract instantiation

When new contracts have to be instantiated frequently, it's [much cheaper](https://github.com/porter-finance/v1-core/issues/15) for it to be done via [minimal proxies](https://eips.ethereum.org/EIPS/eip-1167). The only downside is that they rely on `delegatecall()` calls for every function, which adds an overhead of ~800 gas, but this is multiple orders of magnitude less than the amount saved during deployment

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:612:       _surrogate = new DelegationSurrogate(STAKE_TOKEN, _delegatee);
```

### <a name="GAS-2"></a>[GAS-2] Using `private` rather than `public` for constants, saves gas

If needed, the values can be read from the verified contract source code, or if there are multiple values there can be a single getter function that [returns a tuple](https://github.com/code-423n4/2022-08-frax/blob/90f55a9ce4e25bceed3a74290b854341d8de6afa/src/contracts/FraxlendPair.sol#L156-L178) of the values of all currently-public constants. Saves **3406-3606 gas** in deployment gas due to the compiler not having to create non-payable getter functions for deployment calldata, not having to store the bytes of the value outside of where it's used, and not adding another entry to the method ID table

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:102:   bytes32 public constant STAKE_TYPEHASH = keccak256(

UniStaker.sol:106:   bytes32 public constant STAKE_MORE_TYPEHASH =

UniStaker.sol:109:   bytes32 public constant ALTER_DELEGATEE_TYPEHASH = keccak256(

UniStaker.sol:113:   bytes32 public constant ALTER_BENEFICIARY_TYPEHASH = keccak256(

UniStaker.sol:117:   bytes32 public constant WITHDRAW_TYPEHASH =

UniStaker.sol:120:   bytes32 public constant CLAIM_REWARD_TYPEHASH =

UniStaker.sol:130:   uint256 public constant REWARD_DURATION = 30 days;

UniStaker.sol:134:   uint256 public constant SCALE_FACTOR = 1e36;
```

### <a name="GAS-3"></a>[GAS-3] Unchecking arithmetics operations that can't underflow/overflow

Solidity version 0.8+ comes with implicit overflow and underflow checks on unsigned integers. When an overflow or an underflow isn't possible (as an example, when a comparison is made before the arithmetic operation), some gas can be saved by using an `unchecked` block: <https://docs.soliditylang.org/en/v0.8.10/control-structures.html#checked-or-unchecked-arithmetic>

Consider wrapping with an `unchecked` block where it's certain that there cannot be an underflow

**25 gas saved** per instance

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:233:       + (scaledRewardRate * (lastTimeRewardDistributed() - lastCheckpointTime)) / totalStaked;

UniStaker.sol:580:       uint256 _remainingReward = scaledRewardRate * (rewardEndTime - block.timestamp);

UniStaker.sol:712:     earningPower[deposit.beneficiary] -= deposit.balance;

UniStaker.sol:729:     deposit.balance -= _amount; // overflow prevents withdrawing more than balance

UniStaker.sol:730:     totalStaked -= _amount;

UniStaker.sol:731:     depositorTotalStaked[deposit.owner] -= _amount;

UniStaker.sol:732:     earningPower[deposit.beneficiary] -= _amount;
```

### <a name="GAS-4"></a>[GAS-4] `a = a + b` is more gas effective than `a += b` for state variables (excluding arrays and mappings)

This saves **16 gas per instance.**

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:651:     totalStaked += _amount;

UniStaker.sol:652:     depositorTotalStaked[_depositor] += _amount;

UniStaker.sol:653:     earningPower[_beneficiary] += _amount;

UniStaker.sol:677:     totalStaked += _amount;

UniStaker.sol:678:     depositorTotalStaked[deposit.owner] += _amount;

UniStaker.sol:679:     earningPower[deposit.beneficiary] += _amount;

UniStaker.sol:680:     deposit.balance += _amount;

UniStaker.sol:717:     earningPower[_newBeneficiary] += deposit.balance;
```

### <a name="GAS-5"></a>[GAS-5] Using bools for storage incurs overhead

Use uint256(1) and uint256(2) for true/false to avoid a Gwarmaccess (100 gas), and to avoid SSTORE (20000 gas) when changing from ‘false' to ‘true', after having been ‘true' in the past. See [source](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/58f635312aa21f947cae5f8578638a85aa2519f5/contracts/security/ReentrancyGuard.sol#L23-L27).

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:65:   event RewardNotifierSet(address indexed account, bool isEnabled);

UniStaker.sol:185:   mapping(address rewardNotifier => bool) public isRewardNotifier;

UniStaker.sol:807:     bool _isValid = SignatureChecker.isValidSignatureNow(_signer, _hash, _signature);
```

### <a name="GAS-6"></a>[GAS-6] Avoid contract existence checks by using low level calls

Prior to 0.8.10 the compiler inserted extra code, including `EXTCODESIZE` (**100 gas**), to check for contract existence for external function calls. In more recent solidity versions, the compiler will not insert these checks if the external call has a return value. Similar behavior can be achieved in earlier versions by using low-level calls, since low level calls never check for contract existence

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:595:       (scaledRewardRate * REWARD_DURATION) > (REWARD_TOKEN.balanceOf(address(this)) * SCALE_FACTOR)
```

### <a name="GAS-7"></a>[GAS-7] `>=` costs less gas than `>`

The compiler uses opcodes `GT` and `ISZERO` for solidity code that uses `>`, but only requires `LT` for `>=`, [which saves **3 gas**](https://gist.github.com/IllIllI000/3dc79d25acccfa16dee4e83ffdc6ffde)

Affected code:

- [src/UniStaker.sol](https://github.com/code-423n4/2024-02-uniswap-foundation/src/UniStaker.sol)

```solidity
# File: src/UniStaker.sol

UniStaker.sol:595:       (scaledRewardRate * REWARD_DURATION) > (REWARD_TOKEN.balanceOf(address(this)) * SCALE_FACTOR)
```

