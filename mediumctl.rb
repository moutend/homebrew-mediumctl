class Mediumctl < Formula
  desc 'CLI tool for publishing an article to Medium'
  homepage 'https://github.com/moutend/mediumctl'
  version 'v0.1.4'

  if Hardware::CPU.is_64_bit?
    @@binname = 'mediumctl_darwin_amd64_v0.1.4'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.1.4/' << @@binname
    sha256 '74c39e192dfa6df966335a3024f0c5595748885aae62a20739fb4789c3f5b625'
  else
    @@binname = 'mediumctl_darwin_386_v0.1.4'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.1.4/' << @@binname
    sha256 'a47ab2758cffcc738d508849b964df7aa919188400045cbb5f90f30e5cfa803e'
  end

  def install
    mv @@binname, 'mediumctl'
    bin.install 'mediumctl'
  end

  test do
    system 'false'
  end
end
