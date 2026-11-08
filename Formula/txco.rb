class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.58"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.58/txco_0.2.58_darwin_arm64.tar.gz"
      sha256 "f2210379c84427e6e053f2ce701c3e7a272168f7732c0b24d434d9240038e58c"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.58/txco_0.2.58_darwin_amd64.tar.gz"
      sha256 "8e0dc41d0381fe1eaf8d8d8aeb2f6452722be77ea910c4f90e2a34e17883f36c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.58/txco_0.2.58_linux_arm64.tar.gz"
      sha256 "886b3e00b8bc3ddc70393621ee1ff0bb648fdbabbd2241e78bfbdac1c612d099"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.58/txco_0.2.58_linux_amd64.tar.gz"
      sha256 "20eb2272de00e27615a15ab87d419781d92931f8d1371e66905e794b57e7a9a5"
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
