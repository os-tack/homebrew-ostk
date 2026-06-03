class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "7.1.0"
  license "BSL-1.1"

  if OS.mac?
    odie "ostk requires Apple Silicon on macOS as of v5.1.2 — Intel Mac unsupported (track at https://github.com/os-tack/haystack/issues)" unless Hardware::CPU.arm?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.1.0/ostk-7.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "8483d7e0dec59be9f4146237df2830eb3db4abfc2b2aaf95fa9f905da45f7f61"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.1.0/ostk-7.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "20f85b3e1b2e243ba76d12c09a5f7341ca408233bf9f2b6feb7f539c174024e9"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
