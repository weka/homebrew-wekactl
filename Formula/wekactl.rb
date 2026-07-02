class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.22"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.22_darwin_arm64.tar.gz"
      sha256 "95549e6a8d853fb721a9776cd5b9a17a0377b288f87b6d03f92ed7fbff56c429"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.22_darwin_amd64.tar.gz"
      sha256 "81ab70c26811502e68cef0fa6c56a4f102ddb1cf2b15874ccc5477dd6fd31e6c"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
