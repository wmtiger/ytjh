package 
{
	import com.wm.mgr.WmCompMgr;
	import com.ytjh.assets.YTAssets;
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ytjh主类
	 * @author wmtiger
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			WmCompMgr.instance.init(stage);
			WmCompMgr.instance.addAsset("ytjh", new YTAssets());
			var wnd3:TestYtjhWnd = new TestYtjhWnd("测试", 540, 420);
			addChild(wnd3);
		}
		
	}
	
}