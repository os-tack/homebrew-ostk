class Ostk < Formula
  desc "Distributed operating system for AI agents"
  homepage "https://ostk.ai"
  version "4.0.0"
  license "BSL-1.1"

  on_macos do
    url "https://github.com/os-tack/ostk.ai/releases/download/v4.0.0/ostk-4.0.0-darwin-universal.tar.gz"
    sha256 "09162b7fdf1aa64976362e6734cb16f91aae0db59f8fb75ea6fada160af2a6a8"
  end

  on_linux do
    on_intel do
      url "https://github.com/os-tack/ostk.ai/releases/download/v4.0.0/ostk-4.0.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "515322156f70c4a489f1c9702dc2734fbd3b10a096527254b359097946480d13"
    end
    on_arm do
      url "https://github.com/os-tack/ostk.ai/releases/download/v4.0.0/ostk-4.0.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "67bfe1f6957b770dd1b2d885ad96f1148470f985c26acf0c48610becde8b5c68"
    end
  end

  def install
    bin.install Dir["ostk*"].first => "ostk"
  end

  test do
    system "#{bin}/ostk", "--version"
  end
end
