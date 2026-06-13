class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "7.6.0"
  license "BSL-1.1"

  if OS.mac?
    odie "ostk requires Apple Silicon on macOS as of v5.1.2 — Intel Mac unsupported (track at https://github.com/os-tack/haystack/issues)" unless Hardware::CPU.arm?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.6.0/ostk-7.6.0-aarch64-apple-darwin.tar.gz"
    sha256 "e09d0d5d83073b96b39ca7ae270859844e6c6db6a3c3ff98effd22930fc5cbbc"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.6.0/ostk-7.6.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6dab702063670cc933793e0a8205af0faf5157cbc1b2cbf0c53345708a20c650"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
