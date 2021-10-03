package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_913:BigInteger;
      
      private var var_2450:BigInteger;
      
      private var var_1725:BigInteger;
      
      private var var_2449:BigInteger;
      
      private var var_1353:BigInteger;
      
      private var var_1724:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1353 = param1;
         this.var_1724 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1353.toString() + ",generator: " + this.var_1724.toString() + ",secret: " + param1);
         this.var_913 = new BigInteger();
         this.var_913.fromRadix(param1,param2);
         this.var_2450 = this.var_1724.modPow(this.var_913,this.var_1353);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1725 = new BigInteger();
         this.var_1725.fromRadix(param1,param2);
         this.var_2449 = this.var_1725.modPow(this.var_913,this.var_1353);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2450.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2449.toRadix(param1);
      }
   }
}
