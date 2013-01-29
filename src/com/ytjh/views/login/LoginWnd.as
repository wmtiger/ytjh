package com.ytjh.views.login 
{
	import com.wm.comp.WmLabelBtn;
	import com.wm.comp.WmText;
	import com.wm.test.YTextInput;
	import com.ytjh.comp.YTWnd;
	import com.ytjh.logic.login.Login;
	
	/**
	 * 登录界面
	 * @author wmtiger
	 */
	public class LoginWnd extends YTWnd 
	{
		private var _okBtn:WmLabelBtn;
		private var _regBtn:WmLabelBtn;
		private var _userNameTxt:WmText;
		private var _userPwdTxt:WmText;
		private var _userNameInput:YTextInput;
		private var _userPwdInput:YTextInput;
		
		private var _login:Login;
		
		public function LoginWnd(title:String="登录", w:int=320, h:int=200) 
		{
			super(title, w, h);
			_login = new Login();
		}
		
		override protected function initWnd():void 
		{
			super.initWnd();
			
			_userNameTxt = new WmText("用户名：");
			addElementToContent(_userNameTxt);
			_userNameTxt.left = 50;
			_userNameTxt.top = 23;
			_userNameTxt.setFormat( { "color":0xffffff } );
			
			_userPwdTxt = new WmText("密码：");
			addElementToContent(_userPwdTxt);
			_userPwdTxt.left = 50;
			_userPwdTxt.top = 53;
			_userPwdTxt.setFormat( { "color":0xffffff } );
			
			_userNameInput = new YTextInput();
			addElementToContent(_userNameInput);
			_userNameInput.right = 50;
			_userNameInput.top = 20;
			_userNameInput.setTxtFormat( { "color":0xffffff } );
			
			_userPwdInput = new YTextInput();
			addElementToContent(_userPwdInput);
			_userPwdInput.right = 50;
			_userPwdInput.top = 50;
			_userPwdInput.setTxtFormat( { "color":0xffffff } );
			
			_regBtn = new WmLabelBtn("注 册", 70, 23);
			_regBtn.style = "ytjh_btn";
			_regBtn.setTxtFormat( { "color":0xffffff } );
			addElementToContent(_regBtn);
			_regBtn.left = 60;
			_regBtn.bottom = 10;
			
			_okBtn = new WmLabelBtn("登 录", 70, 23);
			_okBtn.style = "ytjh_btn";
			_okBtn.setTxtFormat( { "color":0xffffff } );
			addElementToContent(_okBtn);
			_okBtn.right = 60;
			_okBtn.bottom = 10;
			_okBtn.clickHandler = loginHandler;
		}
		
		private function loginHandler():void
		{
			_login.loginHandler(_userNameInput.text + "");
		}
		
		override public function dispose():void 
		{
			if (_okBtn) 
			{
				_okBtn.dispose();
				_okBtn = null;
			}
			if (_regBtn) 
			{
				_regBtn.dispose();
				_regBtn = null;
			}
			if (_userNameTxt) 
			{
				_userNameTxt.dispose();
				_userNameTxt = null;
			}
			if (_userPwdTxt) 
			{
				_userPwdTxt.dispose();
				_userPwdTxt = null;
			}
			if (_userNameInput) 
			{
				_userNameInput.dispose();
				_userNameInput = null;
			}
			if (_userPwdInput) 
			{
				_userPwdInput.dispose();
				_userPwdInput = null;
			}
			super.dispose();
		}
		
	}

}