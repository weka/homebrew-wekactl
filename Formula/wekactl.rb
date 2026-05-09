class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.93.0"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.93.0_darwin_arm64.tar.gz"
      sha256 "b60c0143588e59d49bb784c8fdf168009868c8ffe16e5ec4bf6fa1a2f82ec93b"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.93.0_darwin_amd64.tar.gz"
      sha256 "5354812e675736f1a83ce32bc83772fb1fd3020868bd33fa1f731964768b8de6"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
