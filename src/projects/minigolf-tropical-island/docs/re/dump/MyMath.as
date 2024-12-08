var §\x01§ = 79;
var §\x0f§ = 1;
class MyMath extends Math
{
   static var newSeed = 0;
   static var seed = -1;
   static var a = 1291;
   static var b = 4621;
   static var m = 21870;
   function MyMath()
   {
      super();
   }
   static function random()
   {
      if(_root.sart == "du" || _root.sart == "jt")
      {
         if(MyMath.seed == -1)
         {
            if(!(_root.rase != null && _root.rase != undefined))
            {
               return Math.random();
            }
            MyMath.seed = _root.rase;
         }
         if(MyMath.seed < 0 || MyMath.seed > MyMath.m - 1)
         {
            return Math.random();
         }
         MyMath.newSeed = (MyMath.a * MyMath.seed + MyMath.b) % MyMath.m;
         MyMath.seed = MyMath.newSeed;
         MyMath.newSeed /= MyMath.m;
         if(MyMath.newSeed < 0 || MyMath.newSeed > 1)
         {
            MyMath.newSeed = Math.random();
         }
         return MyMath.newSeed;
      }
      return Math.random();
   }
   static function randomMinMax(minVal, maxVal)
   {
      return minVal + Math.floor(MyMath.random() * (maxVal + 1 - minVal));
   }
}
