package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_692:String = "";
      
      public static const const_495:int = 0;
      
      public static const const_436:int = 255;
      
      public static const const_660:Boolean = false;
      
      public static const const_421:int = 0;
      
      public static const const_475:int = 0;
      
      public static const const_424:int = 0;
      
      public static const const_1116:int = 1;
      
      public static const const_1012:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2037:String = "";
      
      private var var_1686:int = 0;
      
      private var var_1982:int = 255;
      
      private var var_2551:Boolean = false;
      
      private var var_2550:int = 0;
      
      private var var_2549:int = 0;
      
      private var var_2548:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2037 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2037;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1686 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1686;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_1982 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_1982;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2551 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2551;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2550 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2550;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2549 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2549;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2548 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2548;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}