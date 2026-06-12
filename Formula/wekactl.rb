class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.98.1"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.98.1_darwin_arm64.tar.gz"
      sha256 "6066324e3aca732aa068031190aac77b50112732adb40c1863eb90ab71474f1f"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.98.1_darwin_amd64.tar.gz"
      sha256 "8e6c79bd3b1e82155d4db35a8722a66d8c764342d949f39f8eb2d1ace3fdd477"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
