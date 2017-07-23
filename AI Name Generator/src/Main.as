package {
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.utils.getTimer;
	
	/**
	 * ...
	 * @author Stephen Birsa
	 */
	[SWF(width = 600, height = 400, frameRate = 60, backgroundColor = 0xffffff)]
	final public class Main extends Sprite {
		private const screenText:TextField = new TextField();
		
		final public function Main() {
			screenText.width = stage.stageWidth;
			screenText.height = stage.stageHeight;
			screenText.defaultTextFormat = new TextFormat(null, stage.stageWidth >> 4);
			stage.addChild(screenText);
			stage.addEventListener(Event.ENTER_FRAME, update);
		}
		
		final private function update(e:Event):void {
			if (getTimer() % 10 == 0) {
				screenText.text = "Name: " + NameDictionary.NameList[int(Math.random() * NameDictionary.NameList.length)] + NameDictionary.generateNumbers();
			}
		}
		
	}
	
}