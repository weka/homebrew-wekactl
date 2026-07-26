class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.22"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.22/wekactl_1.0.22_darwin_arm64.tar.gz"
      sha256 "bee4701bdebe12d0e33a24c4637f6f88ba1d084dfa8ef40df0a5665f3134bca4"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.22/wekactl_1.0.22_darwin_amd64.tar.gz"
      sha256 "0ebaf2f4f3519ae00612b7ff2b70cfe0162978009841f74ab012f90a4078fa92"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
