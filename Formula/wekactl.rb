class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.1"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.1_darwin_arm64.tar.gz"
      sha256 "b1b8f048b5990ec3e69ea57d43e02a0dbdb374adff036f54f611f4006164f296"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.1_darwin_amd64.tar.gz"
      sha256 "fca170b3fd80dde33e45db2607bf3f5028563c9f060a33f6db35a45fb7434474"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
