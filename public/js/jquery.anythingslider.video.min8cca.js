/*
 * AnythingSlider Video Controller 1.3 beta minified
 * for AnythingSlider v1.6+
 * By Rob Garrison (aka Mottie & Fudgey)
 * Dual licensed under the MIT and GPL licenses.
 */

(function(d){d.fn.anythingSliderVideo=function(b){var c={videoID:"asvideo"};return this.each(function(){var a,e,h,g,f=d(this).data("AnythingSlider");if(f){a=f.video={};a.options=d.extend({},c,b);a.hasSwfo=typeof swfobject!=="undefined"&&swfobject.hasOwnProperty("embedSWF")&&typeof swfobject.embedSWF==="function"?true:false;a.list={};a.hasVid=false;a.hasEmbed=false;a.services=d.fn.anythingSliderVideo.services;a.len=0;a.hasEmbedCount=0;a.hasiframeCount=0;a.$items=f.$items.filter(":not(.cloned)");for(h in a.services)if(typeof h=== "string")g=a.services[h].selector,a.$items.find(g).each(function(){e=d(this);e.attr("id",a.options.videoID+a.len);a.list[a.len]={id:a.options.videoID+a.len++,panel:e.closest(".panel")[0],service:h,selector:g,status:-1};a.hasVid=true;g.match("embed|object")?(a.hasEmbed=true,a.hasEmbedCount++):g.match("iframe")&&a.hasiframeCount++});d.each(a.list,function(b,c){var l,e,i,g,h=d(c.panel).find(c.selector),j=a.services[c.service],k=j.initAPI||"";a.hasEmbed&&a.hasSwfo&&c.selector.match("embed|object")?h.each(function(){e= d(this).parent()[0].tagName==="OBJECT"?d(this).parent():d(this);i=e[0].tagName==="EMBED"?e.attr("src"):e.find("embed").attr("src")||e.children().filter("[name=movie]").attr("value");g=d.extend(true,{},{flashvars:null,params:{allowScriptAccess:"always",wmode:f.options.addWmodeToObject,allowfullscreen:true},attr:{"class":e.attr("class"),style:e.attr("style"),"data-url":i}},j.embedOpts);e.wrap('<div id="'+c.id+'"></div>');swfobject.embedSWF(i+(k===""?"":k+c.id),c.id,e.attr("width"),e.attr("height"), "10",null,g.flashvars,g.params,g.attr,function(){if(j.hasOwnProperty("init"))a.list[b].player=j.init(f,c.id,b);b>=a.hasEmbedCount&&f.$el.trigger("swf_completed",f)})}):c.selector.match("iframe")&&h.each(function(){i=d(this).attr("src");l=(i.match(/\?/g)?"":"?")+"&wmode="+f.options.addWmodeToObject;d(this).attr("src",function(a,b){return b+l+(k===""?"":k+c.id)})})});a.gup=function(a,b){var a=a.replace(/[\[]/,"\\[").replace(/[\]]/,"\\]"),c=RegExp("[\\?&]"+a+"=([^&#]*)").exec(b||window.location.href); return c===null?"":c[1]};a.postMsg=function(a,b){var c=d("#"+b);c.length&&c[0].contentWindow.postMessage(a,c.attr("src").split("?")[0])};a.message=function(b){if(b.data&&!/infoDelivery/g.test(b.data)){var c=d.parseJSON(b.data);d.each(a.list,function(b){a.services[a.list[b].service].hasOwnProperty("message")&&a.services[a.list[b].service].message(f,c)})}};a.control=function(b){var c,d=a.list,e=b==="pause"?f.$lastPage[0]:f.$currentPage[0],g=false;for(c=0;c<a.len;c++)d[c].panel===e&&a.services[d[c].service].hasOwnProperty(b)&& (g=a.services[d[c].service][b](f,d[c].id,c));return g};a.hasiframeCount&&(window.addEventListener?window.addEventListener("message",a.message,false):window.attachEvent("onmessage",a.message,false));f.$el.bind("slide_init",function(){a.control("pause")}).bind("slide_complete",function(){a.control("cont")});f.options.isVideoPlaying=function(){return a.control("isPlaying")}}})};d.fn.anythingSliderVideo.services={video:{selector:"video",cont:function(b,c){var a=d("#"+c);a.length&&a[0].paused&&a[0].currentTime> 0&&!a[0].ended&&a[0].play()},pause:function(){d("video").each(function(){typeof this.pause!=="undefined"&&this.pause()})},isPlaying:function(b,c){var a=d("#"+c);return a.length&&typeof a[0].pause!=="undefined"&&!a[0].paused&&!a[0].ended?true:false}},vimeo1:{selector:"iframe[src*=vimeo]",initAPI:"&api=1&player_id=",cont:function(b,c,a){b.options.resumeOnVisible&&b.video.list[a].status==="pause"&&b.video.postMsg('{"method":"play"}',c)},pause:function(b){d("iframe[src*=vimeo]").each(function(){b.video.postMsg('{"method":"pause"}', this.id)})},message:function(b,c){var a,d=c.player_id||"";if(d!==""&&(a=d.replace(b.video.options.videoID,""),c.event==="ready"&&(b.video.postMsg('{"method":"addEventListener","value":"play"}',d),b.video.postMsg('{"method":"addEventListener","value":"pause"}',d),b.video.postMsg('{"method":"addEventListener","value":"finish"}',d)),b.video.list[a]))b.video.list[a].status=c.event},isPlaying:function(b,c,a){return b.video.list[a].status==="play"?true:false}},vimeo2:{selector:"object[data-url*=vimeo], embed[src*=vimeo]", embedOpts:{flashvars:{api:1}},cont:function(b,c){if(b.options.resumeOnVisible){var a=d("#"+c);typeof a[0].api_play==="function"&&a[0].api_paused()&&a[0].api_getCurrentTime()!==0&&a[0].api_getDuration()-a[0].api_getCurrentTime()>2&&a[0].api_play()}},pause:function(){d("object[data-url*=vimeo], embed[src*=vimeo]").each(function(){var b=this.tagName==="EMBED"?d(this).parent()[0]:this;typeof b.api_pause==="function"&&b.api_pause()})},isPlaying:function(b,c){var a=d("#"+c);return typeof a[0].api_paused=== "function"&&!a[0].api_paused()?true:false}},youtube1:{selector:"iframe[src*=youtube]",initAPI:"&iv_load_policy=3&enablejsapi=1&playerapiid=",cont:function(b,c,a){b.options.resumeOnVisible&&b.video.list[a].status===2&&b.video.postMsg('{"event":"command","func":"playVideo"}',c)},pause:function(b,c){d("iframe[src*=youtube]").each(function(){b.video.postMsg('{"event":"command","func":"pauseVideo"}',c)})},message:function(b,c){if(c.event!=="infoDelivery"&&c.info&&c.info.videoUrl){var a=b.video.gup("v", c.info.videoUrl),a=d("iframe[src*="+a+"]"),e;if(a.length&&(a=a[0].id,e=a.replace(b.video.options.videoID,""),c.event==="onReady"&&b.video.postMsg('{"event":"listening","func":"onStateChange"}',a),c.event==="onStateChange"&&b.video.list[e]))b.video.list[e].status=c.info.playerState}},isPlaying:function(b,c,a){b=b.video.list[a].status;return b===1||b>2?true:false}},youtube2:{selector:"object[data-url*=youtube], embed[src*=youtube]",initAPI:"&iv_load_policy=3&enablejsapi=1&version=3&playerapiid=",cont:function(b, c){if(b.options.resumeOnVisible){var a=d("#"+c);a.length&&typeof a[0].getPlayerState==="function"&&a[0].getPlayerState()>0&&a[0].playVideo()}},pause:function(){d("object[data-url*=youtube], embed[src*=youtube]").each(function(){var b=this.tagName==="EMBED"?d(this).parent()[0]:this;typeof b.getPlayerState==="function"&&b.getPlayerState()>0&&b.pauseVideo()})},isPlaying:function(b,c){var a=d("#"+c);return typeof a[0].getPlayerState==="function"&&(a[0].getPlayerState()===1||a[0].getPlayerState()>2)?true: false}}}})(jQuery);jQuery(window).load(function(){jQuery(".anythingBase").anythingSliderVideo()});
