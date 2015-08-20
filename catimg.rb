require "formula"

class Catimg < Formula
  homepage "https://github.com/posva/catimg"
  url "https://github.com/posva/catimg/archive/2.0.tar.gz"
  sha1 "d480e29027e57a7f5ae278d2ce4c34f686d488d2"

  depends_on "cmake" => :build

  head do
    url "https://github.com/posva/catimg.git"
  end

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "#{bin}/catimg", "-h"
  end
end
