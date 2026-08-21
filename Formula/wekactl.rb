class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.32"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.32/wekactl_1.0.32_darwin_arm64.tar.gz"
      sha256 "4e42439aac3a6475131cecc06f4d489d97510ff58b17820c5f3d5103f9fd40a7"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.32/wekactl_1.0.32_darwin_amd64.tar.gz"
      sha256 "cd83b8ba0d8ae81e88995ade415ef67cd360d6088009e6f802e805694d23afd6"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
