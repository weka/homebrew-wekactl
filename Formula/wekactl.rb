class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "0.97.0"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://weka.github.io/goweka/macos/wekactl_0.97.0_darwin_arm64.tar.gz"
      sha256 "68314f44f9023983824afe779baeb7a6441b1f63f36cb3ca863f93099f41b794"
    end
    on_intel do
      url "https://weka.github.io/goweka/macos/wekactl_0.97.0_darwin_amd64.tar.gz"
      sha256 "382e85835ff63d1e8bb5b0495446f4e1fede009e92523bfb58ca3f2ae04b87e3"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
