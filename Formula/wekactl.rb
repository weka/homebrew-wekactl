class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.96.1"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.96.1_darwin_arm64.tar.gz"
      sha256 "d939d5c7cbf7dadf2c71adb69a771197be695329df7f833319fe50d9a4bb8c84"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.96.1_darwin_amd64.tar.gz"
      sha256 "b0dafbcc51f173d7565de45f9d80367fb98fcc6bda8e6da467b1d03b54415d76"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
