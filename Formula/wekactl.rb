class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.19"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.19_darwin_arm64.tar.gz"
      sha256 "a7583d7509ab63ddb6c6472595a4e7b466f0b053b9ce41997d65f19f583476da"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.19_darwin_amd64.tar.gz"
      sha256 "2a5778ce7333bb64160386b88144b40356e8e8307daba9982b07efaaf2206f14"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
