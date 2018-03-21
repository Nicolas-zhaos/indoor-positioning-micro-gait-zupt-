% 2.HDR(����ʽƫ����У��)������⵽������ֱ�ߵ�ʱ�����������ƫ��У��
% HDR (elicitation yaw correction): gyro deviation correction is performed when a person is detected in a straight line
function ret_yaw = HDR(yaw, yawArray,t)
    if(t <= 2)
        ret_yaw = yaw - yawArray(t-1);
    else
        ret_yaw = yaw - (yawArray(t-1) + yawArray(t-2))/2;
    end
end