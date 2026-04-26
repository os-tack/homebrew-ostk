class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "4.3.2"
  license "BSL-1.1"

  if OS.mac?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.3.2/ostk-4.3.2-darwin-universal.tar.gz"
    sha256 "245d6fe480c6229e854528c2c627e658d44fdf209a25e4ba0192fa5aaca35b4b"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.3.2/ostk-4.3.2-x86_64-unknown-linux-musl.tar.gz"
    sha256 "374092d6189cea9aaaea25d68ed36dc8f79958eb1d8c6c226c1242a0274645a7"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
