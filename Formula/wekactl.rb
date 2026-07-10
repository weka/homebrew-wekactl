class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.2"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.2/wekactl_1.0.2_darwin_arm64.tar.gz"
      sha256 "c49c516388518e8bb6daa53ba701992e2e1f26f9cf6a5133693d56a8cb208d60"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.2/wekactl_1.0.2_darwin_amd64.tar.gz"
      sha256 "9e1727413979cba4e95df53b8e2bc2af92c6e273a4dad21e44646d69a0b2d633"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
