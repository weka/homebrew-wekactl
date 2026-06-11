class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.98.0"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.98.0_darwin_arm64.tar.gz"
      sha256 "40774fbe598482a8a9de1e1791b307dbd39875ab736d50340dc6ce62a88e3e84"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.98.0_darwin_amd64.tar.gz"
      sha256 "2829201d888d28da7a10c8e6fae51665da16ea2963fc2fd0bc00bbaa92d8f19d"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
