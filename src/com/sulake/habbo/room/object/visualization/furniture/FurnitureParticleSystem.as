package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   
   public class FurnitureParticleSystem
   {
       
      
      private var var_1085:Dictionary;
      
      private var _visualization:AnimatedFurnitureVisualization;
      
      private var var_2351:int;
      
      private var var_1664:int;
      
      private var var_1029:int;
      
      private var var_91:FurnitureParticleSystemEmitter;
      
      private var var_82:BitmapData;
      
      private var var_241:IRoomObjectSprite;
      
      private var var_872:Boolean = false;
      
      private var var_2004:int = 0;
      
      private var var_2003:int = 0;
      
      private var var_1086:Number = 1.0;
      
      private var var_567:BitmapData;
      
      private var var_706:ColorTransform;
      
      private var var_1327:ColorTransform;
      
      private var var_1665:Matrix;
      
      private var _translationMatrix:Matrix;
      
      private var var_645:Number = 1.0;
      
      public function FurnitureParticleSystem(param1:AnimatedFurnitureVisualization)
      {
         super();
         this.var_1085 = new Dictionary();
         this._visualization = param1;
         this.var_706 = new ColorTransform();
         this.var_706.alphaMultiplier = 1;
         this.var_1327 = new ColorTransform();
         this.var_1665 = new Matrix();
         this._translationMatrix = new Matrix();
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_1085)
         {
            _loc1_.dispose();
         }
         this.var_1085 = null;
         if(this.var_82)
         {
            this.var_82.dispose();
            this.var_82 = null;
         }
         if(this.var_567)
         {
            this.var_567.dispose();
            this.var_567 = null;
         }
         this.var_706 = null;
         this.var_1327 = null;
         this.var_1665 = null;
         this._translationMatrix = null;
      }
      
      public function reset() : void
      {
         if(this.var_91)
         {
            this.var_91.reset();
         }
         this.var_91 = null;
         this.var_872 = false;
         this.updateCanvas();
      }
      
      public function setAnimation(param1:int) : void
      {
         if(this.var_91)
         {
            this.var_91.reset();
         }
         this.var_91 = this.var_1085[param1];
         this.var_872 = false;
         this.updateCanvas();
      }
      
      private function updateCanvas() : void
      {
         if(!this.var_91)
         {
            return;
         }
         if(this.var_1664 >= 0)
         {
            this.var_241 = this._visualization.getSprite(this.var_1664);
            if(this.var_241 && this.var_241.asset)
            {
               if(this.var_241.width <= 1 || this.var_241.height <= 1)
               {
                  return;
               }
               if(this.var_82 == null)
               {
                  this.var_82 = this.var_241.asset.clone();
                  if(this.var_706.alphaMultiplier != 1)
                  {
                     this.var_567 = new BitmapData(this.var_82.width,this.var_82.height,true,4278190080);
                  }
               }
               this.var_2004 = -this.var_241.offsetX;
               this.var_2003 = -this.var_241.offsetY;
               this.var_241.asset = this.var_82;
            }
            if(this.var_82)
            {
               this.var_82.fillRect(this.var_82.rect,4278190080);
            }
            if(this.var_567)
            {
               this.var_567.fillRect(this.var_567.rect,4278190080);
            }
         }
      }
      
      public function getSpriteYOffset(param1:int, param2:int, param3:int) : int
      {
         if(this.var_91 && this.var_91.roomObjectSpriteId == param3)
         {
            return this.var_91.y * this.var_1086;
         }
         return 0;
      }
      
      public function controlsSprite(param1:int) : Boolean
      {
         if(this.var_91)
         {
            return this.var_91.roomObjectSpriteId == param1;
         }
         return false;
      }
      
      public function updateSprites() : void
      {
         if(!this.var_91 || !this.var_241)
         {
            return;
         }
         if(this.var_82 && this.var_241.asset != this.var_82)
         {
            this.var_241.asset = this.var_82;
         }
         if(this.var_872)
         {
            if(this.var_91.roomObjectSpriteId >= 0)
            {
               this._visualization.getSprite(this.var_91.roomObjectSpriteId).visible = false;
            }
         }
      }
      
      public function updateAnimation() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         if(!this.var_91 || !this.var_241)
         {
            return;
         }
         var _loc2_:* = 0;
         var _loc8_:int = 0;
         if(!this.var_872 && this.var_91.hasIgnited)
         {
            this.var_872 = true;
         }
         _loc8_ = this.var_1029 * this.var_1086;
         this.var_91.update();
         if(this.var_872)
         {
            if(this.var_91.roomObjectSpriteId >= 0)
            {
               this._visualization.getSprite(this.var_91.roomObjectSpriteId).visible = false;
            }
            if(!this.var_82)
            {
               this.updateCanvas();
            }
            this.var_82.lock();
            if(this.var_706.alphaMultiplier == 1)
            {
               this.var_82.fillRect(this.var_82.rect,4278190080);
            }
            else
            {
               this.var_82.draw(this.var_567,this.var_1665,this.var_706,BlendMode.NORMAL,null,false);
            }
            for each(_loc11_ in this.var_91.particles)
            {
               _loc2_ = Number(_loc11_.y);
               _loc3_ = this.var_2004 + (_loc11_.x - _loc11_.z) * 10 / 10 * this.var_1086;
               _loc4_ = this.var_2003 - _loc8_ + (_loc2_ + (_loc11_.x + _loc11_.z) / 2) * 10 / 10 * this.var_1086;
               _loc6_ = _loc11_.getAsset();
               if(_loc6_)
               {
                  _loc7_ = _loc6_.asset.content as BitmapData;
                  if(_loc11_.fade && _loc11_.alphaMultiplier < 1)
                  {
                     this._translationMatrix.identity();
                     this._translationMatrix.translate(_loc3_ + _loc6_.offsetX,_loc4_ + _loc6_.offsetY);
                     this.var_1327.alphaMultiplier = _loc11_.alphaMultiplier;
                     this.var_82.draw(_loc7_,this._translationMatrix,this.var_1327,BlendMode.NORMAL,null,false);
                  }
                  else
                  {
                     _loc10_ = new Point(_loc3_ + _loc6_.offsetX,_loc4_ + _loc6_.offsetY);
                     this.var_82.copyPixels(_loc7_,_loc7_.rect,_loc10_,null,null,true);
                  }
               }
               else
               {
                  _loc5_ = new Rectangle(_loc3_ - 1,_loc4_ - 1,2,2);
                  this.var_82.fillRect(_loc5_,4294967295);
               }
            }
            this.var_82.unlock();
         }
      }
      
      public function parseData(param1:XML) : void
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:* = null;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = false;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc23_:* = null;
         var _loc24_:* = null;
         this.var_2351 = parseInt(param1.@size);
         this.var_1664 = !!param1.hasOwnProperty("@canvas_id") ? int(parseInt(param1.@canvas_id)) : -1;
         this.var_1029 = !!param1.hasOwnProperty("@offset_y") ? int(parseInt(param1.@offset_y)) : 10;
         this.var_1086 = this.var_2351 / 64;
         this.var_645 = !!param1.hasOwnProperty("@blend") ? Number(Number(param1.@blend)) : Number(1);
         this.var_645 = Math.min(this.var_645,1);
         this.var_706.alphaMultiplier = this.var_645;
         for each(_loc3_ in param1.emitter)
         {
            _loc4_ = parseInt(_loc3_.@id);
            _loc5_ = _loc3_.@name;
            _loc6_ = parseInt(_loc3_.@sprite_id);
            _loc7_ = new FurnitureParticleSystemEmitter(_loc5_,_loc6_);
            this.var_1085[_loc4_] = _loc7_;
            _loc8_ = parseInt(_loc3_.@max_num_particles);
            _loc9_ = parseInt(_loc3_.@particles_per_frame);
            _loc10_ = !!_loc3_.hasOwnProperty("@burst_pulse") ? int(parseInt(_loc3_.@burst_pulse)) : 1;
            _loc11_ = parseInt(_loc3_.@fuse_time);
            _loc12_ = Number(_loc3_.simulation.@force);
            _loc13_ = Number(_loc3_.simulation.@direction);
            _loc14_ = Number(_loc3_.simulation.@gravity);
            _loc15_ = Number(_loc3_.simulation.@airfriction);
            _loc16_ = _loc3_.simulation.@shape;
            _loc17_ = Number(_loc3_.simulation.@energy);
            for each(_loc23_ in _loc3_.particles.particle)
            {
               _loc18_ = parseInt(_loc23_.@lifetime);
               _loc19_ = _loc23_.@is_emitter == "false" ? false : true;
               _loc20_ = _loc23_.hasOwnProperty("@fade") && _loc23_.@fade == "OutfitView" ? true : false;
               _loc21_ = [];
               for each(_loc24_ in _loc23_.frame)
               {
                  _loc22_ = this._visualization.assetCollection.getAsset(_loc24_.@name);
                  _loc21_.push(_loc22_);
               }
               _loc7_.configureParticle(_loc18_,_loc19_,_loc21_,_loc20_);
            }
            _loc7_.setup(_loc8_,_loc9_,_loc12_,new Vector3D(0,_loc13_,0),_loc14_,_loc15_,_loc16_,_loc17_,_loc11_,_loc10_);
         }
      }
   }
}
