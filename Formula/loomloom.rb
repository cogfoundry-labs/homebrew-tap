class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.4.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.7/loomloom-darwin-arm64.tar.gz"
      sha256 "fbd8a0f6342835669f614bc8c06285b6cbf80ed2ec26a2fcab240bc03a01df3e"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.7/loomloom-darwin-amd64.tar.gz"
      sha256 "a7d70b0c723dcf1f047ba4be63e92c6eb92fa7a8d94afe048462898aafa61769"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.7/loomloom-linux-arm64.tar.gz"
      sha256 "199394c66eb4a7741c4f90c81516479226ecb3961f5ac559aa87e9644c49583f"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.7/loomloom-linux-amd64.tar.gz"
      sha256 "c894d59350a20c404b00bc6abf50b628db9100c24cd211a5818c3f5c5787f8d8"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
