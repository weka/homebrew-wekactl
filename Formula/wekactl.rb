class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.8"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.8/wekactl_1.0.8_darwin_arm64.tar.gz"
      sha256 "47b5106748f92ffe9b956f940c473a1257d7afde92c0ae3cbac97e125a4c2bac"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.8/wekactl_1.0.8_darwin_amd64.tar.gz"
      sha256 "82318e7e6791f49547f0a928d0cbe6fb15a88cd1f48ea6e1ca9685b6eac40f5b"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
