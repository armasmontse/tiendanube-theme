/*!
 * jQuery Cookie Plugin
 * https://github.com/carhartl/jquery-cookie
 *
 * Copyright 2011, Klaus Hartl
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.opensource.org/licenses/GPL-2.0
 */(function($){$.cookie=function(key,value,options){if(arguments.length>1&&(!/Object/.test(Object.prototype.toString.call(value))||value===null||value===void 0)){if(options=$.extend({},options),value==null&&(options.expires=-1),typeof options.expires=="number"){var days=options.expires,t=options.expires=new Date;t.setDate(t.getDate()+days)}return value=String(value),document.cookie=[encodeURIComponent(key),"=",options.raw?value:encodeURIComponent(value),options.expires?"; expires="+options.expires.toUTCString():"",options.path?"; path="+options.path:"",options.domain?"; domain="+options.domain:"",options.secure?"; secure":""].join("")}options=value||{};for(var decode=options.raw?function(s){return s}:decodeURIComponent,pairs=document.cookie.split("; "),i=0,pair;pair=pairs[i]&&pairs[i].split("=");i++)if(decode(pair[0])===key)return decode(pair[1]||"");return null}})(jQuery);
//# sourceMappingURL=/cdn/shop/t/1/assets/jquery.cookie.js.map?v=73596012679113091831631120017
