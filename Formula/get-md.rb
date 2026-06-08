class GetMd < Formula
  desc "Fetch web pages with JS rendering and convert to Markdown"
  homepage "https://github.com/owayo/get-md"
  version "26.6.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/get-md/releases/download/v26.6.100/get-md-aarch64-apple-darwin.tar.gz"
      sha256 "13ba1977e6801ec7fadbdc740f422df8275607288f7ce3467fc823d0d674f657"
    else
      url "https://github.com/owayo/get-md/releases/download/v26.6.100/get-md-x86_64-apple-darwin.tar.gz"
      sha256 "92b92ad8cac2775a3ce49cd882cc857e7bd681d19822d7e2112e08702c9d4ee2"
    end
  end

  def install
    bin.install "get-md"
  end

  test do
    system "#{bin}/get-md", "--version"
  end
end
