class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.95.0"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.95.0_darwin_arm64.tar.gz"
      sha256 "f80854832308362696567028a64ab7b7a45bb511d8e4cf14c3a67e5634560d3a"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.95.0_darwin_amd64.tar.gz"
      sha256 "4c7735f8f7702cb15099d3c25a720496506ee98e284b2fc51b71454231092bf7"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
