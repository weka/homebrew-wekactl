class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.17"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.17/wekactl_1.0.17_darwin_arm64.tar.gz"
      sha256 "1132fa3566fa8bc6476d556cc0642bed30914780e3ab4e5a2a33040f9871bee1"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.17/wekactl_1.0.17_darwin_amd64.tar.gz"
      sha256 "f09526d76f2b441d40cc372d066ff5dd3d938d688273511ac30d0bcee911c296"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
