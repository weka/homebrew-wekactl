class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.10"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.10_darwin_arm64.tar.gz"
      sha256 "0ffe379a26f2bf678d2649077a2a1886aef21444aedd566d7b2cc1f2e15922e3"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.10_darwin_amd64.tar.gz"
      sha256 "a82f3af737c94e67d5d686606d9cf6c339f482725ebaeaf4cc7aba7b6fba06df"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
