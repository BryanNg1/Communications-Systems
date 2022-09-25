for n=10000:1:30000
    num = n/1000;
    div = 30/num;
    atten = abs(1/((div*1i).^2+ 1.414*(div*1i) + 1));
    attenlog = 20*log10(atten);
    
    div10 = 10/num;
    fundsin = abs(1/((div10*1i).^2+ 1.414*(div10*1i) + 1));
    fundsinlog = 20*log10(fundsin);
    if((abs(attenlog)>15.45757488) && (abs(fundsinlog)<2))
        output = n
    end
end

H = tf([0 0 1],[1 1.414 1]);
bode(H)