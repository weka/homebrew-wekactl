class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.29"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.29/wekactl_1.0.29_darwin_arm64.tar.gz"
      sha256 "ad8c73317f35d73780c65e4c6f39b40bf0b311909d15746585d6ccd5304f5db7"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.29/wekactl_1.0.29_darwin_amd64.tar.gz"
      sha256 "cbbcf5d4a42affbb1aafb1c9c35bd3234e4416827f5d35f2c041d0f8698404c3"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
