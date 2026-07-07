class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.99.31"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v0.99.31/wekactl_0.99.31_darwin_arm64.tar.gz"
      sha256 "29f56255b9877b09cf8eddad7a84c071a5e55dd7fc59fc4828277b01168a3436"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v0.99.31/wekactl_0.99.31_darwin_amd64.tar.gz"
      sha256 "5e2e5af750155111ec5e9f5570f0ffa3d10d32981da87566e038923f287f86e0"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
