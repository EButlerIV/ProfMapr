package
{
	import mx.controls.Button;
	
	public class Professor extends Button
	{
		public var profArray:Array;
		[Bindable] public var XCoord:Number = -250;
		[Bindable] public var YCoord:Number = 300;
		[Bindable] public var floorNumber:Number = 2;
		
		public function Professor()
		{
			super();
			//	this.profArray = array;
			
		}
		
		public function setArray(array:Array):void{
			this.profArray = array;
		}
		
		public function getArray():Array {
			return this.profArray;
		}
		
		public function interpCoordinates():void {
			var floorTwoAlt:Number = 300;
			var floorThreeAlt:Number = 400;
			var floorFourAlt:Number = 500;
			
			var minY:Number = 45.58870;
			var maxY:Number = 45.58935;
			var minX:Number = -95.90305;
			var maxX:Number = -95.90178;
			
			//Subtract off white space
			var mapX:Number = 800-30-25;
			var mapY:Number = 736-25-10;
			
			var xNow:Number = profArray[4];
			var yNow:Number = profArray[3];
			
			if((yNow<minY-.0005) || (yNow>maxY+.0005) || (xNow<minX-.0005) || (xNow>maxX+.0005)){
				YCoord = 300;
				XCoord = -250;
				floorNumber = 2;
			} else {
				XCoord = (xNow - minX)/(maxX - minX);
				YCoord = (yNow - minY)/(maxY - minY);
				if(XCoord<0) XCoord = 0;
				if(YCoord<0) YCoord = 0;
				if(XCoord>1) XCoord = 1;
				if(YCoord>1) YCoord = 1;
				XCoord = XCoord*mapX+30;
				YCoord = 736-YCoord*mapY+25;
				var ZCoord:Number = profArray[5];
				if(ZCoord>=floorFourAlt) {
					floorNumber = 4;
				} else if(ZCoord>=floorThreeAlt) {
					floorNumber = 3;
				} else if(ZCoord>=floorTwoAlt) {
					floorNumber = 2;
				} else {
					floorNumber = 1;
				}
			}
		}
		
	}
}