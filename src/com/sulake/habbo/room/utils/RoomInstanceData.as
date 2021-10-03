package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_750:TileHeightMap = null;
      
      private var var_1163:LegacyWallGeometry = null;
      
      private var var_1162:RoomCamera = null;
      
      private var var_752:SelectedRoomObjectData = null;
      
      private var var_751:SelectedRoomObjectData = null;
      
      private var var_2616:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1163 = new LegacyWallGeometry();
         this.var_1162 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_750;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_750 != null)
         {
            this.var_750.dispose();
         }
         this.var_750 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1163;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1162;
      }
      
      public function get worldType() : String
      {
         return this.var_2616;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2616 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_752;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_752 != null)
         {
            this.var_752.dispose();
         }
         this.var_752 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_751;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_751 != null)
         {
            this.var_751.dispose();
         }
         this.var_751 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_750 != null)
         {
            this.var_750.dispose();
            this.var_750 = null;
         }
         if(this.var_1163 != null)
         {
            this.var_1163.dispose();
            this.var_1163 = null;
         }
         if(this.var_1162 != null)
         {
            this.var_1162.dispose();
            this.var_1162 = null;
         }
         if(this.var_752 != null)
         {
            this.var_752.dispose();
            this.var_752 = null;
         }
         if(this.var_751 != null)
         {
            this.var_751.dispose();
            this.var_751 = null;
         }
      }
   }
}
