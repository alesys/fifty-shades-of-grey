package
{
	import flash.display.Sprite;
	import flash.events.Event;
	[SWF(width="40", height="160", frameRate="2",backgroundColor="0xFFFFFF")]
	public class FiftyShadesOfGrey extends Sprite
	{
		private static const MIN:int = 5;
		private static const MAX:int = 240;
		private static const SHADE:int = 50;
		public function FiftyShadesOfGrey()
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		private function init(event:Event):void
		{
			const unit:int = Math.round((MAX-MIN)/SHADE);
			addEventListener(Event.ENTER_FRAME, function(e:Event):void
			{
				var base:String = (Math.round(Math.random()*SHADE*unit)+MIN).toString(16);
				var color:uint = Number("0x"+base+base+base);
				graphics.clear();
				graphics.beginFill(color);
				graphics.drawRect(0,0,stage.stageWidth,stage.stageHeight);
				graphics.endFill();
			});
		}
	}
}