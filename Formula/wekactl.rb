class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.31"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.31/wekactl_1.0.31_darwin_arm64.tar.gz"
      sha256 "99aac15981f0245b260350e752416abf514e398bd391ecccd00ee6032981051b"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.31/wekactl_1.0.31_darwin_amd64.tar.gz"
      sha256 "0931315e655c76dc15382ab622ba38d50b8c59eda0d8d9887f096c14700de3be"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
