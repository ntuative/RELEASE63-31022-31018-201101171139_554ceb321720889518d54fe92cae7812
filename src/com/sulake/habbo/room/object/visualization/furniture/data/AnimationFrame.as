package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_492:int = -1;
      
      public static const const_988:int = -1;
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_173:int = 0;
      
      private var var_2144:int = 1;
      
      private var var_870:int = 1;
      
      private var var_1660:int = 1;
      
      private var var_2346:int = -1;
      
      private var var_2345:int = 0;
      
      private var var_2347:Boolean = false;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0)
      {
         super();
         this._id = param1;
         this._x = param2;
         this.var_173 = param3;
         this.var_2347 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         this.var_2144 = param4;
         if(param5 < 0)
         {
            param5 = const_492;
         }
         this.var_870 = param5;
         this.var_1660 = param5;
         if(param7 >= 0)
         {
            this.var_2346 = param7;
            this.var_2345 = param8;
         }
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_173;
      }
      
      public function get repeats() : int
      {
         return this.var_2144;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_870;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2347;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_870 < 0)
         {
            return const_492;
         }
         return this.var_1660;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_870 > 0 && param1 > this.var_870)
         {
            param1 = this.var_870;
         }
         this.var_1660 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2346;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2345;
      }
   }
}
