class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.5"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.5/wekactl_1.0.5_darwin_arm64.tar.gz"
      sha256 "7f15d9fb5973fb7477be8121f2dafcfa4962f2e20c0572327cc470380c623c08"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.5/wekactl_1.0.5_darwin_amd64.tar.gz"
      sha256 "24fb6d1135708c6d0746c51a1d93a2e6d1543ce9cc3c3156897cc68e0cd46609"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
