class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.12"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.12/wekactl_1.0.12_darwin_arm64.tar.gz"
      sha256 "95f4b4541f5f28554e1199287db13bb8916d2a734ed266d17f421d85855c6b13"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.12/wekactl_1.0.12_darwin_amd64.tar.gz"
      sha256 "7b771f72c781a4a104cccd96fbd6646f0711e76bd46a3e757bc8abae44a7f479"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
