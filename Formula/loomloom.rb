class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.4.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.5/loomloom-darwin-arm64.tar.gz"
      sha256 "bef9ab1a91b7ee9a14b3a6deb2ce0495088f658d1c52c3c81875c0f75e808941"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.5/loomloom-darwin-amd64.tar.gz"
      sha256 "63f2ea0377d54115dcf715a4eb4cc8ab1a7e1c68f29b138cb175dec1b342c272"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.5/loomloom-linux-arm64.tar.gz"
      sha256 "2882ce29c276ad536a016ab551dec24d1900eeb4ee061fb5e669a310d4c6131d"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.5/loomloom-linux-amd64.tar.gz"
      sha256 "9e5b420ee8fb70499db0cc961ed5ead12ece286b1a28a59ac322f71eed964a61"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
