# homebrew-txco

Homebrew tap for [`txco`](https://github.com/loremlabs/thanks-computer) — a
programmable event chassis for composing operations with txcl.

## Install

```sh
brew install loremlabs/txco/txco
```

The fully qualified name taps this repo and trusts just the `txco` formula in
one step. Homebrew 6.0 and later require third-party taps to be trusted, so a
separate `brew tap` followed by `brew install txco` no longer works on a fresh
machine (see <https://docs.brew.sh/Tap-Trust>).

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
