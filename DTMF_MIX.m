function [signal_mix] = DTMF_MIX(row,col,Gain,SNR_dB)
%���β�������������ʵ���Ǽ��������˲������ڽ���������һ�飬������Ϊ�����Ҳ�д�ģ���Ȼһ�ĸ�һ��
ss = G_DTMF_S(row,col,Gain);
SNR=power(10,SNR_dB/10);
sigma=sqrt(1 / SNR);
noise=sigma*randn(1,length(ss));
signal_n=ss + noise;
signal_mix = DTMF_BANDPASS(signal_n);
end

