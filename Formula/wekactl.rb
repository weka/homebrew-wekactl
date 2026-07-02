class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.21"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.21_darwin_arm64.tar.gz"
      sha256 "f40f4d8ee0de92b8b48de912285b7136bc99a2b276ec858b742b7ac4132dbfa1"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.21_darwin_amd64.tar.gz"
      sha256 "508a742a02aac67014311b37752f7424a54fe4673f9e54d5bc8f618406714b67"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
