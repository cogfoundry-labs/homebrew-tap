class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.0/loomloom-darwin-arm64.tar.gz"
      sha256 "89dda859d095f84df512379457d480c4b3d6283a0ad40df6e4eeba56be1af2a2"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.0/loomloom-darwin-amd64.tar.gz"
      sha256 "9152aed59ff5b542df07918846eea244e24978a13e3d104a83ca97bb9ae9c880"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.0/loomloom-linux-arm64.tar.gz"
      sha256 "b1b82f380b99c505adf9c5bfeb621c11155e2a76474cfb8e76a9527576421639"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.0/loomloom-linux-amd64.tar.gz"
      sha256 "263b58586562f730df6c0dd8da9c7f4fd9769ddda343304b24563ec07e7f3a85"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
