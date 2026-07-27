class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.23"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.23/wekactl_1.0.23_darwin_arm64.tar.gz"
      sha256 "56f55d83efadfeca5f1a83bd939bab27e336bc4856e9996c744a4e3663a8f1b6"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.23/wekactl_1.0.23_darwin_amd64.tar.gz"
      sha256 "3c2a4c09768bef4f67244b4bc2b2a9931a28f00c2c5396b197e4cd0c4a3bed22"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
