package com.ytjh.comp 
{
	import com.wm.comp.WmRadioBtn;
	
	/**
	 * ytjh的单选框
	 * @author wmtiger
	 */
	public class YTRadioBtn extends WmRadioBtn 
	{
		/**
		 * eg:
		 * var g:WmRadioGroup = new WmRadioGroup();
		 * _radio = new YTRadioBtn("单选1");
		 * _radio.group = _radioGroup;
		 * addChild(_radio);
		 * _radio2 = new YTRadioBtn("单选2");
		 * _radio2.group = _radioGroup;
		 * addChild(_radio2);
		 */
		public function YTRadioBtn(label:String="单选框", w:int=80, h:int=22) 
		{
			super(label, w, h);
			
		}
		
		override protected function initStyle():void 
		{
			style = "ytjh_radio";
		}
		
		override protected function setSelectedStyle(val:Boolean):void 
		{
			style = val ? "ytjh_radio_selected" : "ytjh_radio";
		}
		
	}

}