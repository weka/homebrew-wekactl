class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.29"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v0.99.29/wekactl_0.99.29_darwin_arm64.tar.gz"
      sha256 "fa6c0aa233242fa8d139089e5114b08c938dbcc8fccb3dce3b387a836487446d"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v0.99.29/wekactl_0.99.29_darwin_amd64.tar.gz"
      sha256 "dc65d8a2b919750f1dce4e0dbcc9599f6581d73d64dfbf7da52e03933456e088"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
