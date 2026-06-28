class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.16"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.16_darwin_arm64.tar.gz"
      sha256 "5faf59d7d50acc9fe79b9b7122a91edd25ca1b536d640c1a2ba432ba14608481"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.16_darwin_amd64.tar.gz"
      sha256 "c438665e3b8a4208710aac6e7366e3f4aa99c4a8f0e419cc2a068bc93a5934f6"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
