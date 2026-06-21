class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.4"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.4_darwin_arm64.tar.gz"
      sha256 "7f111a927ad9839cb6c6b22e83738072dcd7b5bf91795ed5273f7b5df95a0e82"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.4_darwin_amd64.tar.gz"
      sha256 "173c047513ad97471d6b020e24ae60e8ad2d8099f674d6ef28542b2fb258db7f"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
