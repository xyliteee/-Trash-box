function My_gui_outbackup(MF_out,handles,identifyed_str,MF_in)
global identifyed_str_Full
global lim_n
k=[18,20,22,24,31,34,38,42];

%����1
sig_L = DTMF_LOW_PASS(MF_in);%��ͨ�˲����
sig_L_g = goertzel(sig_L,k+1);%������任���
[maxnl,maxfl] = max(abs(sig_L_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
if maxfl == 1 && maxnl > lim_n %�����λ����1����ǿ�ȸ�������ֵ
    axes(handles.axes3)%ѡ��aexs3
    plot(MF_out(1,:));%����MF_out����ͼ
    
    sig_H = DTMF_HIGH_PASS(MF_in);%��ͨ�˲����
    sig_H_g = goertzel(sig_H,k+1);%������任���
    [maxnh,maxfh] = max(abs(sig_H_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
    if maxfh == 5 && maxnh > lim_n %�����λ����1����ǿ�ȸ�������ֵ
        axes(handles.axes7) %ѡ��aexs7
        plot(MF_out(1,:));%����MF_out����ͼ        
        identifyed_str_Full = [identifyed_str_Full,identifyed_str];%�����ַ����飬�������Ԫ��Ϊ�µ��ַ���
        set(handles.edit1,'String',identifyed_str_Full);%���ַ����������edit1
    else
        axes(handles.axes7)
        plot(0);
    end
else
    axes(handles.axes3)
    plot(0);
end

%����2
sig_L = DTMF_LOW_PASS(MF_in);%��ͨ�˲����
sig_L_g = goertzel(sig_L,k+1);%������任���
[maxnl,maxfl] = max(abs(sig_L_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
if maxfl == 1 && maxnl > lim_n
    axes(handles.axes3)
    plot(MF_out(1,:));
    
    sig_H = DTMF_HIGH_PASS(MF_in);%��ͨ�˲����
    sig_H_g = goertzel(sig_H,k+1);%������任���
    [maxnh,maxfh] = max(abs(sig_H_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
    if maxfh == 6 && maxnh > lim_n
        axes(handles.axes8)
        plot(MF_out(1,:));        
        identifyed_str_Full = [identifyed_str_Full,identifyed_str];
        set(handles.edit1,'String',identifyed_str_Full);
    else
        axes(handles.axes8)
        plot(0);
    end
else
    axes(handles.axes3)
    plot(0);
end

%����3
sig_L = DTMF_LOW_PASS(MF_in);%��ͨ�˲����
sig_L_g = goertzel(sig_L,k+1);%������任���
[maxnl,maxfl] = max(abs(sig_L_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
if maxfl == 1 && maxnl > lim_n
    axes(handles.axes3)
    plot(MF_out(1,:));
    
    sig_H = DTMF_HIGH_PASS(MF_in);%��ͨ�˲����
    sig_H_g = goertzel(sig_H,k+1);%������任���
    [maxnh,maxfh] = max(abs(sig_H_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
    if maxfh == 7 && maxnh > lim_n
        axes(handles.axes9)
        plot(MF_out(1,:));        
        identifyed_str_Full = [identifyed_str_Full,identifyed_str];
        set(handles.edit1,'String',identifyed_str_Full);
    else
        axes(handles.axes9)
        plot(0);
    end
else
    axes(handles.axes3)
    plot(0);
end

%����A
sig_L = DTMF_LOW_PASS(MF_in);%��ͨ�˲����
sig_L_g = goertzel(sig_L,k+1);%������任���
[maxnl,maxfl] = max(abs(sig_L_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
if maxfl == 1 && maxnl > lim_n
    axes(handles.axes3)
    plot(MF_out(1,:));
    
    sig_H = DTMF_HIGH_PASS(MF_in);%��ͨ�˲����
    sig_H_g = goertzel(sig_H,k+1);%������任���
    [maxnh,maxfh] = max(abs(sig_H_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
    if maxfh == 8 && maxnh > lim_n
        axes(handles.axes10)
        plot(MF_out(1,:));        
        identifyed_str_Full = [identifyed_str_Full,identifyed_str];
        set(handles.edit1,'String',identifyed_str_Full);
    else
        axes(handles.axes10)
        plot(0);
    end
else
    axes(handles.axes3)
    plot(0);
end

%����4
sig_L = DTMF_LOW_PASS(MF_in);%��ͨ�˲����
sig_L_g = goertzel(sig_L,k+1);%������任���
[maxnl,maxfl] = max(abs(sig_L_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
if maxfl == 2 && maxnl > lim_n
    axes(handles.axes4)
    plot(MF_out(1,:));
    
    sig_H = DTMF_HIGH_PASS(MF_in);%��ͨ�˲����
    sig_H_g = goertzel(sig_H,k+1);%������任���
    [maxnh,maxfh] = max(abs(sig_H_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
    if maxfh == 5 && maxnh > lim_n
        axes(handles.axes7)
        plot(MF_out(1,:));        
        identifyed_str_Full = [identifyed_str_Full,identifyed_str];
        set(handles.edit1,'String',identifyed_str_Full);
    else
        axes(handles.axes7)
        plot(0);
    end
else
    axes(handles.axes4)
    plot(0);
end

%����5
sig_L = DTMF_LOW_PASS(MF_in);%��ͨ�˲����
sig_L_g = goertzel(sig_L,k+1);%������任���
[maxnl,maxfl] = max(abs(sig_L_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
if maxfl == 2 && maxnl > lim_n
    axes(handles.axes4)
    plot(MF_out(1,:));
    
    sig_H = DTMF_HIGH_PASS(MF_in);%��ͨ�˲����
    sig_H_g = goertzel(sig_H,k+1);%������任���
    [maxnh,maxfh] = max(abs(sig_H_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
    if maxfh == 6 && maxnh > lim_n
        axes(handles.axes8)
        plot(MF_out(1,:));        
        identifyed_str_Full = [identifyed_str_Full,identifyed_str];
        set(handles.edit1,'String',identifyed_str_Full);
    else
        axes(handles.axes8)
        plot(0);
    end
else
    axes(handles.axes4)
    plot(0);
end

%����6
sig_L = DTMF_LOW_PASS(MF_in);%��ͨ�˲����
sig_L_g = goertzel(sig_L,k+1);%������任���
[maxnl,maxfl] = max(abs(sig_L_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
if maxfl == 2 && maxnl > lim_n
    axes(handles.axes4)
    plot(MF_out(1,:));
    
    sig_H = DTMF_HIGH_PASS(MF_in);%��ͨ�˲����
    sig_H_g = goertzel(sig_H,k+1);%������任���
    [maxnh,maxfh] = max(abs(sig_H_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
    if maxfh == 7 && maxnh > lim_n
        axes(handles.axes9)
        plot(MF_out(1,:));        
        identifyed_str_Full = [identifyed_str_Full,identifyed_str];
        set(handles.edit1,'String',identifyed_str_Full);
    else
        axes(handles.axes9)
        plot(0);
    end
else
    axes(handles.axes4)
    plot(0);
end

%����B
sig_L = DTMF_LOW_PASS(MF_in);%��ͨ�˲����
sig_L_g = goertzel(sig_L,k+1);%������任���
[maxnl,maxfl] = max(abs(sig_L_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
if maxfl == 2 && maxnl > lim_n
    axes(handles.axes4)
    plot(MF_out(1,:));
    
    sig_H = DTMF_HIGH_PASS(MF_in);%��ͨ�˲����
    sig_H_g = goertzel(sig_H,k+1);%������任���
    [maxnh,maxfh] = max(abs(sig_H_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
    if maxfh == 8 && maxnh > lim_n
        axes(handles.axes10)
        plot(MF_out(1,:));        
        identifyed_str_Full = [identifyed_str_Full,identifyed_str];
        set(handles.edit1,'String',identifyed_str_Full);
    else
        axes(handles.axes10)
        plot(0);
    end
else
    axes(handles.axes4)
    plot(0);
end

%����7
sig_L = DTMF_LOW_PASS(MF_in);%��ͨ�˲����
sig_L_g = goertzel(sig_L,k+1);%������任���
[maxnl,maxfl] = max(abs(sig_L_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
if maxfl == 3 && maxnl > lim_n
    axes(handles.axes5)
    plot(MF_out(1,:));
    
    sig_H = DTMF_HIGH_PASS(MF_in);%��ͨ�˲����
    sig_H_g = goertzel(sig_H,k+1);%������任���
    [maxnh,maxfh] = max(abs(sig_H_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
    if maxfh == 5 && maxnh > lim_n
        axes(handles.axes7)
        plot(MF_out(1,:));        
        identifyed_str_Full = [identifyed_str_Full,identifyed_str];
        set(handles.edit1,'String',identifyed_str_Full);
    else
        axes(handles.axes7)
        plot(0);
    end
else
    axes(handles.axes5)
    plot(0);
end

%����8
sig_L = DTMF_LOW_PASS(MF_in);%��ͨ�˲����
sig_L_g = goertzel(sig_L,k+1);%������任���
[maxnl,maxfl] = max(abs(sig_L_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
if maxfl == 3 && maxnl > lim_n
    axes(handles.axes5)
    plot(MF_out(1,:));
    
    sig_H = DTMF_HIGH_PASS(MF_in);%��ͨ�˲����
    sig_H_g = goertzel(sig_H,k+1);%������任���
    [maxnh,maxfh] = max(abs(sig_H_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
    if maxfh == 6 && maxnh > lim_n
        axes(handles.axes8)
        plot(MF_out(1,:));        
        identifyed_str_Full = [identifyed_str_Full,identifyed_str];
        set(handles.edit1,'String',identifyed_str_Full);
    else
        axes(handles.axes8)
        plot(0);
    end
else
    axes(handles.axes5)
    plot(0);
end

%����9
sig_L = DTMF_LOW_PASS(MF_in);%��ͨ�˲����
sig_L_g = goertzel(sig_L,k+1);%������任���
[maxnl,maxfl] = max(abs(sig_L_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
if maxfl == 3 && maxnl > lim_n
    axes(handles.axes5)
    plot(MF_out(1,:));
    
    sig_H = DTMF_HIGH_PASS(MF_in);%��ͨ�˲����
    sig_H_g = goertzel(sig_H,k+1);%������任���
    [maxnh,maxfh] = max(abs(sig_H_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
    if maxfh == 7 && maxnh > lim_n
        axes(handles.axes9)
        plot(MF_out(1,:));        
        identifyed_str_Full = [identifyed_str_Full,identifyed_str];
        set(handles.edit1,'String',identifyed_str_Full);
    else
        axes(handles.axes9)
        plot(0);
    end
else
    axes(handles.axes5)
    plot(0);
end


%����C
sig_L = DTMF_LOW_PASS(MF_in);%��ͨ�˲����
sig_L_g = goertzel(sig_L,k+1);%������任���
[maxnl,maxfl] = max(abs(sig_L_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
if maxfl == 3 && maxnl > lim_n
    axes(handles.axes5)
    plot(MF_out(1,:));
    
    sig_H = DTMF_HIGH_PASS(MF_in);%��ͨ�˲����
    sig_H_g = goertzel(sig_H,k+1);%������任���
    [maxnh,maxfh] = max(abs(sig_H_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
    if maxfh == 8 && maxnh > lim_n
        axes(handles.axes10)
        plot(MF_out(1,:));        
        identifyed_str_Full = [identifyed_str_Full,identifyed_str];
        set(handles.edit1,'String',identifyed_str_Full);
    else
        axes(handles.axes10)
        plot(0);
    end
else
    axes(handles.axes5)
    plot(0);
end

%����*
sig_L = DTMF_LOW_PASS(MF_in);%��ͨ�˲����
sig_L_g = goertzel(sig_L,k+1);%������任���
[maxnl,maxfl] = max(abs(sig_L_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
if maxfl == 4 && maxnl > lim_n
    axes(handles.axes6)
    plot(MF_out(1,:));
    
    sig_H = DTMF_HIGH_PASS(MF_in);%��ͨ�˲����
    sig_H_g = goertzel(sig_H,k+1);%������任���
    [maxnh,maxfh] = max(abs(sig_H_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
    if maxfh == 5 && maxnh > lim_n
        axes(handles.axes7)
        plot(MF_out(1,:));        
        identifyed_str_Full = [identifyed_str_Full,identifyed_str];
        set(handles.edit1,'String',identifyed_str_Full);
    else
        axes(handles.axes7)
        plot(0);
    end
else
    axes(handles.axes6)
    plot(0);
end

%����0
sig_L = DTMF_LOW_PASS(MF_in);%��ͨ�˲����
sig_L_g = goertzel(sig_L,k+1);%������任���
[maxnl,maxfl] = max(abs(sig_L_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
if maxfl == 4 && maxnl > lim_n
    axes(handles.axes6)
    plot(MF_out(1,:));
    
    sig_H = DTMF_HIGH_PASS(MF_in);%��ͨ�˲����
    sig_H_g = goertzel(sig_H,k+1);%������任���
    [maxnh,maxfh] = max(abs(sig_H_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
    if maxfh == 6 && maxnh > lim_n
        axes(handles.axes8)
        plot(MF_out(1,:));        
        identifyed_str_Full = [identifyed_str_Full,identifyed_str];
        set(handles.edit1,'String',identifyed_str_Full);
    else
        axes(handles.axes8)
        plot(0);
    end
else
    axes(handles.axes6)
    plot(0);
end

%����#
sig_L = DTMF_LOW_PASS(MF_in);%��ͨ�˲����
sig_L_g = goertzel(sig_L,k+1);%������任���
[maxnl,maxfl] = max(abs(sig_L_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
if maxfl == 4 && maxnl > lim_n
    axes(handles.axes6)
    plot(MF_out(1,:));
    
    sig_H = DTMF_HIGH_PASS(MF_in);%��ͨ�˲����
    sig_H_g = goertzel(sig_H,k+1);%������任���
    [maxnh,maxfh] = max(abs(sig_H_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
    if maxfh == 7 && maxnh > lim_n
        axes(handles.axes9)
        plot(MF_out(1,:));        
        identifyed_str_Full = [identifyed_str_Full,identifyed_str];
        set(handles.edit1,'String',identifyed_str_Full);
    else
        axes(handles.axes9)
        plot(0);
    end
else
    axes(handles.axes6)
    plot(0);
end

%����D
sig_L = DTMF_LOW_PASS(MF_in);%��ͨ�˲����
sig_L_g = goertzel(sig_L,k+1);%������任���
[maxnl,maxfl] = max(abs(sig_L_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
if maxfl == 4 && maxnl > lim_n
    axes(handles.axes6)
    plot(MF_out(1,:));
    
    sig_H = DTMF_HIGH_PASS(MF_in);%��ͨ�˲����
    sig_H_g = goertzel(sig_H,k+1);%������任���
    [maxnh,maxfh] = max(abs(sig_H_g));%��ȡ��Ƶ���ֵmaxnl�Լ����λ��maxfl
    if maxfh == 8 && maxnh > lim_n
        axes(handles.axes10)
        plot(MF_out(1,:));        
        identifyed_str_Full = [identifyed_str_Full,identifyed_str];
        set(handles.edit1,'String',identifyed_str_Full);
    else
        axes(handles.axes10)
        plot(0);
    end
else
    axes(handles.axes6)
    plot(0);
end

end

