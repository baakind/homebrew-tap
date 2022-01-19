class Sdkman < Formula
  desc "The SDKMAN! Command Line Interface"
  homepage "https://sdkman.io"
  url "https://github.com/sdkman/sdkman-cli/releases/download/5.13.1/sdkman-cli-5.13.1.zip"
  sha256 "938bfd774e6c3b3564e0ed662189e683329675189d2ad7dd41d8d1ab02be0988"
  license "Apache-2.0"

  def install
    libexec.install Dir["*"]

    ["ext", "etc", "var", "candidates"].each { |dir| mkdir libexec/dir }

    system "curl", "-s", "https://api.sdkman.io/2/candidates/all", ">", libexec/"var/candidates" 
  end

  def caveats
    <<~EOS
    Add the following snippet to your .bash_profile

    export SDKMAN_DIR=$(brew --prefix sdkman)/libexec
    [[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"
    EOS
  end

  test do

  end
end
