class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.94.0"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.94.0_darwin_arm64.tar.gz"
      sha256 "fe3a71db2e4cb3c00149d559563d0fc0ae558e09a5ae0c0aaa41eeed08895ec4"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.94.0_darwin_amd64.tar.gz"
      sha256 "069dd4b5d0e464a8964aac1e3d7aa47efa7e0298f5885f714392b23d269a5826"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
