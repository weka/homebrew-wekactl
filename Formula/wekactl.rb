class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.2"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.2_darwin_arm64.tar.gz"
      sha256 "8e67303619fcd5e06f781de688b2c8e3458a193e145a28ad42fe744f84ee99ab"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.2_darwin_amd64.tar.gz"
      sha256 "c03c398ded89a36c49c354b9715b7436a005b8617fb45fc7b6024e3d95977cee"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
