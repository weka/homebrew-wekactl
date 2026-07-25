class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.21"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.21/wekactl_1.0.21_darwin_arm64.tar.gz"
      sha256 "f89acac712ddd2f1920acca8c28aa3a0b2024dbe7ea20f875e95c6f80c7c4884"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.21/wekactl_1.0.21_darwin_amd64.tar.gz"
      sha256 "b621932c50abccc5c9cf00cf0081238381987d961a46fc0ee24b6ea68b86be16"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
