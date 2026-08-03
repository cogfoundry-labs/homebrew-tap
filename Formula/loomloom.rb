class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.2.0/loomloom-darwin-arm64.tar.gz"
      sha256 "a8c7bbdff8e939c81f3917e061a718e8120b4177ad5e7a6e441babd996015ba9"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.2.0/loomloom-darwin-amd64.tar.gz"
      sha256 "f1ca10c87e5874d9c7c09220bc4a3d0f666c66bfca52e0ead40653ec450dd77f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.2.0/loomloom-linux-arm64.tar.gz"
      sha256 "8a3559fd9f1e67e1b0a335a92ae134892e6029018d5c79af931fcef6709ea644"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.2.0/loomloom-linux-amd64.tar.gz"
      sha256 "9c36c7f1a9665407f348f1cdcd1afd408731af57f836179622354b3ca806ef8a"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
