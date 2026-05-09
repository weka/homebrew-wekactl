class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.93.1"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.93.1_darwin_arm64.tar.gz"
      sha256 "be61f47a636aba2609c8a7f7533773affa431f7c4102d4dacdc8450e60f9b8e8"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.93.1_darwin_amd64.tar.gz"
      sha256 "3921801b06d26bca74037c38f6234662dc3317ac5c902816c034a9507ff1cb90"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
