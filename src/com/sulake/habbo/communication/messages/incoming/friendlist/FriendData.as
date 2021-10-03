package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_932:int;
      
      private var var_708:Boolean;
      
      private var var_1520:Boolean;
      
      private var var_609:String;
      
      private var var_1417:int;
      
      private var var_1521:String;
      
      private var var_1519:String;
      
      private var var_1522:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_932 = param1.readInteger();
         this.var_708 = param1.readBoolean();
         this.var_1520 = param1.readBoolean();
         this.var_609 = param1.readString();
         this.var_1417 = param1.readInteger();
         this.var_1521 = param1.readString();
         this.var_1519 = param1.readString();
         this.var_1522 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_932;
      }
      
      public function get online() : Boolean
      {
         return this.var_708;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1520;
      }
      
      public function get figure() : String
      {
         return this.var_609;
      }
      
      public function get categoryId() : int
      {
         return this.var_1417;
      }
      
      public function get motto() : String
      {
         return this.var_1521;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1519;
      }
      
      public function get realName() : String
      {
         return this.var_1522;
      }
   }
}
