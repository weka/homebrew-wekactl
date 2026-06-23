class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.7"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.7_darwin_arm64.tar.gz"
      sha256 "76d338b8465d04700d62b125fbea5a4f9e37e80c253f7f216d704d2dd9043b81"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.7_darwin_amd64.tar.gz"
      sha256 "b15130d49baffe115884144583c4bfa2c2defdc78a4c5a3d4f7cdb1b55cd81e8"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
