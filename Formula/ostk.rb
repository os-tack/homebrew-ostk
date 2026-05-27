class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "7.0.0"
  license "BSL-1.1"

  if OS.mac?
    odie "ostk requires Apple Silicon on macOS as of v5.1.2 — Intel Mac unsupported (track at https://github.com/os-tack/haystack/issues)" unless Hardware::CPU.arm?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.0.0/ostk-7.0.0-aarch64-apple-darwin.tar.gz"
    sha256 "a4dd77970dc0ffb2d77c7973aabe2128ad44cc71c5330754d547d7159f5e8dfc"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.0.0/ostk-7.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a37981a362eb36f00ebe2dbf935a7299e3b1a9e24886a0f49734f91a4566308f"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
