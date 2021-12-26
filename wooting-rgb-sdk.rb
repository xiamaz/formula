class WootingRgbSdk < Formula
  desc "Customize colors on Wooting Keyboard #WootDev "
  homepage "https://github.com/WootingKb/wooting-rgb-sdk"
  url "https://github.com/WootingKb/wooting-rgb-sdk/archive/refs/tags/v1.5.1.tar.gz"
  sha256 "ec1f153cda4171135e993d93a66d036067bf98fa1f9f1ac9ce5d2f56ea001533"
  license "MPL-2.0"

  depends_on "automake"
  depends_on "pkg-config"
  depends_on "hidapi"
  depends_on "libusb"

  def install
    chdir "Mac" do
      system "make", "prefix=#{prefix}", "install"
      lib.install "libwooting-rgb-sdk.dylib"
    end
  end

  test do
    system "true"
  end
end
