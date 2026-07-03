class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.24"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v0.99.24/wekactl_0.99.24_darwin_arm64.tar.gz"
      sha256 "61ab6c5b53c5d9394720a0837c464d45244294f91d22ec0f82b113becd80ec84"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v0.99.24/wekactl_0.99.24_darwin_amd64.tar.gz"
      sha256 "2c3b80a1e78b25b83eac55818df68e4b82e831c542672d1b5512d33db1026e02"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
