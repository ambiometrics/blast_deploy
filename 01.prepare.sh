#!/bin/sh

#This instructions are based on the README at following location https://mafft.cbrc.jp/alignment/software/linuxportable.html

rm -rf sources
mkdir sources && cd sources

#download the linux binary
wget -O blast.tar.gz ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/ncbi-blast-2.9.0+-x64-linux.tar.gz

#unzip mafft
rm -rf blast
mkdir blast
tar xvfz blast.tar.gz -C blast --strip-components 1

#the executable is in a folden names sources/mafft-linux64
#so move to linux folder to make more standard
cd ..
rm -rf release
mkdir release
cp -rf sources/blast/bin/blastn release
cp -rf sources/blast/bin/tblastx release
cp -rf sources/blast/bin/makeblastdb release

