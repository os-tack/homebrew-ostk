class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "7.7.7"
  license "BSL-1.1"

  if OS.mac?
    odie "ostk requires Apple Silicon on macOS as of v5.1.2 — Intel Mac unsupported (track at https://github.com/os-tack/haystack/issues)" unless Hardware::CPU.arm?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.7.7/ostk-7.7.7-aarch64-apple-darwin.tar.gz"
    sha256 "d325b07aab2a3db92ad1cfa7968989f9fad617490bd752064f51525665a51139"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.7.7/ostk-7.7.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6dde8484db5b2453049b134d2dd857db23098efa580f3e1e4f5836c5493ffa68"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
