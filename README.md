# wekactl Homebrew tap

This is the [Homebrew](https://brew.sh/) tap for [`wekactl`](https://github.com/weka/goweka),
the command-line tool for administering WEKA clusters and filesystems.

## Installation

```sh
brew tap weka/wekactl
brew install wekactl
```

To upgrade to the latest release:

```sh
brew update
brew upgrade wekactl
```

## Supported platforms

- macOS (Apple Silicon and Intel)

The macOS binaries published through this tap are signed with a WEKA Apple
Developer ID certificate and notarized by Apple, so they run on Gatekeeper-enabled
systems without manual approval.

Linux users should install `wekactl` from the native `.deb` or `.rpm` packages
attached to each release on the [`weka/goweka` releases page](https://github.com/weka/goweka/releases).

## Issues

Please report problems with `wekactl` itself in the
[`weka/goweka` issue tracker](https://github.com/weka/goweka/issues).
