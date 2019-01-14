# Cycle

A sequence that cycles between each of the items in a given sequence.

```swift
for (number, parity) in zip(0..<5, ["even", "odd"].cycled()) {
    print(number, parity)
}
// Prints:
// 0 even
// 1 odd
// 2 even
// 3 odd
// 4 even
```

## License

MIT

## Contact

Mattt ([@mattt](https://twitter.com/mattt))
