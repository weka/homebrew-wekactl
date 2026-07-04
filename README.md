# wekactl Homebrew tap

This is the [Homebrew](https://brew.sh/) tap for `wekactl`, the command-line
tool for administering WEKA clusters and filesystems.

## macOS installation

1. **Add the tap**

   ```sh
   brew tap weka/wekactl
   ```

2. **Trust the tap**

   Homebrew 6.0 and later require third-party taps to be explicitly trusted
   before Homebrew will install formulae from them.

   ```sh
   brew trust weka/wekactl
   ```

3. **Install `wekactl`**

   ```sh
   brew install wekactl
   ```

To upgrade to the latest release:

```sh
brew update
brew upgrade wekactl
```

Homebrew automatically picks the right build for your Mac (Apple Silicon or
Intel). The macOS binaries published through this tap are signed with a WEKA
Apple Developer ID certificate and notarized by Apple, so they run on
Gatekeeper-enabled systems without manual approval.

To uninstall:

```sh
brew uninstall wekactl
brew untap weka/wekactl
```

## Linux installation

For Linux distributions, install `wekactl` from the WEKA package repositories.
See <https://get.weka.io/> for instructions on enabling the `yum`/`dnf` or
`apt` repository and installing the package.

## Issues

Packaging and publishing logic lives in
[weka/goweka](https://github.com/weka/goweka). For problems with `wekactl`
itself, please contact WEKA support.
