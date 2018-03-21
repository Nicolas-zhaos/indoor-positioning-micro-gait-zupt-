% 1.ZARU(����ٶȸ���)����ʱ�Ľ��ٶ�������Ϊ[0 0 0]',������ٶȵ�������EKF��
% 1.ZARU (zero angle speed update): at this time the angular velocity is theoretically [0 0 0]', 
% and the error of the angular velocity is calculated and sent into the EKF
function delta_w = ZARU(gyro_data)
    delta_w = gyro_data - [0 0 0]';
end
