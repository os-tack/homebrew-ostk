class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "4.6.0"
  license "BSL-1.1"

  if OS.mac?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.6.0/ostk-4.6.0-darwin-universal.tar.gz"
    sha256 "cd4252c1abb4e1886a730b47bb8a60ed96cc6f4693caa2a0531faf92c7223451"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.6.0/ostk-4.6.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "6b026a1ba2614ffda515991d09a5ed80ea2a8a1b80f30289da350fc836ebba72"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
