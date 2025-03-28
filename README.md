# Example project that integrates with Cartesi Rollups through Soldeer and Cannon

This project aims to showcase the power of the Soldeer + Cannon combo.
Soldeer is used to distribute Solidity source code,
while Cannon is used to distribute deployment information.

## Getting Started

After cloning this repository locally, install the necessary dependencies.
We use `pnpm` to install a specific version of the Cannon CLI.
One important aspect of this project is that it has the `soldeer.recursive_deps` flag on.
This flag allows Soldeer to install the Rollups Contracts package, as well as its dependencies.
In this case, the only dependency it uses for production contracts are the Open Zeppelin contracts.

```sh
pnpm install
forge soldeer install
```

Now, you may build the Forge project.
You should be able to run the following command without errors.

```sh
forge build
```

Now, you can run a local devnet with the Rollups Contracts and this project's contracts.

```sh
pnpm cannon build --keep-alive
```

Now, you can interact with the contracts through the Cannon interactive CLI.

## Considerations

1. Please make sure you are using the same version of Rollups Contracts on Soldeer and Cannon.
2. Make sure the `soldeer.recursive_deps` flag is set to `true` on your `foundry.toml`.
3. Make sure to pin the version of your dependencies to avoid undesired side effects.
