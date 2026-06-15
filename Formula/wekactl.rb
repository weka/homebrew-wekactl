class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.0"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.0_darwin_arm64.tar.gz"
      sha256 "9562bacd892a8ee72d1984095365fc470ab3984b74259d3cf6de3e076f832554"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.0_darwin_amd64.tar.gz"
      sha256 "4d998c8dad7dd490eed8489b4038cdbf1630765ddada682dc80701c0673601ea"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
