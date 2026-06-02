class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.96.0"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.96.0_darwin_arm64.tar.gz"
      sha256 "beb1500bc6f4da8d5c2c000243317ad9fd79727ee4387fcae56bc71176b65630"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.96.0_darwin_amd64.tar.gz"
      sha256 "6af40ba0c22c91ecd4ef61336c635094fb589773ab7a4ba198474d6b65d5cb35"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
