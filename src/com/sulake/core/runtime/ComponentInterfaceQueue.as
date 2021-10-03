package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1491:IID;
      
      private var var_727:Boolean;
      
      private var var_995:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1491 = param1;
         this.var_995 = new Array();
         this.var_727 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1491;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_727;
      }
      
      public function get receivers() : Array
      {
         return this.var_995;
      }
      
      public function dispose() : void
      {
         if(!this.var_727)
         {
            this.var_727 = true;
            this.var_1491 = null;
            while(this.var_995.length > 0)
            {
               this.var_995.pop();
            }
            this.var_995 = null;
         }
      }
   }
}
