class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.17"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.17_darwin_arm64.tar.gz"
      sha256 "771016793b11090d4c1f327c371161e340ff7c453a1816769aef27799f94aa7f"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.17_darwin_amd64.tar.gz"
      sha256 "1c71e6387be687c1f2a301e51a9c0f627be289df84e1879eae251b81fba67421"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
