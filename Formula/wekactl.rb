class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.24"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.24/wekactl_1.0.24_darwin_arm64.tar.gz"
      sha256 "32c2732ff580385cc4e6117c8a302a8e63da5a8a47fc64c36824d421beda17f4"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.24/wekactl_1.0.24_darwin_amd64.tar.gz"
      sha256 "d144c5cc252b93d0e650779a1dc9afa36f8802181b87702b076305e0518d9214"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
