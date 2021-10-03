package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2353:int;
      
      private var var_1669:String;
      
      private var var_2357:String;
      
      private var var_2568:Boolean;
      
      private var var_2566:Boolean;
      
      private var var_2565:int;
      
      private var var_2356:String;
      
      private var var_2567:String;
      
      private var var_1522:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2353 = param1.readInteger();
         this.var_1669 = param1.readString();
         this.var_2357 = param1.readString();
         this.var_2568 = param1.readBoolean();
         this.var_2566 = param1.readBoolean();
         param1.readString();
         this.var_2565 = param1.readInteger();
         this.var_2356 = param1.readString();
         this.var_2567 = param1.readString();
         this.var_1522 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2353;
      }
      
      public function get avatarName() : String
      {
         return this.var_1669;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2357;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2568;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2566;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2565;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2356;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2567;
      }
      
      public function get realName() : String
      {
         return this.var_1522;
      }
   }
}
