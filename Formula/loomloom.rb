class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.3/loomloom-darwin-arm64.tar.gz"
      sha256 "bf0c253bfc1c5821ea199ccc3e0b9d7886027f1497af8dbf8634e71cf36e7112"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.3/loomloom-darwin-amd64.tar.gz"
      sha256 "e062722cf4d9fe0859abf0139836d1d2760a685a54a9040b3fe062964f9c2866"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.3/loomloom-linux-arm64.tar.gz"
      sha256 "05afd42f6af226e1ef27e60ca6bc6c99e980a8a6eb91ff69f33995c0b4758848"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.3/loomloom-linux-amd64.tar.gz"
      sha256 "38eab589dffff6c724435fa54a16b788b8f283a0c0fc99dd86dd586bf75b3100"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
