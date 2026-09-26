class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.37"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.37/wekactl_1.0.37_darwin_arm64.tar.gz"
      sha256 "fcf05b92ca9ed40b60bc8e8f8b1b8e80f1e76355ab1002725b7ce504b2e5714b"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.37/wekactl_1.0.37_darwin_amd64.tar.gz"
      sha256 "8795f36d87007b5484848d05573b66c4bec0f96f87ab7ce4f9e362563e639ed6"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
