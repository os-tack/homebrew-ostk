class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "4.4.2"
  license "BSL-1.1"

  if OS.mac?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.4.2/ostk-4.4.2-darwin-universal.tar.gz"
    sha256 "ee9db6a1f86dba45d3b05149cacccf81d3d31291cf6f8cf72d4a529b3b785670"
  elsif OS.linux?
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.4.2/ostk-4.4.2-x86_64-unknown-linux-musl.tar.gz"
    sha256 "f3b55c10db39dcba0a6511991eb3fc6fb399b2d011a744a71199e12ab9cf6a98"
  end

  def install
    bin.install "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
