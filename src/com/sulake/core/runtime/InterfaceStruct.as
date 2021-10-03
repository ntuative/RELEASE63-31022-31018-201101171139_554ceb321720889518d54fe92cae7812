package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1223:IID;
      
      private var var_1473:String;
      
      private var var_109:IUnknown;
      
      private var var_640:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1223 = param1;
         this.var_1473 = getQualifiedClassName(this.var_1223);
         this.var_109 = param2;
         this.var_640 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1223;
      }
      
      public function get iis() : String
      {
         return this.var_1473;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_109;
      }
      
      public function get references() : uint
      {
         return this.var_640;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_109 == null;
      }
      
      public function dispose() : void
      {
         this.var_1223 = null;
         this.var_1473 = null;
         this.var_109 = null;
         this.var_640 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_640;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_640) : uint(0);
      }
   }
}
