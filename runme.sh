export BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
rm -f citations
grep citation ~/harmonic_analysis/index.aux >> citations
grep citation ~/sampling/index.aux >> citations
grep citation  ~/quantization/index.aux >> citations
cat citations >> index.aux
bibtex index
make index.html
