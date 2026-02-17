class GetMd < Formula
  desc "Fetch web pages with JS rendering and convert to Markdown"
  homepage "https://github.com/owayo/get-md"
  version "26.2.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/get-md/releases/download/v26.2.101/get-md-aarch64-apple-darwin.tar.gz"
      sha256 "9457092864e1e3503cb6db7ad6c26623b33c598ef2817596885335e5ffa34e08"
    else
      url "https://github.com/owayo/get-md/releases/download/v26.2.101/get-md-x86_64-apple-darwin.tar.gz"
      sha256 "bfd5fce2f0b9f43c237ebe27fccbf67e1f3165a997b77ee5903440d50753172e"
    end
  end

  def install
    bin.install "get-md"
  end

  test do
    system "#{bin}/get-md", "--version"
  end
end
