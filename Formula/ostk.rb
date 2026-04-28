class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "4.6.1"
  license "BSL-1.1"

  if OS.mac?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.6.1/ostk-4.6.1-darwin-universal.tar.gz"
    sha256 "25ea302b090c26621e8a8262287b4e322501dc4d88b4f4588a46249c69b7ce58"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.6.1/ostk-4.6.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "68851cd99081f21d6efb828bb32db6822edeec4273255b0d9088a9d30b36e67d"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
