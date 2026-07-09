# Homebrew Tap for LibreFang

Community-maintained Homebrew tap for [LibreFang](https://librefang.ai), an Agent Operating System written in Rust.

The **stable CLI now ships from [homebrew-core](https://github.com/Homebrew/homebrew-core/pull/290413)** — install it with no tap required:

```bash
brew install librefang
```

This tap provides the **desktop app**, the **pre-release CLI channels** (beta / rc), and **version-pinned** builds.

## Desktop App (macOS)

```bash
brew tap librefang/tap
brew install --cask librefang            # stable
# brew install --cask librefang-beta     # beta channel
# brew install --cask librefang-rc       # rc channel
```

## Pre-release CLI (beta / rc)

```bash
brew tap librefang/tap
brew install librefang-beta              # beta channel
brew install librefang-rc                # rc channel
```

## Version Pinning

```bash
brew tap librefang/tap
brew install librefang/tap/librefang@2026.6.29
```

## Usage

```bash
librefang init          # initialize
librefang start         # start the daemon — dashboard at http://localhost:4545
```

## Documentation

See the [main documentation](https://docs.librefang.ai) for full usage.

## License

MIT License - see [LICENSE](LICENSE)
