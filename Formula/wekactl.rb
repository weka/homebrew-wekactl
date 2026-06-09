class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.97.5"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.97.5_darwin_arm64.tar.gz"
      sha256 "57488379c4bede06f2f0e1e5ee620fd2dac8a2879debacc660369ff009f9740f"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.97.5_darwin_amd64.tar.gz"
      sha256 "4c3a8023444867db3749263531dcfb214c6e08efeb37f28e4590411eb2ce0d45"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
