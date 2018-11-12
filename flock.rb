require "formula"

class Flock < Formula
  homepage "https://github.com/discoteq/flock"
  desc "flock implementation for macOS"
  url "https://github.com/discoteq/flock/releases/download/v0.2.3/flock-0.2.3.tar.xz"
  sha256 "3233658199683c807c21b0ef0fc32246e420f2a6e48f7044d2ccb763ff320c70"
  version "0.2.3"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/flock", "tmpfile", "true"
  end
end
