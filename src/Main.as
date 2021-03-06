package 
{
	import com.wm.mgr.WmCompMgr;
	import com.wm.utils.Log;
	import com.ytjh.assets.YTAssets;
	import com.ytjh.net.HttpService;
	import com.ytjh.views.login.LoginWnd;
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ytjh pc - ui主类
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
			Log.init(stage);
			HttpService.instance.init("http://ytjh.f3322.org:8818/", "/root/");
			WmCompMgr.instance.init(stage);
			WmCompMgr.instance.addAsset("ytjh", new YTAssets());
			
			var wnd:LoginWnd = new LoginWnd();
			addChild(wnd);
			wnd.x = stage.stageWidth - wnd.compWidth >> 1;
			wnd.y = stage.stageHeight - wnd.compHeight >> 1;
		}
		
	}
	
}