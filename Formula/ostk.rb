class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "4.8.0"
  license "BSL-1.1"

  if OS.mac?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.8.0/ostk-4.8.0-darwin-universal.tar.gz"
    sha256 "dbefabc1746f3f00aa1aa903c48931219497303bedfdddae64eea1a0e4cd89f0"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.8.0/ostk-4.8.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "4b58b838282c68f868994c5fdb6a86d97fdb78cc39cd8970f823f4dc30e52648"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
