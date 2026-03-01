class GetMd < Formula
  desc "Fetch web pages with JS rendering and convert to Markdown"
  homepage "https://github.com/owayo/get-md"
  version "26.3.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/get-md/releases/download/v26.3.100/get-md-aarch64-apple-darwin.tar.gz"
      sha256 "f973d5ff03430a3d966a72f04e0f96445320eb3889a11363598cbb3ef1ef1064"
    else
      url "https://github.com/owayo/get-md/releases/download/v26.3.100/get-md-x86_64-apple-darwin.tar.gz"
      sha256 "81abc7773b821d1a84ff1785c380f9b3429d5f8452d912cab1d5d5237c5559b7"
    end
  end

  def install
    bin.install "get-md"
  end

  test do
    system "#{bin}/get-md", "--version"
  end
end
