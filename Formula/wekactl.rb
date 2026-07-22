class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.19"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.19/wekactl_1.0.19_darwin_arm64.tar.gz"
      sha256 "41dc8b05c27326471eeecae1ea292cba57efff35f69c546b484a7a677086b832"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.19/wekactl_1.0.19_darwin_amd64.tar.gz"
      sha256 "74f817fa0fd3014c3fb19999ba94d75d2b384bc15ec1367c93127498b2299582"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
