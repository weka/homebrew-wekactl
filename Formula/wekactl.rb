class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.7"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.7/wekactl_1.0.7_darwin_arm64.tar.gz"
      sha256 "49e0cfcd205371b561045f7315cf5e0356cf49bd0f523fe174799bd905ca4306"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.7/wekactl_1.0.7_darwin_amd64.tar.gz"
      sha256 "d86d4b0055641c059686ce2bf655fcd7a600223e2cdd22273c4a84a914f45e50"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
