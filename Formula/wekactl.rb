class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.27"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.27/wekactl_1.0.27_darwin_arm64.tar.gz"
      sha256 "0f43bf54abf5ad1cd9e44a8235e6681fa703ab35123dfe1141b0ca8f3987904e"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.27/wekactl_1.0.27_darwin_amd64.tar.gz"
      sha256 "160ae8f01c88cde5558ebfd4d8e957973294c62933db611b361e4d5350f1bcff"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
