class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.4/loomloom-darwin-arm64.tar.gz"
      sha256 "6f9cdd2d934932e990f4e293589f08fab3121633d8f3414e0f8dd215e94cc8b1"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.4/loomloom-darwin-amd64.tar.gz"
      sha256 "0ea7ba70e7f69bd5c71d572a474f28fa93d16aba60264fef6ecb3f4c345e391f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.4/loomloom-linux-arm64.tar.gz"
      sha256 "f7135828822bf665e703efa26700636041f04ceec253a902816c7384bf7bb87c"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.4/loomloom-linux-amd64.tar.gz"
      sha256 "6068867934efb38136dd7c7973884d28dd18654317440cf82f36ef8016270f0f"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
