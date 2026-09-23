class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.4.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.10/loomloom-darwin-arm64.tar.gz"
      sha256 "04086e9a7e43861e119856e61a9e0a7d61e0117e560dd06a8cc5c85a827d961f"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.10/loomloom-darwin-amd64.tar.gz"
      sha256 "640770dc998225abc67ab289319fd350a780dc712fb4700deb30a363a19947b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.10/loomloom-linux-arm64.tar.gz"
      sha256 "c7d730ae4a3dd3ba91897bf8950f6624cd30a0f6645b2319ddcd1ed0096baf68"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.10/loomloom-linux-amd64.tar.gz"
      sha256 "4b1f2f7c13b849cad891b468f9982f773610ed861bc90a295fc5c8c1e49f08f3"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
