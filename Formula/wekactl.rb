class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.36"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.36/wekactl_1.0.36_darwin_arm64.tar.gz"
      sha256 "05fe156df25517415c98bbde7e1d7903f5741b0ce5943411c1cd7ec86d592e70"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.36/wekactl_1.0.36_darwin_amd64.tar.gz"
      sha256 "6b66a7d95420256ebe33283c3b514bcde43fe3a25cadfb9c55e57c3f7ff90452"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
