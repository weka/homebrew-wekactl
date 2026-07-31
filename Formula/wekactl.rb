class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.26"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.26/wekactl_1.0.26_darwin_arm64.tar.gz"
      sha256 "23e65a097ead6838feb652024f856f252b26712b569ade597ecd9546ce12f312"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.26/wekactl_1.0.26_darwin_amd64.tar.gz"
      sha256 "54a3e0f5591487dbd7760f09bb439c03b81db255090a458f1887316e4fb34957"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
