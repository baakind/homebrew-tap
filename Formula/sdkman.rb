class SdkMan < Formula
  desc "The SDKMAN! Command Line Interface"
  homepage "https://sdkman.io"
  url "https://github.com/sdkman/sdkman-cli/releases/download/5.13.1/sdkman-cli-5.13.1.zip"
  sha256 "938bfd774e6c3b3564e0ed662189e683329675189d2ad7dd41d8d1ab02be0988"
  license "Apache-2.0"

  def install
    libexec.install Dir["*"]
  end

  def caveats

  end

  test do
    
  end
end
