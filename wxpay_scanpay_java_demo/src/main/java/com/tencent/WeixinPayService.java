package com.tencent;

 

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import com.tencent.WXPay;
import com.tencent.common.Util;
import com.tencent.protocol.pay_protocol.ScanPayReqData;
import com.tencent.protocol.pay_protocol.ScanPayResData;
 

 
public class WeixinPayService    {
	
	
	static{
		   WXPay.initSDKConfiguration(
	           		//ǩ���㷨��Ҫ�õ�����Կ
	           		"ABCDEFGHIJKLMNOPQRSTUVWXYZ123456",
	           		//�����˺�ID���ɹ����빫���˺ź���
	           		"wx40aa3cd79125e0e5",
	           		//�̻�ID���ɹ�����΢��֧������֮��ͨ���ٷ��������ʼ����
	           		"1410780102",
	           		//���̻�ID������ģʽ�±��
	           		"",
	           		//HTTP֤���ڷ������е�·������������֤����
	           		"C:/cert/apiclient_cert.p12",
	           		//HTTP֤������룬Ĭ�ϵ���MCHID
	           		"1410780102"
	           		);
	}
	/**
	 * 
	 * @param scanPayReqData
	 * @return
	 * @description  �ύ΢��֧�����ݡ����֧������
	 * @version 1.0
	 * @author ������
	 * @throws Exception 
	 * @update Nov 28, 2016 4:49:58 PM
	 */
	public ScanPayResData sendScanPayReqData(ScanPayReqData scanPayReqData) throws Exception {
	       String resstr= WXPay.requestScanPayService(scanPayReqData);
	       ScanPayResData scanPayResData = (ScanPayResData) Util.getObjectFromXML(resstr, ScanPayResData.class);
	       //System.out.println("����"+scanPayResData.toString()); 
		return scanPayResData;
	}
	public static void main(String[] args) {
	 
		WeixinPayService WXPay =new WeixinPayService();
		 SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
	        String time=simpleDateFormat.format(new Date());
	        Calendar c = Calendar.getInstance();
	        c.setTime(new Date());
	        c.add(Calendar.DAY_OF_MONTH,10);
	        String time2= simpleDateFormat.format(c.getTime());
		ScanPayReqData scanPayReqData = new ScanPayReqData(
				// �����ɨ���ն��豸���û��ֻ���ɨȡ����֧����Ȩ�ţ���Ч����1����
						"123",
						// Ҫ֧������Ʒ��������Ϣ���û�����֧���ɹ�ҳ���￴�������Ϣ
						"��Ʒ����",
						// ֧���������������ĸ������ݣ�API�Ὣ�ύ�������������ԭ������
						"",
						// �̻�ϵͳ�ڲ��Ķ�����,32���ַ��ڿɰ�����ĸ, ȷ�����̻�ϵͳΨһ
						"123456",
						// �����ܽ���λΪ���֡���ֻ������
						1,
						// �̻��Լ������ɨ��֧���ն��豸�ţ�����׷����ʽ��׷�������̨�ն��豸��
						"123",
						// �������ɵĻ���IP
						"127.0.0.1",
						// ��������ʱ�䣬��ʽΪyyyyMMddHHmmss����2009��12��25��9��10��10���ʾΪ20091225091010
						time,
						// ����ʧЧʱ�䣬��ʽͬ��
						time2,
						// ��Ʒ��ǣ�΢��ƽ̨���õ���Ʒ��ǣ������Ż�ȯ��������ʹ��
						"");
	        //--------------------------------------------------------------------
	        //�㶨����������ִ��ҵ���߼�
	        //--------------------------------------------------------------------
		  try {
			ScanPayResData scanPayResData= WXPay.sendScanPayReqData(scanPayReqData);
			System.out.println(scanPayResData.getReturn_code());
			System.out.println(scanPayResData.getResult_code());
			System.out.println(scanPayResData.getErr_code_des());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
	}

}
