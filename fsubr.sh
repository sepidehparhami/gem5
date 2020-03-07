gcc -o fsubr fsubr.cc

./build/X86/gem5.opt --outdir res/2minus1 configs/se.py -c fsubr -o '1 2' >> res/2minus1/res.txt
./build/X86/gem5.opt --outdir res/0minus1 configs/se.py -c fsubr -o '1 0' >> res/0minus1/res.txt
./build/X86/gem5.opt --outdir res/0minusneg1 configs/se.py -c fsubr -o '-1 0' >> res/0minusneg1/res.txt
./build/X86/gem5.opt --outdir res/neg2minusneg1 configs/se.py -c fsubr -o '-1 -2' >> res/neg2minusneg1/res.txt
./build/X86/gem5.opt --outdir res/piisnot22div7 configs/se.py -c fsubr -o '3.14285714 3.14159265' >> res/piisnot22div7/res.txt
