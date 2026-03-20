class GetMd < Formula
  desc "Fetch web pages with JS rendering and convert to Markdown"
  homepage "https://github.com/owayo/get-md"
  version "26.3.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/get-md/releases/download/v26.3.102/get-md-aarch64-apple-darwin.tar.gz"
      sha256 "32a54b449bc7d4ce6053ebe651c7aea06bc3bea38b048c516a40b07223a33d07"
    else
      url "https://github.com/owayo/get-md/releases/download/v26.3.102/get-md-x86_64-apple-darwin.tar.gz"
      sha256 "be70f4ad0749af64237d964944ea3b355276498e1ae786efc6f9261132bf8c73"
    end
  end

  def install
    bin.install "get-md"
  end

  test do
    system "#{bin}/get-md", "--version"
  end
end
