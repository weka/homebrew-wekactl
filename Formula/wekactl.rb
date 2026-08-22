class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.33"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.33/wekactl_1.0.33_darwin_arm64.tar.gz"
      sha256 "a3a6d83509901189ff49038ee5b3d933eb96d0e06330158c26b84e4ac8ba22d8"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.33/wekactl_1.0.33_darwin_amd64.tar.gz"
      sha256 "76977ad53250971b79344196fcb677ee6d9256a6a998a906871d44daee3f4628"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
