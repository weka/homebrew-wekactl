class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.30"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.30/wekactl_1.0.30_darwin_arm64.tar.gz"
      sha256 "857eecd14a19ea35787700532c9564012fa950638b6e44ec8cc7529df78d33c4"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.30/wekactl_1.0.30_darwin_amd64.tar.gz"
      sha256 "648403ab7fde3b63953b8755bf60971ebaff7bdd4f0cff7705543404371a26a8"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
