%%�ú��������жϴ�ʱ�Ƿ��ھ�ֹ״̬
% This function is used to determine whether it is at rest at this time.
function retArray = StanceDetection(acc_s, gyro_s, datasize_acc)
    retTemp = zeros(1,datasize_acc);
    for i = 1:datasize_acc
        if(C1(acc_s(:,i)) == 1 && C2(acc_s, i, datasize_acc) == 1 && C3(gyro_s(:,i)) == 1)
            retTemp(i) = 1;
        end
    end
   
    %����������������Ľ��������ֵ�˲�,���ڴ�СΪ11
	%Median filtering is performed on the results of three conditions and operations, and the size of the window is 11
    retArray = medfilt1(retTemp,11);
end