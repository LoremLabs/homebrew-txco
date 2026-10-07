class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.45"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.45/txco_0.2.45_darwin_arm64.tar.gz"
      sha256 "e448014178cb55c6e027729a5b2c48cf7f97ba558bd88c85c5ae92e57e4ef3cf"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.45/txco_0.2.45_darwin_amd64.tar.gz"
      sha256 "706952045d4294e61765d1b99f807eae40e766a48829c5bcc44058350ee7f17c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.45/txco_0.2.45_linux_arm64.tar.gz"
      sha256 "265ce417c194ce438c6f95f68227b021a6168d900e8add692ee50defeb8a8f22"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.45/txco_0.2.45_linux_amd64.tar.gz"
      sha256 "05bd5a5b0d61abb06c52c275390f6bead28a63e1e15d880af196501b1882566a"
    end
  end

  def install
    bin.install "txco"
    # `thanks` is the same binary under a second name; argv[0] dispatches it
    # into room mode (`thanks <args>` == `txco room <args>`). install_symlink
    # lets Homebrew manage the second command with no post-install script.
    bin.install_symlink "txco" => "thanks"
  end

  test do
    system "#{bin}/txco", "--help"
    system "#{bin}/thanks", "--help"
  end
end
