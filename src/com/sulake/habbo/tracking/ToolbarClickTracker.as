package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1216:IHabboTracking;
      
      private var var_1678:Boolean = false;
      
      private var var_2421:int = 0;
      
      private var var_1705:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1216 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1216 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1678 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2421 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1678)
         {
            return;
         }
         ++this.var_1705;
         if(this.var_1705 <= this.var_2421)
         {
            this.var_1216.track("toolbar",param1);
         }
      }
   }
}
