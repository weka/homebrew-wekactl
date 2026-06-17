class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.3"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.3_darwin_arm64.tar.gz"
      sha256 "a40779ffe2f306e802669909ea07767d4e09db5b52fe49477f0f826b17ea8a73"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.3_darwin_amd64.tar.gz"
      sha256 "996fb65315fb25de56e98a5217b73b174e434a641fa76e5fa063c4fa8faea71d"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
