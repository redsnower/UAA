package com.tencent.business;

import com.tencent.WXPay;
import com.tencent.common.Util;
import com.tencent.protocol.refund_query_protocol.RefundQueryResData;
import com.tencent.protocol.reverse_protocol.ReverseReqData;
import com.tencent.protocol.reverse_protocol.ReverseResData;

public class ReverseBusinessDemo {
	public static void main(String[] args) throws Exception {
		ReverseBusinessDemo.run();
	}

    public static void run() throws Exception {

        WXPay.initSDKConfiguration(
        		//签名算法需要用到的秘钥
        		"sunrui8763C3360c4908659048569034",
        		//公众账号ID，成功申请公众账号后获得
        		"wx40aa3cd79125e0e5",
        		//商户ID，成功申请微信支付功能之后通过官方发出的邮件获得
        		"1410780102",
        		//子商户ID，受理模式下必填；
        		"",
        		//HTTP证书在服务器中的路径，用来加载证书用
        		"C:/cert/apiclient_cert.p12",
        		//HTTP证书的密码，默认等于MCHID
        		"1410780102"
        		);
        ReverseReqData reverseReqData=new ReverseReqData("","qijlenxnw");
      		String string=WXPay.requestReverseService(reverseReqData);
      		System.out.println(string);
      		ReverseResData refundQueryResData = (ReverseResData) Util.getObjectFromXML(string, ReverseResData.class);
      		
      		System.out.println(refundQueryResData.getReturn_code());
      		System.out.println(refundQueryResData.getReturn_msg());


      		System.out.println(refundQueryResData.getResult_code());
             
      		
      		
    }
	
	
}
