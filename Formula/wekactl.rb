class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.6"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.6/wekactl_1.0.6_darwin_arm64.tar.gz"
      sha256 "c6391e387e2318a8d253f163c16ff03e278bb18ff0432d500f5499b79a541a64"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.6/wekactl_1.0.6_darwin_amd64.tar.gz"
      sha256 "29d582fd1ff7caaeaa847af5bc3d9dafa31ce9e1de00e38720aafa40866e5aa9"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
