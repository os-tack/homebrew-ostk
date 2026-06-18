class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "7.7.1"
  license "BSL-1.1"

  if OS.mac?
    odie "ostk requires Apple Silicon on macOS as of v5.1.2 — Intel Mac unsupported (track at https://github.com/os-tack/haystack/issues)" unless Hardware::CPU.arm?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.7.1/ostk-7.7.1-aarch64-apple-darwin.tar.gz"
    sha256 "62cf0591b5bced4865080ebc0d12c2d7b7491587ca1abd5b79874541a62dca55"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v7.7.1/ostk-7.7.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dc01073e3f2bb8fdc5b3632500eb51f43fb3d6c39645dbacda9baf935637482d"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
