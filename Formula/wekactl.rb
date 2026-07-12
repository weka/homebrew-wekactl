class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.4"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.4/wekactl_1.0.4_darwin_arm64.tar.gz"
      sha256 "c084c9ff7f1f57131b7b918ee0a04ba932a05a8d99a1913ac770e5b59ded48e6"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.4/wekactl_1.0.4_darwin_amd64.tar.gz"
      sha256 "fe4d80ee1a5de4f0fb83258c78c3ddad777fcc166b547ab4a30eda06583ef369"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
