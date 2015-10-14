require "formula"

class Catimg < Formula
  homepage "https://github.com/posva/catimg"
  url "https://github.com/posva/catimg/archive/v2.2.1.tar.gz"
  sha256 "eb76d3baeb5e7382d8839d7d4351794166c0b6e8d777ffe0087a3401f907e991"

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
