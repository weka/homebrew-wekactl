class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.97.6"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.97.6_darwin_arm64.tar.gz"
      sha256 "7cbf228476a8a45f87457bac1553720b45a024d38b8a80816016b0a66b9bb042"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.97.6_darwin_amd64.tar.gz"
      sha256 "d4ddc3b97367a5b9a2e847d2a30c41598c764edacbbaebf8de47d92a2daa4e75"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
