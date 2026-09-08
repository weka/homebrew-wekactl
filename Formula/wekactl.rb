class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.35"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.35/wekactl_1.0.35_darwin_arm64.tar.gz"
      sha256 "70d76fbb8a3a0b793f7ff4573a515a941e4c8a4d447df1d622b18fad48cbc8e0"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.35/wekactl_1.0.35_darwin_amd64.tar.gz"
      sha256 "f0e1a8082268873eb1d04993c9418fa80ba5e7bead5fb1fdce7e67a53d829a22"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
