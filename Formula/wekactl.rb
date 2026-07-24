class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.20"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.20/wekactl_1.0.20_darwin_arm64.tar.gz"
      sha256 "bc752f1dda0bca43f59df16b27e7bc8b59cf9d18d433bed51e09b2a345e0d871"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.20/wekactl_1.0.20_darwin_amd64.tar.gz"
      sha256 "1cab769efa63a2106c6787c5d03544b34233ecc9430ddf89e248ec379d7816ef"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
