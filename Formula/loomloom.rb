class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.3/loomloom-darwin-arm64.tar.gz"
      sha256 "dd22c64b6140df2eb80deefe8f3f4769d626850a1ee7960d38ea87e4892bdc32"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.3/loomloom-darwin-amd64.tar.gz"
      sha256 "18119f256eafb9fb9eccd27f8c3a3c9725dec13dd5c02f5b0ab39a740fa9eb52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.3/loomloom-linux-arm64.tar.gz"
      sha256 "f24ca72b5f5d11861d0727c23652f3214192ef5720728844300bbd42880ac930"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.3/loomloom-linux-amd64.tar.gz"
      sha256 "ac6cbf64357f8621d6e62216a47b6f759cb960fba7443779c8e6e7068a9c9cc7"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
