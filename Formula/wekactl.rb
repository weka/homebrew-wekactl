class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.30"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v0.99.30/wekactl_0.99.30_darwin_arm64.tar.gz"
      sha256 "668400aa87f09fc5ab4229c1d13b383b0e70a89fea35d3f50fdc03bea89a786e"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v0.99.30/wekactl_0.99.30_darwin_amd64.tar.gz"
      sha256 "10abafd982fdc4b57a563fa6d8542350f1dd1b0a99741a9bda0a3be5a7da9c62"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
