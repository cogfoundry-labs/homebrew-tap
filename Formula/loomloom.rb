class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.4.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.6/loomloom-darwin-arm64.tar.gz"
      sha256 "0057cabb22f76d6a959e3a01749d929855701f1a53d6702b4e391340a99c4b27"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.6/loomloom-darwin-amd64.tar.gz"
      sha256 "35ae6737e581136a53f22f86bced7b9e009afacf5cba20f62f11e87287335f32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.6/loomloom-linux-arm64.tar.gz"
      sha256 "bcdd1678d8bf61d2b1fda0ceae65c7d643f41a4b46a097ae7b2993eb1419bf8b"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.6/loomloom-linux-amd64.tar.gz"
      sha256 "923fb6e69eb6376c559f45affe1fbed8065d718c46d0511b79b1cd39e7855d2b"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
