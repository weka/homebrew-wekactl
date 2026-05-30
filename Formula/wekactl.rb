class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.95.3"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.95.3_darwin_arm64.tar.gz"
      sha256 "d474e05ad9676f73e17d969bd63b371b97dee16676638bd7bab993425dd0a5aa"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.95.3_darwin_amd64.tar.gz"
      sha256 "181342a894c793e9493d0bd4a1190caded4b1ccddeb3e80009ae720dd8eac05c"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
