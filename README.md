
# ExampleContract

This repository contains a simple Solidity smart contract named `ExampleContract`. This contract allows manipulation of a stored value under specific conditions.

## Smart Contract Details

- **Owner**: The contract is initialized with an owner address, who has the exclusive right to update the stored value.
- **Value**: A public variable that stores an unsigned integer (`uint256`).

### Functions

1. **Constructor**
   - Initializes the contract with the deployer's address as the owner.
   - Sets the initial value to 0.

2. **setValue**
   - **Access**: External
   - **Purpose**: Allows the owner to update the stored value.
   - **Conditions**:
     - Only the contract owner can call this function.
     - The new value must not be zero (`_newValue != 0`).
     - Setting the value to 42 is not allowed (`_newValue != 42`).

3. **getValue**
   - **Access**: External view
   - **Purpose**: Retrieves the current stored value.
   - **Returns**: The current value stored in the contract.

### How to Use

To deploy and interact with this contract:
1. Deploy the contract to a supported Ethereum Virtual Machine (EVM) environment.
2. Use the `setValue` function to update the stored value, adhering to the specified conditions.
3. Use the `getValue` function to retrieve the current stored value.

### Deployment

To deploy this contract using tools like [Remix IDE](https://remix.ethereum.org/):
- Copy the contract code into the IDE.
- Compile and deploy using a compatible Ethereum network.

