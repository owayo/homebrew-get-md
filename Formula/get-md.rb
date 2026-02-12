class GetMd < Formula
  desc "Fetch web pages with JS rendering and convert to Markdown"
  homepage "https://github.com/owayo/get-md"
  version "26.2.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/get-md/releases/download/v26.2.100/get-md-aarch64-apple-darwin.tar.gz"
      sha256 "c63247d4580c5a705ec3cbb2e06e1529c098a3e738c56f1c8c88d9b8cf707b7a"
    else
      url "https://github.com/owayo/get-md/releases/download/v26.2.100/get-md-x86_64-apple-darwin.tar.gz"
      sha256 "a69ac3713a7d70f6ed141d2ce9e178e0009c7f2dd285ed604e6b81c00ac7eb70"
    end
  end

  def install
    bin.install "get-md"
  end

  test do
    system "#{bin}/get-md", "--version"
  end
end
