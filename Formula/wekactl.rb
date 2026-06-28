class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.14"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.14_darwin_arm64.tar.gz"
      sha256 "8d4a1d9c531ed5d35401ce776d6d3e8eb3b1b86ecf0368d860fc099ea6d181a3"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.14_darwin_amd64.tar.gz"
      sha256 "59c44f513891b7a11eb9d99ff72ab22f62758a864c0bb0d7bfc7ec5c13602a3b"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
