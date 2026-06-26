class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.11"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.11_darwin_arm64.tar.gz"
      sha256 "f4b1d1398c8ba85bcc2cb6d910571b5c428e3452cf7b0f3be1d78c86992d50a1"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.11_darwin_amd64.tar.gz"
      sha256 "12876194058e0fad13ccc24428ea7fed23e9d99ef03c8bd11371d2f996a6f381"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
