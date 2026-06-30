class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.18"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.18/txco_0.2.18_darwin_arm64.tar.gz"
      sha256 "07a817afcfe21c19821c4a9f130e58397cd49d98fbe19851523c8b1ad1bc0688"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.18/txco_0.2.18_darwin_amd64.tar.gz"
      sha256 "012505b44041af1514d53b607f9106d937d9d2afd72c879c249d3a16158b382d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.18/txco_0.2.18_linux_arm64.tar.gz"
      sha256 "f552e42a68999f69ff6af0994ee6d58020342b7829c8499aa04e6ca89b6eba94"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.18/txco_0.2.18_linux_amd64.tar.gz"
      sha256 "a0c6c4214434464bf7972ee4d4271b9d3643224cda03b0ac06d7643fd0e3e631"
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
