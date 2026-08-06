class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.2.1/loomloom-darwin-arm64.tar.gz"
      sha256 "ca4d73ac1f8189150071a7cbf3bb712c3151c08fc1532f76f030954333e3ae2f"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.2.1/loomloom-darwin-amd64.tar.gz"
      sha256 "3a52b4ea3a66af4aabfd4d07e3f46db27ef1b1259ecbd9ce069b5d967f0b00a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.2.1/loomloom-linux-arm64.tar.gz"
      sha256 "dc4d7cdf85b918c7a5848074f67dbe8adfd563513ccdd0e778c9b68a98c605bb"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.2.1/loomloom-linux-amd64.tar.gz"
      sha256 "68f02771ada0c864cc5cab841fa8399f08f0cb9217eabce917681b0cabae4073"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
