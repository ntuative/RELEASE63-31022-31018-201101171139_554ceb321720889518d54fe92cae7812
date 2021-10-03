package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_188;
         param1["bound_to_parent_rect"] = const_90;
         param1["child_window"] = const_979;
         param1["embedded_controller"] = const_1043;
         param1["resize_to_accommodate_children"] = const_64;
         param1["input_event_processor"] = const_28;
         param1["internal_event_handling"] = const_728;
         param1["mouse_dragging_target"] = const_238;
         param1["mouse_dragging_trigger"] = const_388;
         param1["mouse_scaling_target"] = const_266;
         param1["mouse_scaling_trigger"] = const_481;
         param1["horizontal_mouse_scaling_trigger"] = const_254;
         param1["vertical_mouse_scaling_trigger"] = const_244;
         param1["observe_parent_input_events"] = const_1083;
         param1["optimize_region_to_layout_size"] = const_443;
         param1["parent_window"] = const_1070;
         param1["relative_horizontal_scale_center"] = const_165;
         param1["relative_horizontal_scale_fixed"] = const_133;
         param1["relative_horizontal_scale_move"] = const_348;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_1151;
         param1["relative_scale_fixed"] = const_746;
         param1["relative_scale_move"] = const_948;
         param1["relative_scale_strech"] = const_947;
         param1["relative_vertical_scale_center"] = const_175;
         param1["relative_vertical_scale_fixed"] = const_140;
         param1["relative_vertical_scale_move"] = const_323;
         param1["relative_vertical_scale_strech"] = const_365;
         param1["on_resize_align_left"] = const_694;
         param1["on_resize_align_right"] = const_423;
         param1["on_resize_align_center"] = const_441;
         param1["on_resize_align_top"] = const_635;
         param1["on_resize_align_bottom"] = const_453;
         param1["on_resize_align_middle"] = const_516;
         param1["on_accommodate_align_left"] = const_963;
         param1["on_accommodate_align_right"] = const_510;
         param1["on_accommodate_align_center"] = const_782;
         param1["on_accommodate_align_top"] = const_1004;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_706;
         param1["route_input_events_to_parent"] = const_546;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_1106;
         param1["scalable_with_mouse"] = const_1125;
         param1["reflect_horizontal_resize_to_parent"] = const_435;
         param1["reflect_vertical_resize_to_parent"] = const_413;
         param1["reflect_resize_to_parent"] = const_315;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
