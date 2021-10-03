package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1985:int = 0;
      
      private var var_1414:String = "";
      
      private var var_1822:String = "";
      
      private var var_2266:String = "";
      
      private var var_2264:String = "";
      
      private var var_1617:int = 0;
      
      private var var_2263:int = 0;
      
      private var var_2267:int = 0;
      
      private var var_1413:int = 0;
      
      private var var_2265:int = 0;
      
      private var var_1416:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_1985 = param1;
         this.var_1414 = param2;
         this.var_1822 = param3;
         this.var_2266 = param4;
         this.var_2264 = param5;
         if(param6)
         {
            this.var_1617 = 1;
         }
         else
         {
            this.var_1617 = 0;
         }
         this.var_2263 = param7;
         this.var_2267 = param8;
         this.var_1413 = param9;
         this.var_2265 = param10;
         this.var_1416 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1985,this.var_1414,this.var_1822,this.var_2266,this.var_2264,this.var_1617,this.var_2263,this.var_2267,this.var_1413,this.var_2265,this.var_1416];
      }
   }
}
