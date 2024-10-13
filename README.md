## Transient Storage

## Dependencies

```bash
$ forge install OpenZeppelin/openzeppelin-contracts@release-v5.1 --no-commit
```

### Test

```bash
$ forge test --gas-report -vv
[⠊] Compiling...
No files changed, compilation skipped

Ran 4 tests for test/Counter.t.sol:CounterTest
[PASS] test_IncrementV0() (gas: 55595)
Logs:
  gas used:  48457

[PASS] test_IncrementV1() (gas: 51638)
Logs:
  gas used:  57699

[PASS] test_IncrementV2() (gas: 55857)
Logs:
  gas used:  48750

[PASS] test_RevertIncrementV3TwiceByNotClearingTS() (gas: 57627)
Suite result: ok. 4 passed; 0 failed; 0 skipped; finished in 8.12ms (8.45ms CPU time)
| src/Counter.sol:CounterV0 contract |                 |       |        |       |         |
|------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                    | Deployment Size |       |        |       |         |
| 104451                             | 263             |       |        |       |         |
| Function Name                      | min             | avg   | median | max   | # calls |
| increment                          | 43401           | 43401 | 43401  | 43401 | 1       |
| number                             | 281             | 281   | 281    | 281   | 1       |


| src/Counter.sol:CounterV1 contract |                 |       |        |       |         |
|------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                    | Deployment Size |       |        |       |         |
| 130935                             | 387             |       |        |       |         |
| Function Name                      | min             | avg   | median | max   | # calls |
| increment                          | 52694           | 52694 | 52694  | 52694 | 1       |
| number                             | 282             | 282   | 282    | 282   | 1       |


| src/Counter.sol:CounterV2 contract |                 |       |        |       |         |
|------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                    | Deployment Size |       |        |       |         |
| 128311                             | 375             |       |        |       |         |
| Function Name                      | min             | avg   | median | max   | # calls |
| increment                          | 43745           | 43745 | 43745  | 43745 | 1       |
| number                             | 281             | 281   | 281    | 281   | 1       |


| test/Counter.t.sol:CounterV3Caller contract |                 |       |        |       |         |
|---------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                             | Deployment Size |       |        |       |         |
| 151290                                      | 506             |       |        |       |         |
| Function Name                               | min             | avg   | median | max   | # calls |
| incrementTwice                              | 49573           | 49573 | 49573  | 49573 | 1       |




Ran 1 test suite in 11.44ms (8.12ms CPU time): 4 tests passed, 0 failed, 0 skipped (4 total tests)
```
