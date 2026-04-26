class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "4.3.1"
  license "BSL-1.1"

  if OS.mac?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.3.1/ostk-4.3.1-darwin-universal.tar.gz"
    sha256 "b094887860041a6b990c5c9abd9bc36d372867f4b73a2a88cc0c2857e7b81141"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.3.1/ostk-4.3.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "f7119862bf060545bd803cbeab7d84a351c42e118a99824fab9c69d17b7299d4"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
