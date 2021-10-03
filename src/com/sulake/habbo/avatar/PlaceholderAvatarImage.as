package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_717:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_727)
         {
            _structure = null;
            _assets = null;
            var_234 = null;
            var_264 = null;
            var_609 = null;
            var_521 = null;
            var_298 = null;
            if(!var_1207 && var_42)
            {
               var_42.dispose();
            }
            var_42 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_692 = null;
            var_727 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_717[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_717[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_384:
               switch(_loc3_)
               {
                  case AvatarAction.const_598:
                  case AvatarAction.const_465:
                  case AvatarAction.const_322:
                  case AvatarAction.const_776:
                  case AvatarAction.const_364:
                  case AvatarAction.const_704:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_288:
            case AvatarAction.const_743:
            case AvatarAction.const_222:
            case AvatarAction.const_713:
            case AvatarAction.const_787:
            case AvatarAction.const_792:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
