class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "7.5.2"
  license "BSL-1.1"

  if OS.mac?
    odie "ostk requires Apple Silicon on macOS as of v5.1.2 — Intel Mac unsupported (track at https://github.com/os-tack/haystack/issues)" unless Hardware::CPU.arm?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.5.2/ostk-7.5.2-aarch64-apple-darwin.tar.gz"
    sha256 "85a9659dd09d535b2262d79db3db3642280f67a4a2c6c3666dea1c11e714a0a3"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.5.2/ostk-7.5.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "50c78975b109ccd146ea8190f3da30b7e3d9aeecdddf77702d1e1854ab808c7c"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
