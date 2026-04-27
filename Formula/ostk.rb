class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "4.5.0"
  license "BSL-1.1"

  if OS.mac?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.5.0/ostk-4.5.0-darwin-universal.tar.gz"
    sha256 "33ce8492e9d0e39106d875d6553ef85f885c381973247a77087730871f87e098"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.5.0/ostk-4.5.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "b962a9571f23200206053c30f069aafb9d37b71a6e132d052e9d7b7416553b95"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
