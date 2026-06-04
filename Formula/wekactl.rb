class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.96.3"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.96.3_darwin_arm64.tar.gz"
      sha256 "77bb5e65fda96623dacb778354cae25e797286e390d0d041ac27f66d0443f04e"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.96.3_darwin_amd64.tar.gz"
      sha256 "46b7cd2f3e479c4d4ac67ddbeff68c15320b6ca7451dda94c9c45f7fb19ef5a4"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
