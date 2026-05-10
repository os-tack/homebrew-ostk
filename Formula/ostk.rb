class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "6.0.0"
  license "BSL-1.1"

  if OS.mac?
    odie "ostk requires Apple Silicon on macOS as of v5.1.2 — Intel Mac unsupported (track at https://github.com/os-tack/haystack/issues)" unless Hardware::CPU.arm?
    url "https://github.com/os-tack/ostk.ai/releases/download/v6.0.0/ostk-6.0.0-aarch64-apple-darwin.tar.gz"
    sha256 "7c324f2d5e484966912072ad9ccbca9504b2df74835c1f0c51bdf081566b54cd"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v6.0.0/ostk-6.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "22f18b4499864a8b8b8e6373f717553c8c55004bc8bcc5ac1a4ce993ade1d4c6"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
