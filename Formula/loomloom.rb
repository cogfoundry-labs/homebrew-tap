class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.5.1/loomloom-darwin-arm64.tar.gz"
      sha256 "4578fe8e4f4b3b4562b73d970cc9fdd0edb7e3ce88d2e05ff06a00f833666795"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.5.1/loomloom-darwin-amd64.tar.gz"
      sha256 "c0e56b2206c5998d1dd689152c4dece28ff807432207a9eccebe63f9f3f8136d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.5.1/loomloom-linux-arm64.tar.gz"
      sha256 "d861541ee0547107ffce99b0e1630bcfb8de93534161d25ccebe2da1aa7551f1"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.5.1/loomloom-linux-amd64.tar.gz"
      sha256 "fea13bac337215e38949efd18685e0e2cd20510814dc9b6c420d680b189a7a12"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
