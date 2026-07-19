class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.16"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.16/wekactl_1.0.16_darwin_arm64.tar.gz"
      sha256 "71fcb6b328002c67e542ed71bcea365ee4da54998be245ffd085a0cb391c28f5"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.16/wekactl_1.0.16_darwin_amd64.tar.gz"
      sha256 "783f7230039b4d726554c27150bd157d8ea514eb7962bb9e9af4417724a6ebd5"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
