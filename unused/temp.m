MR0_25 = [];
MR0_25TEST = [];
MR0_5 = [];
MR0_5TEST = [];
MR1 = [];
MR1TEST = [];
MR2 = [];
MR2TEST = [];
MR4 = [];
MR4TEST = [];
MR8 = [];
MR8TEST = [];

for n=0:19:19 %start at 0 increment 19
    %0.25 red channel
    MR0_25 = [MR0_25; MR(1+n);MR(2+n)];
    MR0_25TEST = [MR0_25TEST; MR(3+n)];
    
    %0.5 red channel
    MR0_5 = [MR0_5; MR(4+n);MR(5+n)];
    MR0_5TEST = [MR0_5TEST; MR(6+n)];
    
    %1 red channel 
    MR1 = [MR1; MR(7+n);MR(8+n)];
    MR1TEST = [MR1TEST; MR(9+n)];
    
    %2 red channel
    MR2 = [MR2; MR(10+n);MR11+n)];
    MR2TEST = [MR2TEST; MR(12+n)];
    
    %4 red channel
    MR4 = [MR4; MR(13+n);MR(14+n)];
    MR4TEST = [MR4TEST; MR(15+n)];
    
    %8 red channel 
    MR8 = [MR8; MR(16+n);MR(17+n)];
    MR8TEST = [MR8TEST; MR(18+n)];
    
    %0 red channel 
    MR8 = [MR8; MR(16+n);MR(17+n)];
    
end