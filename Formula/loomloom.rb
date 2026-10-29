class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.7.0/loomloom-darwin-arm64.tar.gz"
      sha256 "68202f433063472159a3e5a39311fa7aebfc92af683d5b4adc702430f28a8d67"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.7.0/loomloom-darwin-amd64.tar.gz"
      sha256 "6efbdc4f2eaa88da249ff829cc4ad6529fe03ff384889a1764ce09ad1fd644b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.7.0/loomloom-linux-arm64.tar.gz"
      sha256 "e424070a91704b6acfcac27fd5a8a96f9ef3ac740146e246c0f5fa8b8563d7f1"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.7.0/loomloom-linux-amd64.tar.gz"
      sha256 "e514969118e06d1ad4de958bf68e44b955c90169a032b80eca0f0eaa61ec9a27"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
