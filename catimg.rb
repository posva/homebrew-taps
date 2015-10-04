require "formula"

class Catimg < Formula
  homepage "https://github.com/posva/catimg"
  url "https://github.com/posva/catimg/archive/2.2.tar.gz"
  sha256 "34b7ed96eb4b56ce9ef21e5877d83df4a89c1423b02849fedf62e3e8ad48807b"

  depends_on "cmake" => :build

  head do
    url "https://github.com/posva/catimg.git"
  end

  def install
    system "cmake", "-D", "CMAKE_BUILD_TYPE=Release", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "#{bin}/catimg", "-h"
  end
end
