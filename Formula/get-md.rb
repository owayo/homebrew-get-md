class GetMd < Formula
  desc "Fetch web pages with JS rendering and convert to Markdown"
  homepage "https://github.com/owayo/get-md"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/get-md/releases/download/v26.9.101/get-md-aarch64-apple-darwin.tar.gz"
      sha256 "b8c03cb6e7c0d6e0b7517fbd1e3f55f3c7c131e433ffcb0927bd73d9558bfef7"
    else
      url "https://github.com/owayo/get-md/releases/download/v26.9.101/get-md-x86_64-apple-darwin.tar.gz"
      sha256 "e592fa5d13aac8388985baf3a4d93f2f3b92abc14ac89a257fa2fed89299ed80"
    end
  end

  def install
    bin.install "get-md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/get-md --version")
  end
end
