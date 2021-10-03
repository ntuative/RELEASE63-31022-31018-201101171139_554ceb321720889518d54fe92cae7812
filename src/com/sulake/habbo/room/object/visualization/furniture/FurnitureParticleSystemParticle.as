package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.geom.Vector3D;
   
   public class FurnitureParticleSystemParticle
   {
       
      
      private var _x:Number;
      
      private var var_173:Number;
      
      private var var_172:Number;
      
      private var var_1901:Number;
      
      private var var_1900:Number;
      
      private var var_1903:Number;
      
      private var var_1189:Boolean = false;
      
      private var _direction:Vector3D;
      
      private var var_515:int = 0;
      
      private var var_956:int;
      
      private var var_2687:Boolean = false;
      
      private var var_1902:Boolean = false;
      
      private var var_1899:Number;
      
      private var _alphaMultiplier:Number = 1.0;
      
      private var _frames:Array;
      
      public function FurnitureParticleSystemParticle()
      {
         super();
      }
      
      public function get fade() : Boolean
      {
         return this.var_1902;
      }
      
      public function get alphaMultiplier() : Number
      {
         return this._alphaMultiplier;
      }
      
      public function get direction() : Vector3D
      {
         return this._direction;
      }
      
      public function get age() : int
      {
         return this.var_515;
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Vector3D, param5:Number, param6:Number, param7:int, param8:Boolean = false, param9:Array = null, param10:Boolean = false) : void
      {
         this._x = param1;
         this.var_173 = param2;
         this.var_172 = param3;
         this._direction = new Vector3D(param4.x,param4.y,param4.z);
         this._direction.scaleBy(param5);
         this.var_1901 = this._x - this._direction.x * param6;
         this.var_1900 = this.var_173 - this._direction.y * param6;
         this.var_1903 = this.var_172 - this._direction.z * param6;
         this.var_515 = 0;
         this.var_1189 = false;
         this.var_956 = param7;
         this.var_2687 = param8;
         this._frames = param9;
         this.var_1902 = param10;
         this._alphaMultiplier = 1;
         this.var_1899 = 0.5 + Math.random() * 0.5;
      }
      
      public function update() : void
      {
         ++this.var_515;
         if(this.var_515 == this.var_956)
         {
            this.ignite();
         }
         if(this.var_1902)
         {
            if(this.var_515 / this.var_956 > this.var_1899)
            {
               this._alphaMultiplier = (this.var_956 - this.var_515) / (this.var_956 * (1 - this.var_1899));
            }
         }
      }
      
      public function getAsset() : IGraphicAsset
      {
         if(this._frames && this._frames.length > 0)
         {
            return this._frames[this.var_515 % this._frames.length];
         }
         return null;
      }
      
      protected function ignite() : void
      {
      }
      
      public function get isEmitter() : Boolean
      {
         return this.var_2687;
      }
      
      public function get isAlive() : Boolean
      {
         return this.var_515 <= this.var_956;
      }
      
      public function dispose() : void
      {
         this._direction = null;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_173;
      }
      
      public function get z() : Number
      {
         return this.var_172;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.var_173 = param1;
      }
      
      public function set z(param1:Number) : void
      {
         this.var_172 = param1;
      }
      
      public function get lastX() : Number
      {
         return this.var_1901;
      }
      
      public function set lastX(param1:Number) : void
      {
         this.var_1189 = true;
         this.var_1901 = param1;
      }
      
      public function get lastY() : Number
      {
         return this.var_1900;
      }
      
      public function set lastY(param1:Number) : void
      {
         this.var_1189 = true;
         this.var_1900 = param1;
      }
      
      public function get lastZ() : Number
      {
         return this.var_1903;
      }
      
      public function set lastZ(param1:Number) : void
      {
         this.var_1189 = true;
         this.var_1903 = param1;
      }
      
      public function get hasMoved() : Boolean
      {
         return this.var_1189;
      }
      
      public function toString() : String
      {
         return [this._x,this.var_173,this.var_172].toString();
      }
   }
}
