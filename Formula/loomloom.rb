class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.5/loomloom-darwin-arm64.tar.gz"
      sha256 "a6683b66b2e1dba4f3ab90d19d00ac50b73c4b6605f587b8de00a914ffdf9686"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.5/loomloom-darwin-amd64.tar.gz"
      sha256 "cc4e31d6cf71fe83badecfe5a0675a1af3a209ab89d55c2daff1a7d2ee4f31f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.5/loomloom-linux-arm64.tar.gz"
      sha256 "1544c36c6decafe6366a000f6fe900d39ec45e2392c4bc4202b6ffd3f7c2391f"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.5/loomloom-linux-amd64.tar.gz"
      sha256 "6a84199d6e054623d650a94ec01ed4a224260989bb584c2069b9a05ec721d89c"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
