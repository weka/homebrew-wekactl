class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.12"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.12_darwin_arm64.tar.gz"
      sha256 "6d5af247f1672aae70beba2c5d6d9f4eb31a72030a96ff1b8b926d697a47f233"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.12_darwin_amd64.tar.gz"
      sha256 "405e4c31007473681cd98e3047466b834bcea482bda4732b1320a6969cd46abf"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
