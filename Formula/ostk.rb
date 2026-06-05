class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "7.2.1"
  license "BSL-1.1"

  if OS.mac?
    odie "ostk requires Apple Silicon on macOS as of v5.1.2 — Intel Mac unsupported (track at https://github.com/os-tack/haystack/issues)" unless Hardware::CPU.arm?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.2.1/ostk-7.2.1-aarch64-apple-darwin.tar.gz"
    sha256 "f591480cbf6dd4a11436976eb762a4e80c5cc17b0f35d9b91e494a8eddee9012"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.2.1/ostk-7.2.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ca0771950b60fc9b500a0196bbfb721e8a057ad23022c08069435eb964cf0e0b"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
