class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "4.3.0"
  license "BSL-1.1"

  if OS.mac?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.3.0/ostk-4.3.0-darwin-universal.tar.gz"
    sha256 "524b7d7e8cc1e0274ad2e713642bb7cc8380a2f6ad051eb1b6fb120ceeab4ca1"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.3.0/ostk-4.3.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "7c25714694880aa0f787f05cc3e396cc5b5de2b159c9fbc1701b386746b47892"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
