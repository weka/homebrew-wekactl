class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.15"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.15_darwin_arm64.tar.gz"
      sha256 "0c16a18f82e1740c87b5b8ab5115d7f90dacefb462c65eae840590eaa3c6e62b"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.15_darwin_amd64.tar.gz"
      sha256 "8f1c439f9e61ef7af959427f173f916e095e925592de2a10e7062724501f6fcb"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
