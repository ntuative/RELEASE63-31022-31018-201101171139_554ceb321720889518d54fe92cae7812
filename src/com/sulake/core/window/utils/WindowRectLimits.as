package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_352:int = -2.147483648E9;
      
      private var var_350:int = 2.147483647E9;
      
      private var var_351:int = -2.147483648E9;
      
      private var var_349:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_352;
      }
      
      public function get maxWidth() : int
      {
         return this.var_350;
      }
      
      public function get minHeight() : int
      {
         return this.var_351;
      }
      
      public function get maxHeight() : int
      {
         return this.var_349;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_352 = param1;
         if(this.var_352 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_352)
         {
            this._target.width = this.var_352;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_350 = param1;
         if(this.var_350 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_350)
         {
            this._target.width = this.var_350;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_351 = param1;
         if(this.var_351 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_351)
         {
            this._target.height = this.var_351;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_349 = param1;
         if(this.var_349 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_349)
         {
            this._target.height = this.var_349;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_352 == int.MIN_VALUE && this.var_350 == int.MAX_VALUE && this.var_351 == int.MIN_VALUE && this.var_349 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_352 = int.MIN_VALUE;
         this.var_350 = int.MAX_VALUE;
         this.var_351 = int.MIN_VALUE;
         this.var_349 = int.MAX_VALUE;
      }
      
      public function limit() : void
      {
         if(!this.isEmpty && this._target)
         {
            if(this._target.width < this.var_352)
            {
               this._target.width = this.var_352;
            }
            else if(this._target.width > this.var_350)
            {
               this._target.width = this.var_350;
            }
            if(this._target.height < this.var_351)
            {
               this._target.height = this.var_351;
            }
            else if(this._target.height > this.var_349)
            {
               this._target.height = this.var_349;
            }
         }
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_352 = this.var_352;
         _loc2_.var_350 = this.var_350;
         _loc2_.var_351 = this.var_351;
         _loc2_.var_349 = this.var_349;
         return _loc2_;
      }
   }
}
