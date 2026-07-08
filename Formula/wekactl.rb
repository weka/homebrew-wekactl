class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.32"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v0.99.32/wekactl_0.99.32_darwin_arm64.tar.gz"
      sha256 "39b8fc9cddd61efd15908f9cd8f738c432b3bc782074b74a254e3f7a12f2a330"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v0.99.32/wekactl_0.99.32_darwin_amd64.tar.gz"
      sha256 "6a37462a7390ac36275ac849ac041382c43290c0bb00a049ab6cc595459553e6"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
