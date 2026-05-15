class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.94.1"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.94.1_darwin_arm64.tar.gz"
      sha256 "5469be411e618bb1cc23528140512c95924d45b70f1b3ba3cedce98322cac1be"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.94.1_darwin_amd64.tar.gz"
      sha256 "d37b00d0e9fd3db38137f9f50cc7e7c942332eee0f8678a8af78e734293e1310"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
