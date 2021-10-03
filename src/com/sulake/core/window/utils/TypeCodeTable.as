package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_611;
         param1["bitmap"] = const_827;
         param1["border"] = const_645;
         param1["border_notify"] = const_1420;
         param1["button"] = const_521;
         param1["button_thick"] = const_638;
         param1["button_icon"] = const_1344;
         param1["button_group_left"] = const_656;
         param1["button_group_center"] = const_663;
         param1["button_group_right"] = const_625;
         param1["canvas"] = const_642;
         param1["checkbox"] = const_822;
         param1["closebutton"] = const_943;
         param1["container"] = const_333;
         param1["container_button"] = const_670;
         param1["display_object_wrapper"] = const_716;
         param1["dropmenu"] = const_548;
         param1["dropmenu_item"] = const_472;
         param1["frame"] = const_370;
         param1["frame_notify"] = const_1417;
         param1["header"] = const_591;
         param1["html"] = const_1089;
         param1["icon"] = const_1136;
         param1["itemgrid"] = const_1005;
         param1["itemgrid_horizontal"] = const_542;
         param1["itemgrid_vertical"] = const_667;
         param1["itemlist"] = const_1049;
         param1["itemlist_horizontal"] = const_340;
         param1["itemlist_vertical"] = const_343;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1398;
         param1["menu"] = const_1328;
         param1["menu_item"] = const_1514;
         param1["submenu"] = const_976;
         param1["minimizebox"] = const_1501;
         param1["notify"] = const_1477;
         param1["null"] = const_622;
         param1["password"] = const_777;
         param1["radiobutton"] = const_780;
         param1["region"] = const_714;
         param1["restorebox"] = const_1517;
         param1["scaler"] = const_658;
         param1["scaler_horizontal"] = const_1488;
         param1["scaler_vertical"] = const_1454;
         param1["scrollbar_horizontal"] = const_528;
         param1["scrollbar_vertical"] = const_701;
         param1["scrollbar_slider_button_up"] = const_1011;
         param1["scrollbar_slider_button_down"] = const_939;
         param1["scrollbar_slider_button_left"] = const_975;
         param1["scrollbar_slider_button_right"] = const_985;
         param1["scrollbar_slider_bar_horizontal"] = const_1030;
         param1["scrollbar_slider_bar_vertical"] = const_1015;
         param1["scrollbar_slider_track_horizontal"] = const_942;
         param1["scrollbar_slider_track_vertical"] = const_935;
         param1["scrollable_itemlist"] = const_1552;
         param1["scrollable_itemlist_vertical"] = const_449;
         param1["scrollable_itemlist_horizontal"] = const_1051;
         param1["selector"] = const_772;
         param1["selector_list"] = const_676;
         param1["submenu"] = const_976;
         param1["tab_button"] = const_442;
         param1["tab_container_button"] = const_1095;
         param1["tab_context"] = const_344;
         param1["tab_content"] = const_1131;
         param1["tab_selector"] = const_597;
         param1["text"] = const_451;
         param1["input"] = const_855;
         param1["toolbar"] = const_1563;
         param1["tooltip"] = const_360;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
