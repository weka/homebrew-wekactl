class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.18"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.18_darwin_arm64.tar.gz"
      sha256 "f3a5c2d67b28c4b0730c156976318ec52eadd1992159ed61d392314187e07287"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.18_darwin_amd64.tar.gz"
      sha256 "6b32559d77443b1d623db3994105ab22194f53e7d325cc2f70e3c56024470277"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
