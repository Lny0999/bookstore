package edu.uc.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class FrontLoginInterceptor extends AbstractInterceptor{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6881096045131238727L;

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		Map<String,Object> session=null;
		session=arg0.getInvocationContext().getSession();
		if(session.get("loginCustomer")==null)
		{
			return "index";
		}
		else
		{
			return arg0.invoke();
		}
	}

}
