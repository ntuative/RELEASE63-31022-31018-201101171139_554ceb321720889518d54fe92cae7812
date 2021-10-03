package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1613:int;
      
      private var var_2236:int;
      
      private var var_1056:int;
      
      private var var_501:Number;
      
      private var var_2237:Boolean;
      
      private var var_2238:int;
      
      private var var_1614:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2236 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2238 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2237 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1056;
         if(this.var_1056 == 1)
         {
            this.var_501 = param1;
            this.var_1613 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1056);
            this.var_501 = this.var_501 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2237 && param3 - this.var_1613 >= this.var_2236 && this.var_1614 < this.var_2238)
         {
            _loc5_ = 1000 / this.var_501;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1614;
            this.var_1613 = param3;
            this.var_1056 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
