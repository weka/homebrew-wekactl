class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.15"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.15/wekactl_1.0.15_darwin_arm64.tar.gz"
      sha256 "bfceb84b29513dfa525e760a8e105e73c0649ce747a1dfdd0cd72fef39d9edcc"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.15/wekactl_1.0.15_darwin_amd64.tar.gz"
      sha256 "4b55a6630f27060e5d944bffd2cabf706a1f9ec964d7c1f216fc4e2e0d9deba3"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
