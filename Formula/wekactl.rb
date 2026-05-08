class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.1.16"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/goweka/releases/download/v0.1.16/wekactl_0.1.16_darwin_arm64.tar.gz"
      sha256 "adc64f7f26366f7af694816e6a33d98dcfa730c724c6c4db4278377b4593e0fa"
    end
    on_intel do
      url "https://github.com/weka/goweka/releases/download/v0.1.16/wekactl_0.1.16_darwin_amd64.tar.gz"
      sha256 "7ffbc3338d3fec33684caea49fabf61bf1bb1e2de11a6cf2302c103fed9200e0"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
