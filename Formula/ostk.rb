class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "7.7.5"
  license "BSL-1.1"

  if OS.mac?
    odie "ostk requires Apple Silicon on macOS as of v5.1.2 — Intel Mac unsupported (track at https://github.com/os-tack/haystack/issues)" unless Hardware::CPU.arm?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.7.5/ostk-7.7.5-aarch64-apple-darwin.tar.gz"
    sha256 "f43b8a2594ee70e46eb90a7fbf375e2eb08b65027c88f585db292f8d44352d86"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.7.5/ostk-7.7.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "082fb9aec569ab41fc163aa330613a349077cb5a8f7ef674a543f70344592d6d"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
