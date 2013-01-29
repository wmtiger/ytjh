package com.ytjh.comp 
{
	import com.wm.comp.WmChkBox;
	
	/**
	 * ytjh的多选框
	 * @author wmtiger
	 */
	public class YTChkBox extends WmChkBox 
	{
		
		/**
		 * eg:addChild(new YtjhChkBox("多选1"));
		 */
		public function YTChkBox(label:String="多选框", w:int=80, h:int=22) 
		{
			super(label, w, h);
			
		}
		
		override protected function initStyle():void 
		{
			style = "ytjh_chkbox";
		}
		
		override protected function setSelectedStyle(val:Boolean):void 
		{
			style = val ? "ytjh_chkbox_selected" : "ytjh_chkbox";
		}
		
	}

}