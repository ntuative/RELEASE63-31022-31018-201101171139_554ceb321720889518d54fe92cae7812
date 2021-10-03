package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_809:String = "RWUAM_WHISPER_USER";
      
      public static const const_614:String = "RWUAM_IGNORE_USER";
      
      public static const const_612:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_488:String = "RWUAM_KICK_USER";
      
      public static const const_709:String = "RWUAM_BAN_USER";
      
      public static const const_618:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_788:String = "RWUAM_RESPECT_USER";
      
      public static const const_799:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_794:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_675:String = "RWUAM_START_TRADING";
      
      public static const const_684:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_439:String = "RWUAM_KICK_BOT";
      
      public static const const_801:String = "RWUAM_REPORT";
      
      public static const const_489:String = "RWUAM_PICKUP_PET";
      
      public static const const_1592:String = "RWUAM_TRAIN_PET";
      
      public static const const_415:String = " RWUAM_RESPECT_PET";
      
      public static const const_385:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
