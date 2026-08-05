class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.28"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.28/wekactl_1.0.28_darwin_arm64.tar.gz"
      sha256 "d25ff42e17b8f5ca3b23658671ca54a77f550589e3939459d12a3822a1e6ea71"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.28/wekactl_1.0.28_darwin_amd64.tar.gz"
      sha256 "8a123df66df15bf09dfc9aa509432f26794bba045146d23f576e9601c1816ed5"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
