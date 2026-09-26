class GetMd < Formula
  desc "Fetch web pages with JS rendering and convert to Markdown"
  homepage "https://github.com/owayo/get-md"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/get-md/releases/download/v26.9.100/get-md-aarch64-apple-darwin.tar.gz"
      sha256 "f9f06c36bb6d54ff45a5b257b1caa0c64d6e6c8b8b47e3ab21c4266dd9d6de46"
    else
      url "https://github.com/owayo/get-md/releases/download/v26.9.100/get-md-x86_64-apple-darwin.tar.gz"
      sha256 "ae84fc84c086252f14d09d2239a1c030c8e747925313d0727bce21e170fb6abd"
    end
  end

  def install
    bin.install "get-md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/get-md --version")
  end
end
