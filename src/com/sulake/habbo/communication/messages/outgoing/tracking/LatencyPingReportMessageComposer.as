package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2225:int;
      
      private var var_2224:int;
      
      private var var_2226:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2225 = param1;
         this.var_2224 = param2;
         this.var_2226 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2225,this.var_2224,this.var_2226];
      }
      
      public function dispose() : void
      {
      }
   }
}
