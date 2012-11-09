program hello
    implicit none
    integer N
    parameter (N = 16)
    double complex, dimension (N) :: in
    double complex, dimension (N) :: out
    integer i

    !define input
    in(1)  = 1
    in(2)  = 0
    in(3)  = 0
    in(4)  = 0
    in(5)  = 5
    in(6)  = 0
    in(7)  = 0
    in(8)  = 0
    in(9)  = 0
    in(10) = 0
    in(11) = 0
    in(12) = 0
    in(13) = 0
    in(14) = 0
    in(15) = 0
    in(16) = 0
    
    call calc_fft(N, in, out)

    ! print output
    do i=1, 10
        write(*,*) in(i)
    end do
end program hello

subroutine calc_fft(N,in,out)
    integer N
    double complex, dimension (N) :: in
    double complex, dimension (N) :: out
    integer*8 plan
    integer i

    call dfftw_plan_dft_1d(plan,N,in,out,FFTW_FORWARD,FFTW_ESTIMATE)
    call dfftw_execute_dft(plan, in, out)
    call dfftw_destroy_plan(plan)

end subroutine
