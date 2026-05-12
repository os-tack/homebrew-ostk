class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "6.0.5"
  license "BSL-1.1"

  if OS.mac?
    odie "ostk requires Apple Silicon on macOS as of v5.1.2 — Intel Mac unsupported (track at https://github.com/os-tack/haystack/issues)" unless Hardware::CPU.arm?
    url "https://github.com/os-tack/ostk.ai/releases/download/v6.0.5/ostk-6.0.5-aarch64-apple-darwin.tar.gz"
    sha256 "2fbb981057f6678e2b908582a8bd2c89ddd66834e1a03cad77af7f22317575b5"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v6.0.5/ostk-6.0.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cb4a5430c76c326dc66af183fb3118d1fcb6cf0202828cf280ca9229d531166e"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
