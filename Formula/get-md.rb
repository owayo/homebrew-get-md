class GetMd < Formula
  desc "Fetch web pages with JS rendering and convert to Markdown"
  homepage "https://github.com/owayo/get-md"
  version "26.3.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/get-md/releases/download/v26.3.101/get-md-aarch64-apple-darwin.tar.gz"
      sha256 "163833708fb13b86d1e8dcbf5e60af2f39a38e9a41e62b26a8a1da2e3832282b"
    else
      url "https://github.com/owayo/get-md/releases/download/v26.3.101/get-md-x86_64-apple-darwin.tar.gz"
      sha256 "5c73614d0b2471f2f4a94470ddd7f876bbed0c10fc83d2b4367312b85805cdc5"
    end
  end

  def install
    bin.install "get-md"
  end

  test do
    system "#{bin}/get-md", "--version"
  end
end
