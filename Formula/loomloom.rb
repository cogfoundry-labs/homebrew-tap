class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.0/loomloom-darwin-arm64.tar.gz"
      sha256 "3cb438c9b53c6582c59f9131cde91d32abbcc1a8c3baeb30aa643932c187fdf7"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.0/loomloom-darwin-amd64.tar.gz"
      sha256 "0e76a3e3825df9af68b383714450bcb9cfa03eff2d318cc8a94c288d0a240e49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.0/loomloom-linux-arm64.tar.gz"
      sha256 "63922d637615b0fc364cc1ec9fd4f74db506f13201dcfc8254383fe5045f6723"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.0/loomloom-linux-amd64.tar.gz"
      sha256 "28eb925d68d48605451e02637ceb8ba09b295c85c96dba6af60a0dfa6c36d732"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
