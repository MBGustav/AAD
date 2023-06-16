#include <stdio.h> 
#include <stdlib.h>
// #include <omp.h>

#define d_type double


d_type pi_leibniz(int n){ 
    d_type pi=0.0f;
    d_type den, sign;

    # pragma omp parallel for reduction(+:pi)
    for(size_t idx=0; idx < n; idx++){
        den  =(d_type) 2*idx+1;
        sign =(d_type) 1-((idx%2)<<1);
        pi+= sign/den;
    }
    
    return 4*pi;
}


int main(int argc, char const *argv[])
{   
    int N = atoi(argv[1]);
    printf("Pi: %f\n", pi_leibniz(N));
    return 0;
}
