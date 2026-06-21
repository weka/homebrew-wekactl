class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.5"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.5_darwin_arm64.tar.gz"
      sha256 "5dd29c245252f920d2931b7138a750923b2b732bca4312708d3e9cee210a272b"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.5_darwin_amd64.tar.gz"
      sha256 "f836689492adb5d5ac846adce4340fd5c7937ce40e7ec50b84fd2293d1a64ef8"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
