class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.94.2"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.94.2_darwin_arm64.tar.gz"
      sha256 "3846d23c34a43eeb9197b7f512fd534e8eb2779d702b6efe637cdff16f54c1d0"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.94.2_darwin_amd64.tar.gz"
      sha256 "8ce805c0f89ad709994f337fb661158c2493995f21216855897ee6e89b164aad"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
