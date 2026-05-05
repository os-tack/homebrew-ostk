class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "4.9.0"
  license "BSL-1.1"

  if OS.mac?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.9.0/ostk-4.9.0-darwin-universal.tar.gz"
    sha256 "ec6db1d002b49bcc5e9bbc7949a83f471c7e82683276f85cb06ebc8ec7f8defe"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.9.0/ostk-4.9.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "c5dfced1795e1bfb0012d2d4a81e9bfafc8cb75f7452b9c9381949c8f5e30eae"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
