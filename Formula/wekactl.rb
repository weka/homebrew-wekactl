class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.39"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.39/wekactl_1.0.39_darwin_arm64.tar.gz"
      sha256 "59fe2c5c7f33b1984f04658794587df7e3584c38a5c45a6a8a82cc5efcfa3f4a"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.39/wekactl_1.0.39_darwin_amd64.tar.gz"
      sha256 "f61ab6cb1fbfd9a802ba70a22d5a7f269e9c6eb8034a9d436d9efba7c9f83143"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
