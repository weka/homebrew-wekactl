class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.38"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.38/wekactl_1.0.38_darwin_arm64.tar.gz"
      sha256 "25ed899d414967f618688395d1d91026a5225156b88d243560601159589aa6c5"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.38/wekactl_1.0.38_darwin_amd64.tar.gz"
      sha256 "2a007dc65be33facc1b4e11a0fa8701fcc8f642941a38371c4bdbcf61e27df7a"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
