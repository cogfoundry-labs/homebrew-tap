class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.1.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.1.10/loomloom-darwin-arm64.tar.gz"
      sha256 "e86e2a01dae4726296f476f410093b156cd4caf96a4d1bdc0ee04646247b294d"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.1.10/loomloom-darwin-amd64.tar.gz"
      sha256 "25819deb8e0b87f1f4705f039288d22885cafe6f1048ed62fcf8cbb21d260c09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.1.10/loomloom-linux-arm64.tar.gz"
      sha256 "a05ee14c93370b2bc0bb11c7c64516f3f2b66703661fd3d60c89735ad8198a99"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.1.10/loomloom-linux-amd64.tar.gz"
      sha256 "933f0e94254c4d0bb974a41d77907a140c426d70f0ae516c4c489eb64c6dea39"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
