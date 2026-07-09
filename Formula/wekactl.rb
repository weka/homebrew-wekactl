class Wekactl < Formula
  desc "Command-line tool for managing WEKA clusters and filesystems"
  homepage "https://weka.io/"
  version "1.0.1"
  license "WEKA Binary Code License"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.1/wekactl_1.0.1_darwin_arm64.tar.gz"
      sha256 "92bb301234a5fa363f463d01e9a3c592e757f2cdc2a7af9f5c83ddbf099cf4d4"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekactl/releases/download/v1.0.1/wekactl_1.0.1_darwin_amd64.tar.gz"
      sha256 "e2cf601d0780d47b795a5de741314f11177dbf15cb1e30dcb34a67642f74ca82"
    end
  end

  def install
    bin.install "wekactl"
  end

  test do
    system "#{bin}/wekactl", "--version"
  end
end
