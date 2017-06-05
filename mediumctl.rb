class Mediumctl < Formula
  desc 'CLI tool for publishing an article to Medium'
  homepage 'https://github.com/moutend/mediumctl'
  version 'v0.3.1'

  if Hardware::CPU.is_64_bit?
    @@binname = 'mediumctl_darwin_amd64_v0.3.1'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.3.1/' << @@binname
    sha256 'f290398e318399160b0b4870dd19fb112c2e69b9d65212e98ddfeb9a36f73ff8'
  else
    @@binname = 'mediumctl_darwin_386_v0.3.1'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.3.1/' << @@binname
    sha256 'a367d9c1f1e380afa1a8ca219bbaea55528fe2f536b53128345af6ecafb42ef9'
  end

  def install
    mv @@binname, 'mediumctl'
    bin.install 'mediumctl'
  end

  test do
    system 'false'
  end
end
