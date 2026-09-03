class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.2/loomloom-darwin-arm64.tar.gz"
      sha256 "47102f28b00ef95ac84eebd729371f37d857d428c8dd70b6d88fa43a2d8b1490"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.2/loomloom-darwin-amd64.tar.gz"
      sha256 "f88da8e0663c92434d538b01be0096ad25ae46dfdb4b28457dc65139c83729e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.2/loomloom-linux-arm64.tar.gz"
      sha256 "93125c33c79ffe4dac28faff350e3b6b3fc235a78fb8f9a284bf216f46b4d68d"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.2/loomloom-linux-amd64.tar.gz"
      sha256 "70ab0925166e1d17ba8c7bdf691c39c387c4f2257376fc0368139b71a71a8dc2"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
