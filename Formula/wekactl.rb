class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.0"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.0/wekactl_1.0.0_darwin_arm64.tar.gz"
      sha256 "67987d2ba3eacf37a8f072809816179e1dd462fa30fc4ebb14704c3853f7a2b4"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.0/wekactl_1.0.0_darwin_amd64.tar.gz"
      sha256 "9be5118817f4e13142e5305ff6dfb0d9fc5a95a5fd342b9a8ab4c630a7688d0f"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
