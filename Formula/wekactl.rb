class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.1.0"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.1.0/wekactl_1.1.0_darwin_arm64.tar.gz"
      sha256 "dda84171bb85be7a181022581e4bb562fd7280906fe1be8a7881e569055f2b8a"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.1.0/wekactl_1.1.0_darwin_amd64.tar.gz"
      sha256 "7b6ff86f3bc348e3a087b1a9ce82b3bcfa5f0b4456be35e4ba3efe4d2e7ece08"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
