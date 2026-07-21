class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.18"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.18/wekactl_1.0.18_darwin_arm64.tar.gz"
      sha256 "d8a92bdb3f8c3ba1530578934f62e61ef4a7c72d330886e1124681b43a3a612e"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.18/wekactl_1.0.18_darwin_amd64.tar.gz"
      sha256 "988cac4a67db482d860a7f69d1ea6ef7c68102cafd61ba44a890591651293070"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
