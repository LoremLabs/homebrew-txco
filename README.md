# homebrew-txco

Homebrew tap for [`txco`](https://github.com/loremlabs/thanks-computer) — a
programmable event chassis for composing operations with txcl.

## Install

```sh
brew tap loremlabs/txco
brew install txco
```

Then:

```sh
txco --help
```

## Notes

- `Formula/txco.rb` is **generated automatically** by
  [GoReleaser](https://goreleaser.com/) on each tagged release of
  `loremlabs/thanks-computer` — don't edit it by hand.
- Binaries are prebuilt per platform (macOS arm64/amd64, Linux arm64/amd64);
  `brew install` downloads the matching one, no compiler or toolchain needed.
