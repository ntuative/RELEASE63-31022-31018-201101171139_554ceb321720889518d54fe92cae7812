package com.sulake.habbo.catalog.recycler
{
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   
   public class PrizeContainer extends PrizeGridItem
   {
       
      
      private var var_2337:String;
      
      private var var_1714:int;
      
      private var var_2434:int;
      
      private var _furnitureData:IFurnitureData;
      
      private var var_2732:PrizeGridItem;
      
      public function PrizeContainer(param1:String, param2:int, param3:IFurnitureData, param4:int)
      {
         super();
         this.var_2337 = param1;
         this.var_1714 = param2;
         this._furnitureData = param3;
         this.var_2434 = param4;
      }
      
      public function setIcon(param1:IRoomEngine) : void
      {
         initProductIcon(param1,this._furnitureData.type,this.var_1714);
      }
      
      public function get productItemType() : String
      {
         return this.var_2337;
      }
      
      public function get productItemTypeId() : int
      {
         return this.var_1714;
      }
      
      public function get gridItem() : PrizeGridItem
      {
         return this.var_2732;
      }
      
      public function get oddsLevelId() : int
      {
         return this.var_2434;
      }
      
      public function get title() : String
      {
         if(this._furnitureData == null)
         {
            return "";
         }
         return this._furnitureData.title;
      }
   }
}
