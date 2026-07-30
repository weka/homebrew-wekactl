class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.25"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.25/wekactl_1.0.25_darwin_arm64.tar.gz"
      sha256 "f875381309e66fd996940a20e433582ff6c7bf9d282e82d0d361f6a106e5f561"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.25/wekactl_1.0.25_darwin_amd64.tar.gz"
      sha256 "794d233422d4355992ef9561305e35c2bd3a99ab8e4661f1aad743e03d409dab"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
