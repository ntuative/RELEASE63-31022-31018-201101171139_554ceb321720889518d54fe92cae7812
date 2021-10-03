package com.sulake.habbo.avatar
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class AvatarImageBodyPartContainer
   {
       
      
      private var var_42:BitmapData;
      
      private var var_571:Point;
      
      private var _offset:Point;
      
      public function AvatarImageBodyPartContainer(param1:BitmapData, param2:Point)
      {
         this._offset = new Point(0,0);
         super();
         this.var_42 = param1;
         this.var_571 = param2;
         this.cleanPoints();
      }
      
      public function dispose() : void
      {
         if(this.var_42)
         {
            this.var_42.dispose();
         }
         this.var_42 = null;
         this.var_571 = null;
         this._offset = null;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_42 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_42;
      }
      
      public function setRegPoint(param1:Point) : void
      {
         this.var_571 = param1;
         this.cleanPoints();
      }
      
      public function get regPoint() : Point
      {
         return this.var_571.add(this._offset);
      }
      
      public function set offset(param1:Point) : void
      {
         this._offset = param1;
         this.cleanPoints();
      }
      
      private function cleanPoints() : void
      {
         this.var_571.x = int(this.var_571.x);
         this.var_571.y = int(this.var_571.y);
         this._offset.x = int(this._offset.x);
         this._offset.y = int(this._offset.y);
      }
   }
}
