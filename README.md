How can I calculate FFT in Fortran?
-----------------------------------

Download and unpack fftw from http://www.fftw.org

Install fftw:

    ./configure --prefix=/usr/local && make && make install

Write a program like hello.f90:

Compile and run with:

    gfortran hello.f90 -lfftw3  && ./a.out

EOF
