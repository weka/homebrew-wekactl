class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.93.2"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.93.2_darwin_arm64.tar.gz"
      sha256 "dee60bc7dc9ee7a48a5d5c74cbf15dfb59f3e9b1ba0c819cc24619c6c955a72d"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.93.2_darwin_amd64.tar.gz"
      sha256 "692ac89fb556cfbba0fe0dccde57ceccca6d2ced83a991c2cfe6d49cec271a9d"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
