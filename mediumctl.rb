class Mediumctl < Formula
  desc 'CLI tool for publishing an article to Medium'
  homepage 'https://github.com/moutend/mediumctl'
  version 'v0.1.5'

  if Hardware::CPU.is_64_bit?
    @@binname = 'mediumctl_darwin_amd64_v0.1.5'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.1.5/' << @@binname
    sha256 'c07161d889ffcea3c7b0a1c92eedeb5a6ad4bd352dc89caa067afa5ee7316805'
  else
    @@binname = 'mediumctl_darwin_386_v0.1.5'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.1.5/' << @@binname
    sha256 '5971f0d7e6cb80a90471d776c12867c1cd15292e737206edb7f7496613961057'
  end

  def install
    mv @@binname, 'mediumctl'
    bin.install 'mediumctl'
  end

  test do
    system 'false'
  end
end
