package com.sulake.habbo.room.object.visualization.pet
{
   import com.sulake.core.assets.BitmapDataAsset;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class ExperienceData
   {
       
      
      private var var_383:BitmapDataAsset;
      
      private var var_42:BitmapData;
      
      private var var_2532:int;
      
      private var var_1982:int;
      
      public function ExperienceData(param1:PetVisualizationData)
      {
         super();
         this.var_383 = param1.getAvatarRendererAsset("pet_experience_bubble_png") as BitmapDataAsset;
      }
      
      public function dispose() : void
      {
         if(this.var_42)
         {
            this.var_42.dispose();
         }
         this.var_42 = null;
         this.var_383 = null;
      }
      
      public function get alpha() : int
      {
         return this.var_1982;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_1982 = param1;
      }
      
      public function get image() : BitmapData
      {
         if(!this.var_42)
         {
            this.setExperience(0);
         }
         return this.var_42;
      }
      
      public function setExperience(param1:int) : void
      {
         var _loc3_:* = null;
         if(this.var_2532 == param1)
         {
            return;
         }
         if(this.var_42)
         {
            this.var_42.dispose();
         }
         this.var_42 = (this.var_383.content as BitmapData).clone();
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.font = "Volter";
         _loc2_.color = 16777215;
         _loc2_.size = 9;
         _loc3_ = new TextField();
         _loc3_.embedFonts = true;
         _loc3_.width = 30;
         _loc3_.height = 12;
         _loc3_.background = true;
         _loc3_.backgroundColor = 3871388928;
         _loc3_.defaultTextFormat = _loc2_;
         _loc3_.text = "+" + param1;
         var _loc4_:Matrix = new Matrix();
         _loc4_.translate(15,19);
         this.var_42.draw(_loc3_,_loc4_);
      }
   }
}
