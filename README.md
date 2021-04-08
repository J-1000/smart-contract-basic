```bash
$ npx ganache-cli --deterministic
```

```bash
$ npx truffle migrate --network development
```

```bash
$ npx truffle console --network development
```

```bash
$ truffle(development)> box = await Box.deployed()
```

```bash
$ truffle(development)> box.store(23)
```

```bash
// There is top level await available
$ truffle(development)> (await box.retrieve()).toString()
```

```bash
$ npx truffle exec --network development ./scripts/index.js
```
