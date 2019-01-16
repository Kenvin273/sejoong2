/* Source and licensing information for the line(s) below can be found at http://vnis.edu.vn/misc/jquery.once.js. */
(function($){var cache={},uuid=0;$.fn.once=function(id,fn){if(typeof id!='string'){if(!(id in cache))cache[id]=++uuid;if(!fn)fn=id;id='jquery-once-'+cache[id]};var name=id+'-processed',elements=this.not('.'+name).addClass(name);return $.isFunction(fn)?elements.each(fn):elements};$.fn.removeOnce=function(id,fn){var name=id+'-processed',elements=this.filter('.'+name).removeClass(name);return $.isFunction(fn)?elements.each(fn):elements}})(jQuery);;
/* Source and licensing information for the above line(s) can be found at http://vnis.edu.vn/misc/jquery.once.js. */
;/*})'"*/
/* Source and licensing information for the line(s) below can be found at http://vnis.edu.vn/misc/drupal.js. */
var Drupal=Drupal||{settings:{},behaviors:{},locale:{}};jQuery.noConflict();(function($){var jquery_init=$.fn.init;$.fn.init=function(selector,context,rootjQuery){if(selector&&typeof selector==='string'){var hash_position=selector.indexOf('#');if(hash_position>=0){var bracket_position=selector.indexOf('<');if(bracket_position>hash_position)throw'Syntax error, unrecognized expression: '+selector}};return jquery_init.call(this,selector,context,rootjQuery)};$.fn.init.prototype=jquery_init.prototype;if($.ajaxPrefilter){$.ajaxPrefilter(function(s){if(s.crossDomain)s.contents.script=false})}else if($.httpData){var jquery_httpData=$.httpData;$.httpData=function(xhr,type,s){if(!type&&!Drupal.urlIsLocal(s.url)){var content_type=xhr.getResponseHeader('content-type')||'';if(content_type.indexOf('javascript')>=0)type='text'};return jquery_httpData.call(this,xhr,type,s)};$.httpData.prototype=jquery_httpData.prototype};Drupal.attachBehaviors=function(context,settings){context=context||document;settings=settings||Drupal.settings;$.each(Drupal.behaviors,function(){if($.isFunction(this.attach))this.attach(context,settings)})};Drupal.detachBehaviors=function(context,settings,trigger){context=context||document;settings=settings||Drupal.settings;trigger=trigger||'unload';$.each(Drupal.behaviors,function(){if($.isFunction(this.detach))this.detach(context,settings,trigger)})};Drupal.checkPlain=function(str){var character,regex,replace={'&':'&amp;',"'":'&#39;','"':'&quot;','<':'&lt;','>':'&gt;'};str=String(str);for(character in replace)if(replace.hasOwnProperty(character)){regex=new RegExp(character,'g');str=str.replace(regex,replace[character])};return str};Drupal.formatString=function(str,args){for(var key in args)if(args.hasOwnProperty(key))switch(key.charAt(0)){case'@':args[key]=Drupal.checkPlain(args[key]);break;case'!':break;default:args[key]=Drupal.theme('placeholder',args[key]);break};return Drupal.stringReplace(str,args,null)};Drupal.stringReplace=function(str,args,keys){if(str.length===0)return str;if(!$.isArray(keys)){keys=[];for(var k in args)if(args.hasOwnProperty(k))keys.push(k);keys.sort(function(a,b){return a.length-b.length})};if(keys.length===0)return str;var key=keys.pop(),fragments=str.split(key);if(keys.length)for(var i=0;i<fragments.length;i++)fragments[i]=Drupal.stringReplace(fragments[i],args,keys.slice(0));return fragments.join(args[key])};Drupal.t=function(str,args,options){options=options||{};options.context=options.context||'';if(Drupal.locale.strings&&Drupal.locale.strings[options.context]&&Drupal.locale.strings[options.context][str])str=Drupal.locale.strings[options.context][str];if(args)str=Drupal.formatString(str,args);return str};Drupal.formatPlural=function(count,singular,plural,args,options){args=args||{};args['@count']=count;var index=Drupal.locale.pluralFormula?Drupal.locale.pluralFormula(args['@count']):((args['@count']==1)?0:1);if(index==0){return Drupal.t(singular,args,options)}else if(index==1){return Drupal.t(plural,args,options)}else{args['@count['+index+']']=args['@count'];delete args['@count'];return Drupal.t(plural.replace('@count','@count['+index+']'),args,options)}};Drupal.absoluteUrl=function(url){var urlParsingNode=document.createElement('a');try{url=decodeURIComponent(url)}catch(e){};urlParsingNode.setAttribute('href',url);return urlParsingNode.cloneNode(false).href};Drupal.urlIsLocal=function(url){var absoluteUrl=Drupal.absoluteUrl(url),protocol=location.protocol;if(protocol==='http:'&&absoluteUrl.indexOf('https:')===0)protocol='https:';var baseUrl=protocol+'//'+location.host+Drupal.settings.basePath.slice(0,-1);try{absoluteUrl=decodeURIComponent(absoluteUrl)}catch(e){};try{baseUrl=decodeURIComponent(baseUrl)}catch(e){};return absoluteUrl===baseUrl||absoluteUrl.indexOf(baseUrl+'/')===0};Drupal.theme=function(func){var args=Array.prototype.slice.apply(arguments,[1]);return(Drupal.theme[func]||Drupal.theme.prototype[func]).apply(this,args)};Drupal.freezeHeight=function(){Drupal.unfreezeHeight();$('<div id="freeze-height"></div>').css({position:'absolute',top:'0px',left:'0px',width:'1px',height:$('body').css('height')}).appendTo('body')};Drupal.unfreezeHeight=function(){$('#freeze-height').remove()};Drupal.encodePath=function(item,uri){uri=uri||location.href;return encodeURIComponent(item).replace(/%2F/g,'/')};Drupal.getSelection=function(element){if(typeof element.selectionStart!='number'&&document.selection){var range1=document.selection.createRange(),range2=range1.duplicate();range2.moveToElementText(element);range2.setEndPoint('EndToEnd',range1);var start=range2.text.length-range1.text.length,end=start+range1.text.length;return{start:start,end:end}};return{start:element.selectionStart,end:element.selectionEnd}};Drupal.beforeUnloadCalled=false;$(window).bind('beforeunload pagehide',function(){Drupal.beforeUnloadCalled=true});Drupal.displayAjaxError=function(message){if(!Drupal.beforeUnloadCalled)alert(message)};Drupal.ajaxError=function(xmlhttp,uri,customMessage){var statusCode,statusText,pathText,responseText,readyStateText,message;if(xmlhttp.status){statusCode="\n"+Drupal.t("An AJAX HTTP error occurred.")+"\n"+Drupal.t("HTTP Result Code: !status",{'!status':xmlhttp.status})}else statusCode="\n"+Drupal.t("An AJAX HTTP request terminated abnormally.");statusCode+="\n"+Drupal.t("Debugging information follows.");pathText="\n"+Drupal.t("Path: !uri",{'!uri':uri});statusText='';try{statusText="\n"+Drupal.t("StatusText: !statusText",{'!statusText':$.trim(xmlhttp.statusText)})}catch(e){};responseText='';try{responseText="\n"+Drupal.t("ResponseText: !responseText",{'!responseText':$.trim(xmlhttp.responseText)})}catch(e){};responseText=responseText.replace(/<("[^"]*"|'[^']*'|[^'">])*>/gi,"");responseText=responseText.replace(/[\n]+\s+/g,"\n");readyStateText=xmlhttp.status==0?("\n"+Drupal.t("ReadyState: !readyState",{'!readyState':xmlhttp.readyState})):"";customMessage=customMessage?("\n"+Drupal.t("CustomMessage: !customMessage",{'!customMessage':customMessage})):"";message=statusCode+pathText+statusText+customMessage+responseText+readyStateText;return message};$('html').addClass('js');document.cookie='has_js=1; path=/';$(function(){if(jQuery.support.positionFixed===undefined){var el=$('<div style="position:fixed; top:10px" />').appendTo(document.body);jQuery.support.positionFixed=el[0].offsetTop===10;el.remove()}});$(function(){Drupal.attachBehaviors(document,Drupal.settings)});Drupal.theme.prototype={placeholder:function(str){return'<em class="placeholder">'+Drupal.checkPlain(str)+'</em>'}}})(jQuery);;
/* Source and licensing information for the above line(s) can be found at http://vnis.edu.vn/misc/drupal.js. */
;/*})'"*/
/* Source and licensing information for the line(s) below can be found at http://vnis.edu.vn/misc/ajax.js. */
(function($){Drupal.ajax=Drupal.ajax||{};Drupal.settings.urlIsAjaxTrusted=Drupal.settings.urlIsAjaxTrusted||{};Drupal.behaviors.AJAX={attach:function(context,settings){for(var base in settings.ajax)if(!$('#'+base+'.ajax-processed').length){var element_settings=settings.ajax[base];if(typeof element_settings.selector=='undefined')element_settings.selector='#'+base;$(element_settings.selector).each(function(){element_settings.element=this;Drupal.ajax[base]=new Drupal.ajax(base,this,element_settings)});$('#'+base).addClass('ajax-processed')};$('.use-ajax:not(.ajax-processed)').addClass('ajax-processed').each(function(){var element_settings={};element_settings.progress={type:'throbber'};if($(this).attr('href')){element_settings.url=$(this).attr('href');element_settings.event='click'};var base=$(this).attr('id');Drupal.ajax[base]=new Drupal.ajax(base,this,element_settings)});$('.use-ajax-submit:not(.ajax-processed)').addClass('ajax-processed').each(function(){var element_settings={};element_settings.url=$(this.form).attr('action');element_settings.setClick=true;element_settings.event='click';element_settings.progress={type:'throbber'};var base=$(this).attr('id');Drupal.ajax[base]=new Drupal.ajax(base,this,element_settings)})}};Drupal.ajax=function(base,element,element_settings){var defaults={url:'system/ajax',event:'mousedown',keypress:true,selector:'#'+base,effect:'none',speed:'none',method:'replaceWith',progress:{type:'throbber',message:Drupal.t('Please wait...')},submit:{js:true}};$.extend(this,defaults,element_settings);this.element=element;this.element_settings=element_settings;this.url=element_settings.url.replace(/\/nojs(\/|$|\?|&|#)/g,'/ajax$1');if(Drupal.settings.urlIsAjaxTrusted[element_settings.url])Drupal.settings.urlIsAjaxTrusted[this.url]=true;this.wrapper='#'+element_settings.wrapper;if(this.element.form)this.form=$(this.element.form);var ajax=this;ajax.options={url:ajax.url,data:ajax.submit,beforeSerialize:function(element_settings,options){return ajax.beforeSerialize(element_settings,options)},beforeSubmit:function(form_values,element_settings,options){ajax.ajaxing=true;return ajax.beforeSubmit(form_values,element_settings,options)},beforeSend:function(xmlhttprequest,options){ajax.ajaxing=true;return ajax.beforeSend(xmlhttprequest,options)},success:function(response,status,xmlhttprequest){if(typeof response=='string')response=$.parseJSON(response);if(response!==null&&!Drupal.settings.urlIsAjaxTrusted[ajax.url])if(xmlhttprequest.getResponseHeader('X-Drupal-Ajax-Token')!=='1'){var customMessage=Drupal.t("The response failed verification so will not be processed.");return ajax.error(xmlhttprequest,ajax.url,customMessage)};return ajax.success(response,status)},complete:function(xmlhttprequest,status){ajax.ajaxing=false;if(status=='error'||status=='parsererror')return ajax.error(xmlhttprequest,ajax.url)},dataType:'json',type:'POST'};$(ajax.element).bind(element_settings.event,function(event){if(!Drupal.settings.urlIsAjaxTrusted[ajax.url]&&!Drupal.urlIsLocal(ajax.url))throw new Error(Drupal.t('The callback URL is not local and not trusted: !url',{'!url':ajax.url}));return ajax.eventResponse(this,event)});if(element_settings.keypress)$(ajax.element).keypress(function(event){return ajax.keypressResponse(this,event)});if(element_settings.prevent)$(ajax.element).bind(element_settings.prevent,false)};Drupal.ajax.prototype.keypressResponse=function(element,event){var ajax=this;if(event.which==13||(event.which==32&&element.type!='text'&&element.type!='textarea')){$(ajax.element_settings.element).trigger(ajax.element_settings.event);return false}};Drupal.ajax.prototype.eventResponse=function(element,event){var ajax=this;if(ajax.ajaxing)return false;try{if(ajax.form){if(ajax.setClick)element.form.clk=element;ajax.form.ajaxSubmit(ajax.options)}else{ajax.beforeSerialize(ajax.element,ajax.options);$.ajax(ajax.options)}}catch(e){ajax.ajaxing=false;alert("An error occurred while attempting to process "+ajax.options.url+": "+e.message)};if(typeof element.type!='undefined'&&(element.type=='checkbox'||element.type=='radio')){return true}else return false};Drupal.ajax.prototype.beforeSerialize=function(element,options){if(this.form){var settings=this.settings||Drupal.settings;Drupal.detachBehaviors(this.form,settings,'serialize')};options.data['ajax_html_ids[]']=[];$('[id]').each(function(){options.data['ajax_html_ids[]'].push(this.id)});options.data['ajax_page_state[theme]']=Drupal.settings.ajaxPageState.theme;options.data['ajax_page_state[theme_token]']=Drupal.settings.ajaxPageState.theme_token;for(var key in Drupal.settings.ajaxPageState.css)options.data['ajax_page_state[css]['+key+']']=1;for(var key in Drupal.settings.ajaxPageState.js)options.data['ajax_page_state[js]['+key+']']=1};Drupal.ajax.prototype.beforeSubmit=function(form_values,element,options){};Drupal.ajax.prototype.beforeSend=function(xmlhttprequest,options){if(this.form){options.extraData=options.extraData||{};options.extraData.ajax_iframe_upload='1';var v=$.fieldValue(this.element);if(v!==null)options.extraData[this.element.name]=Drupal.checkPlain(v)};$(this.element).addClass('progress-disabled').attr('disabled',true);if(this.progress.type=='bar'){var progressBar=new Drupal.progressBar('ajax-progress-'+this.element.id,eval(this.progress.update_callback),this.progress.method,eval(this.progress.error_callback));if(this.progress.message)progressBar.setProgress(-1,this.progress.message);if(this.progress.url)progressBar.startMonitoring(this.progress.url,this.progress.interval||1500);this.progress.element=$(progressBar.element).addClass('ajax-progress ajax-progress-bar');this.progress.object=progressBar;$(this.element).after(this.progress.element)}else if(this.progress.type=='throbber'){this.progress.element=$('<div class="ajax-progress ajax-progress-throbber"><div class="throbber">&nbsp;</div></div>');if(this.progress.message)$('.throbber',this.progress.element).after('<div class="message">'+this.progress.message+'</div>');$(this.element).after(this.progress.element)}};Drupal.ajax.prototype.success=function(response,status){if(this.progress.element)$(this.progress.element).remove();if(this.progress.object)this.progress.object.stopMonitoring();$(this.element).removeClass('progress-disabled').removeAttr('disabled');Drupal.freezeHeight();for(var i in response)if(response.hasOwnProperty(i)&&response[i]['command']&&this.commands[response[i]['command']])this.commands[response[i]['command']](this,response[i],status);if(this.form){var settings=this.settings||Drupal.settings;Drupal.attachBehaviors(this.form,settings)};Drupal.unfreezeHeight();this.settings=null};Drupal.ajax.prototype.getEffect=function(response){var type=response.effect||this.effect,speed=response.speed||this.speed,effect={};if(type=='none'){effect.showEffect='show';effect.hideEffect='hide';effect.showSpeed=''}else if(type=='fade'){effect.showEffect='fadeIn';effect.hideEffect='fadeOut';effect.showSpeed=speed}else{effect.showEffect=type+'Toggle';effect.hideEffect=type+'Toggle';effect.showSpeed=speed};return effect};Drupal.ajax.prototype.error=function(xmlhttprequest,uri,customMessage){Drupal.displayAjaxError(Drupal.ajaxError(xmlhttprequest,uri,customMessage));if(this.progress.element)$(this.progress.element).remove();if(this.progress.object)this.progress.object.stopMonitoring();$(this.wrapper).show();$(this.element).removeClass('progress-disabled').removeAttr('disabled');if(this.form){var settings=this.settings||Drupal.settings;Drupal.attachBehaviors(this.form,settings)}};Drupal.ajax.prototype.commands={insert:function(ajax,response,status){var wrapper=response.selector?$(response.selector):$(ajax.wrapper),method=response.method||ajax.method,effect=ajax.getEffect(response),new_content_wrapped=$('<div></div>').html(response.data),new_content=new_content_wrapped.contents();if(new_content.length!=1||new_content.get(0).nodeType!=1)new_content=new_content_wrapped;switch(method){case'html':case'replaceWith':case'replaceAll':case'empty':case'remove':var settings=response.settings||ajax.settings||Drupal.settings;Drupal.detachBehaviors(wrapper,settings)};wrapper[method](new_content);if(effect.showEffect!='show')new_content.hide();if($('.ajax-new-content',new_content).length>0){$('.ajax-new-content',new_content).hide();new_content.show();$('.ajax-new-content',new_content)[effect.showEffect](effect.showSpeed)}else if(effect.showEffect!='show')new_content[effect.showEffect](effect.showSpeed);if(new_content.parents('html').length>0){var settings=response.settings||ajax.settings||Drupal.settings;Drupal.attachBehaviors(new_content,settings)}},remove:function(ajax,response,status){var settings=response.settings||ajax.settings||Drupal.settings;Drupal.detachBehaviors($(response.selector),settings);$(response.selector).remove()},changed:function(ajax,response,status){if(!$(response.selector).hasClass('ajax-changed')){$(response.selector).addClass('ajax-changed');if(response.asterisk)$(response.selector).find(response.asterisk).append(' <span class="ajax-changed">*</span> ')}},alert:function(ajax,response,status){alert(response.text,response.title)},css:function(ajax,response,status){$(response.selector).css(response.argument)},settings:function(ajax,response,status){if(response.merge){$.extend(true,Drupal.settings,response.settings)}else ajax.settings=response.settings},data:function(ajax,response,status){$(response.selector).data(response.name,response.value)},invoke:function(ajax,response,status){var $element=$(response.selector);$element[response.method].apply($element,response.arguments)},restripe:function(ajax,response,status){$('> tbody > tr:visible, > tr:visible',$(response.selector)).removeClass('odd even').filter(':even').addClass('odd').end().filter(':odd').addClass('even')},add_css:function(ajax,response,status){$('head').prepend(response.data);var match,importMatch=/^@import url\("(.*)"\);$/igm;if(document.styleSheets[0].addImport&&importMatch.test(response.data)){importMatch.lastIndex=0;while(match=importMatch.exec(response.data))document.styleSheets[0].addImport(match[1])}},updateBuildId:function(ajax,response,status){$('input[name="form_build_id"][value="'+response.old+'"]').val(response['new'])}}})(jQuery);;
/* Source and licensing information for the above line(s) can be found at http://vnis.edu.vn/misc/ajax.js. */
;/*})'"*/