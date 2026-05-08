class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.1.18"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.1.18_darwin_arm64.tar.gz"
      sha256 "3400dda2dc20e73f12ac85c32479dcf90e7f4d4cf6af44b111d710b51762bc52"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.1.18_darwin_amd64.tar.gz"
      sha256 "ac71bda840f545e39c42df729210a44bbded10b8f089f8c951e9bdf03754faeb"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
