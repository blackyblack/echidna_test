# Echidna smart-contracts fuzzing.

## How it works:

- Tests should contain invariants that are always true or always false.
- Test contracts should inherit main contracts and add invariants.
- Invariant should `assert()` on some condition.
- Echidna is a smart-contracts fuzzing analayzer. Written in Haskell.
- Echidna applies randomized input data to the smart-contract public methods.

## Guidelines:
 
- Corpus should be shared for subsequent fuzzing action runs
- Corpus should be separate for each contract
- `assert()` is not supported by Echidna 1.x + Solidity 0.8+. Use `emit Event` as a workaround
- Test contract should setup proper environment for better fuzzing results, eg prepare factories, tokens, oracles, etc.
- Test contract should add helper methods for preprocessing user data, eg add checksum, set bits, calculate hashes, etc. Otherwise fuzzer will never reach certain code branches.
- Test contract should hide methods that should not be tested.