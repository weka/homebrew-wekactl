class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.6"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.6_darwin_arm64.tar.gz"
      sha256 "0d6fd28dd79a3e01540798de12f5a7999381c7eb191318e3a4e7dece0eac0d48"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.99.6_darwin_amd64.tar.gz"
      sha256 "47141eca57edc1a2f824a2d2384daeb0d5670e9a9b906a7b43f61c37a4f30994"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
