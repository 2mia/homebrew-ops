require "formula"

class Flapjack < Formula
  homepage "https://github.com/2mia/ops-tools"
  url "https://github.com/2mia/ops-tools.git",  :branch => "master"
  #version "stable"

  def install
    mkdir "#{bin}"
    mkdir "#{lib}"

    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]

    system "pwd"
    system "ls -liah"

  end

  def caveats; <<-EOS.undent
    Tools installed:
      cookbook-release, path-add, dkr-*
    You might need to restart bash or run 'bash -l'
    #{`pwd`}
    EOS
  end
end
