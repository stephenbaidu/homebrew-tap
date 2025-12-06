class Colonsh < Formula
  desc "A command-line alias manager and utility tool written in Go."
  homepage "https://github.com/stephenbaidu/colonsh" 
  
  url "https://github.com/stephenbaidu/colonsh/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "5fe783219bfcda27c8906bdf9e2ab739173bf14b878b66daf3099abece4229ce" 

  license "MIT"
  
  depends_on "go" => :build

  def install
    system "go", "build", 
           "-mod=mod", 
           "-o", bin/"colonsh", 
           "."                  
  end

  test do
    assert_match "Welcome to colonsh!", shell_output("#{bin}/colonsh")
  end
end