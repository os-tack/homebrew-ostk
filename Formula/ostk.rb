class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "7.3.0"
  license "BSL-1.1"

  if OS.mac?
    odie "ostk requires Apple Silicon on macOS as of v5.1.2 — Intel Mac unsupported (track at https://github.com/os-tack/haystack/issues)" unless Hardware::CPU.arm?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.3.0/ostk-7.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "bccce243cdcc6b0adad000b8dbeccd01b1bae8c169bab91adacc7e8c76dc82e9"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.3.0/ostk-7.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f90e8a20a79236a573f7fe81a6c68667e7646d2797c48dfb5f3e52e2c5e3aad1"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
