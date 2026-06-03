class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.96.2"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.96.2_darwin_arm64.tar.gz"
      sha256 "3da08ec48cd3d9baf65414257979b3766bca89f5e1e1004e3ba1891ebd6f6984"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.96.2_darwin_amd64.tar.gz"
      sha256 "7f74ddc41585ad1a4d8c5578fae7fd925d619866c0f82eb0d36a070c9ab90042"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
