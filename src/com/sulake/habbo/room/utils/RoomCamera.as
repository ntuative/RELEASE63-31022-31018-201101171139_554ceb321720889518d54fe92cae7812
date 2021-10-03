package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_873:int = 3;
       
      
      private var var_2079:int = -1;
      
      private var var_2072:int = -2;
      
      private var var_306:Vector3d = null;
      
      private var var_374:Vector3d = null;
      
      private var var_2074:Boolean = false;
      
      private var var_2076:Boolean = false;
      
      private var var_2080:Boolean = false;
      
      private var var_2077:Boolean = false;
      
      private var var_2073:int = 0;
      
      private var var_2075:int = 0;
      
      private var var_2081:int = 0;
      
      private var var_2078:int = 0;
      
      private var var_1258:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_374;
      }
      
      public function get targetId() : int
      {
         return this.var_2079;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2072;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2074;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2076;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2080;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2077;
      }
      
      public function get screenWd() : int
      {
         return this.var_2073;
      }
      
      public function get screenHt() : int
      {
         return this.var_2075;
      }
      
      public function get roomWd() : int
      {
         return this.var_2081;
      }
      
      public function get roomHt() : int
      {
         return this.var_2078;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2079 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2072 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2074 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2076 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2080 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2077 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2073 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2075 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2081 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2078 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_306 == null)
         {
            this.var_306 = new Vector3d();
         }
         if(this.var_306.x != param1.x || this.var_306.y != param1.y || this.var_306.z != param1.z)
         {
            this.var_306.assign(param1);
            this.var_1258 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_306 = null;
         this.var_374 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_374 != null)
         {
            return;
         }
         this.var_374 = new Vector3d();
         this.var_374.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_306 != null && this.var_374 != null)
         {
            ++this.var_1258;
            _loc4_ = Vector3d.dif(this.var_306,this.var_374);
            if(_loc4_.length <= param2)
            {
               this.var_374 = this.var_306;
               this.var_306 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_873 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1258 <= const_873)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_374 = Vector3d.sum(this.var_374,_loc4_);
            }
         }
      }
   }
}
