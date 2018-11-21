<%-- 
    Document   : Page2
    Created on : 7-dic-2017, 12.27.36
    Author     : gigernau && One
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title> Statistics Page </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!-- Pop UP -->
        <link rel="stylesheet" href="css/PopUp.css" type="text/css" />
        <script type="text/javascript" src="js/PopUp.js"></script>
        
        <!-- script per la generazione di grafici -->
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
                           google.charts.load('current', {packages: ['corechart', 'bar']});
                                    google.charts.setOnLoadCallback(drawAnnotations);


                                     function drawAnnotations() {

                                           var A = <%= request.getAttribute("A") %>;
                                           var B = <%= request.getAttribute("B") %>;
                                           var C = <%= request.getAttribute("C") %>;
                                           var D = <%= request.getAttribute("D") %>;
                                           var E = <%= request.getAttribute("E") %>;
                                           var F = <%= request.getAttribute("F") %>;
                                           var G = <%= request.getAttribute("G") %>;
                                           var H = <%= request.getAttribute("H") %>;
                                           var I = <%= request.getAttribute("I") %>;
                                           var L = <%= request.getAttribute("L") %>;
                                          
                                             var data = google.visualization.arrayToDataTable([
                                             ['Elemento', ' ', { role: 'style' } ],
                                             ['SO2', A, 'color: gray'], 
                                             ['NO2',B, 'color: #76A7FA'],
                                             ['PM', C, 'color: gray'],
                                             ['C6H6',D,'color: #76A7FA'],
                                             ['IPA', E, 'color: gray'],
                                             ['Pb', F, 'color: #76A7FA'],
                                             ['Ni', G, 'color: gray'],
                                             ['Cd', H, 'color: #76A7FA'],
                                             ['O3', I, 'color: gray'],
                                             ['CO', L, 'color: #76A7FA']

                                           ]);

                                           var options = {
                                             title: 'Tasso di Inquinamento',
                                             annotations: {
                                               alwaysOutside: true,
                                               textStyle: {
                                                 fontSize: 14,
                                                 color: '#000',
                                                 auraColor: 'none'
                                               }
                                             },
                                             hAxis: {
                                               title: 'Elementi',

                                                    },
                                             vAxis: {
                                               title: 'Percentuale (%)'
                                             }
                                           };

                                         var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
                                         chart.draw(data, options);
                                   }






                                    window.google = window.google || {};
                                    google.maps = google.maps || {};
                                    (function() {

                                      function getScript(src) {
                                        var s = document.createElement('script');

                                        s.src = src;
                                        document.body.appendChild(s);
                                      }

                                      var modules = google.maps.modules = {};
                                      google.maps.__gjsload__ = function(name, text) {
                                        modules[name] = text;
                                      };

                                      google.maps.Load = function(apiLoad) {
                                        delete google.maps.Load;
                                        apiLoad([0.009999999776482582,[null,[["https://khms0.googleapis.com/kh?v=748\u0026hl=it-IT\u0026","https://khms1.googleapis.com/kh?v=748\u0026hl=it-IT\u0026"],null,null,null,1,"748",["https://khms0.google.com/kh?v=748\u0026hl=it-IT\u0026","https://khms1.google.com/kh?v=748\u0026hl=it-IT\u0026"]],null,null,null,null,[["https://cbks0.googleapis.com/cbk?","https://cbks1.googleapis.com/cbk?"]],[["https://khms0.googleapis.com/kh?v=112\u0026hl=it-IT\u0026","https://khms1.googleapis.com/kh?v=112\u0026hl=it-IT\u0026"],null,null,null,null,"112",["https://khms0.google.com/kh?v=112\u0026hl=it-IT\u0026","https://khms1.google.com/kh?v=112\u0026hl=it-IT\u0026"]],[["https://mts0.googleapis.com/mapslt?hl=it-IT\u0026","https://mts1.googleapis.com/mapslt?hl=it-IT\u0026"]],null,null,null,[["https://mts0.googleapis.com/mapslt?hl=it-IT\u0026","https://mts1.googleapis.com/mapslt?hl=it-IT\u0026"]]],["it-IT","US",null,0,null,null,"https://maps.gstatic.com/mapfiles/","https://csi.gstatic.com","https://maps.googleapis.com","https://maps.googleapis.com",null,"https://maps.google.com","https://gg.google.com","https://maps.gstatic.com/maps-api-v3/api/images/","https://www.google.com/maps",0,"https://www.google.com"],["https://maps.googleapis.com/maps-api-v3/api/js/31/0/intl/it_ALL","3.31.0"],[3488450669],1,null,null,null,null,null,"myMap",null,null,1,"https://khms.googleapis.com/mz?v=748\u0026","AIzaSyDmfwdXI49McL085tF36P41hAmHlPsXslw","https://earthbuilder.googleapis.com","https://earthbuilder.googleapis.com",null,"https://mts.googleapis.com/maps/vt/icon",[["https://maps.googleapis.com/maps/vt"],["https://maps.googleapis.com/maps/vt"],null,null,null,null,null,null,null,null,null,null,["https://www.google.com/maps/vt"],"/maps/vt",402000000,402],2,500,[null,null,null,null,"https://www.google.com/maps/preview/log204","","https://static.panoramio.com.storage.googleapis.com/photos/",["https://geo0.ggpht.com/cbk","https://geo1.ggpht.com/cbk","https://geo2.ggpht.com/cbk","https://geo3.ggpht.com/cbk"],"https://maps.googleapis.com/maps/api/js/GeoPhotoService.GetMetadata","https://maps.googleapis.com/maps/api/js/GeoPhotoService.SingleImageSearch",["https://lh3.ggpht.com/","https://lh4.ggpht.com/","https://lh5.ggpht.com/","https://lh6.ggpht.com/"]],["https://www.google.com/maps/api/js/master?pb=!1m2!1u31!2s0!2sit-IT!3sUS!4s31/0/intl/it_ALL","https://www.google.com/maps/api/js/widget?pb=!1m2!1u31!2s0!2sit-IT"],null,0,null,"/maps/api/js/ApplicationService.GetEntityDetails",0,null,null,[null,null,null,null,null,null,null,null,null,[0,0]],null,[],["31.0"]], loadScriptTime);
                                      };
                                      var loadScriptTime = (new Date).getTime();
                                    })();
// inlined
(function(_){var ua,za,ya,Aa,Da,Ea,Ra,Sa,Va,db,kb,lb,nb,sb,rb,tb,ub,Nb,Pb,Tb,ac,cc,dc,fc,gc,jc,nc,tc,Dc,Ec,Fc,Kc,Mc,Nc,Rc,Uc,Qc,Yc,ed,hd,kd,md,od,td,ud,Cd,Ed,Dd,Nd,Pd,Rd,Ud,Vd,Xd,Zd,ae,Wd,Yd,ce,ge,he,ie,xe,ye,ze,Ee,Fe,He,Ie,Me,Ne,Oe,Pe,Se,Ue,Ve,ef,ff,gf,hf,jf,lf,nf,of,pf,uf,zf,Bf,If,Jf,Kf,Pf,Sf,Tf,Uf,Vf,Wf,eg,fg,gg,ig,jg,kg,lg,sg,qg,tg,ug,wg,zg,Bg,Ag,Dg,Hg,Kg,Og,Pg,Sg,Tg,Ug,Vg,ah,ch,xa,wa,Oa,Pa;_.aa="ERROR";_.ba="INVALID_REQUEST";_.ca="MAX_DIMENSIONS_EXCEEDED";_.ea="MAX_ELEMENTS_EXCEEDED";_.fa="MAX_WAYPOINTS_EXCEEDED";
_.ha="NOT_FOUND";_.ia="OK";_.ja="OVER_QUERY_LIMIT";_.ka="REQUEST_DENIED";_.la="UNKNOWN_ERROR";_.ma="ZERO_RESULTS";_.na=function(){return function(a){return a}};_.k=function(){return function(){}};_.oa=function(a){return function(b){this[a]=b}};_.pa=function(a){return function(){return this[a]}};_.qa=function(a){return function(){return a}};_.sa=function(a){return function(){return _.ra[a].apply(this,arguments)}};ua=function(){ua=_.k();_.va.Symbol||(_.va.Symbol=wa)};
za=function(){ua();var a=_.va.Symbol.iterator;a||(a=_.va.Symbol.iterator=_.va.Symbol("iterator"));"function"!=typeof Array.prototype[a]&&xa(Array.prototype,a,{configurable:!0,writable:!0,value:function(){return ya(this)}});za=_.k()};ya=function(a){var b=0;return Aa(function(){return b<a.length?{done:!1,value:a[b++]}:{done:!0}})};Aa=function(a){za();a={next:a};a[_.va.Symbol.iterator]=function(){return this};return a};_.Ca=function(a){za();var b=a[window.Symbol.iterator];return b?b.call(a):ya(a)};
Da=function(a,b){if(b){var c=_.va;a=a.split(".");for(var d=0;d<a.length-1;d++){var e=a[d];e in c||(c[e]={});c=c[e]}a=a[a.length-1];d=c[a];b=b(d);b!=d&&null!=b&&xa(c,a,{configurable:!0,writable:!0,value:b})}};Ea=function(a,b){return Object.prototype.hasOwnProperty.call(a,b)};_.p=function(a){return void 0!==a};_.Fa=function(a){return"string"==typeof a};_.Ga=function(a){return"number"==typeof a};_.Ha=_.k();
_.Ja=function(a){var b=typeof a;if("object"==b)if(a){if(a instanceof Array)return"array";if(a instanceof Object)return b;var c=Object.prototype.toString.call(a);if("[object Window]"==c)return"object";if("[object Array]"==c||"number"==typeof a.length&&"undefined"!=typeof a.splice&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("splice"))return"array";if("[object Function]"==c||"undefined"!=typeof a.call&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("call"))return"function"}else return"null";
else if("function"==b&&"undefined"==typeof a.call)return"object";return b};_.Ka=function(a){return"array"==_.Ja(a)};_.La=function(a){var b=_.Ja(a);return"array"==b||"object"==b&&"number"==typeof a.length};_.Ma=function(a){return"function"==_.Ja(a)};_.Na=function(a){var b=typeof a;return"object"==b&&null!=a||"function"==b};_.Qa=function(a){return a[Oa]||(a[Oa]=++Pa)};Ra=function(a,b,c){return a.call.apply(a.bind,arguments)};
Sa=function(a,b,c){if(!a)throw Error();if(2<arguments.length){var d=Array.prototype.slice.call(arguments,2);return function(){var c=Array.prototype.slice.call(arguments);Array.prototype.unshift.apply(c,d);return a.apply(b,c)}}return function(){return a.apply(b,arguments)}};_.t=function(a,b,c){Function.prototype.bind&&-1!=Function.prototype.bind.toString().indexOf("native code")?_.t=Ra:_.t=Sa;return _.t.apply(null,arguments)};_.Ta=function(){return+new Date};
_.v=function(a,b){function c(){}c.prototype=b.prototype;a.vb=b.prototype;a.prototype=new c;a.prototype.constructor=a;a.Ye=function(a,c,f){for(var d=Array(arguments.length-2),e=2;e<arguments.length;e++)d[e-2]=arguments[e];b.prototype[c].apply(a,d)}};_.Ua=function(a,b,c){c=null==c?0:0>c?Math.max(0,a.length+c):c;if(_.Fa(a))return _.Fa(b)&&1==b.length?a.indexOf(b,c):-1;for(;c<a.length;c++)if(c in a&&a[c]===b)return c;return-1};
_.x=function(a,b,c){for(var d=a.length,e=_.Fa(a)?a.split(""):a,f=0;f<d;f++)f in e&&b.call(c,e[f],f,a)};Va=function(a,b){for(var c=a.length,d=_.Fa(a)?a.split(""):a,e=0;e<c;e++)if(e in d&&b.call(void 0,d[e],e,a))return e;return-1};_.Xa=function(a,b){b=_.Ua(a,b);var c;(c=0<=b)&&_.Wa(a,b);return c};_.Wa=function(a,b){Array.prototype.splice.call(a,b,1)};_.Ya=function(a,b,c){return 2>=arguments.length?Array.prototype.slice.call(a,b):Array.prototype.slice.call(a,b,c)};_.$a=function(){return-1!=_.Za.toLowerCase().indexOf("webkit")};
_.ab=function(a){return-1!=_.Za.indexOf(a)};_.bb=function(a,b,c){for(var d in a)b.call(c,a[d],d,a)};_.cb=function(){return _.ab("Trident")||_.ab("MSIE")};_.eb=function(){return _.ab("Safari")&&!(db()||_.ab("Coast")||_.ab("Opera")||_.ab("Edge")||_.ab("Silk")||_.ab("Android"))};db=function(){return(_.ab("Chrome")||_.ab("CriOS"))&&!_.ab("Edge")};_.fb=function(){return _.ab("Android")&&!(db()||_.ab("Firefox")||_.ab("Opera")||_.ab("Silk"))};_.gb=function(){return _.ab("iPhone")&&!_.ab("iPod")&&!_.ab("iPad")};
_.hb=function(a){_.hb[" "](a);return a};kb=function(){var a=_.jb.document;return a?a.documentMode:void 0};lb=function(a,b){this.j=a;this.l=b;this.f=0;this.b=null};_.mb=_.na();nb=function(a){_.jb.setTimeout(function(){throw a;},0)};sb=function(){var a=_.ob.f;a=pb(a);!_.Ma(_.jb.setImmediate)||_.jb.Window&&_.jb.Window.prototype&&!_.ab("Edge")&&_.jb.Window.prototype.setImmediate==_.jb.setImmediate?(qb||(qb=rb()),qb(a)):_.jb.setImmediate(a)};
rb=function(){var a=_.jb.MessageChannel;"undefined"===typeof a&&"undefined"!==typeof window&&window.postMessage&&window.addEventListener&&!_.ab("Presto")&&(a=function(){var a=window.document.createElement("IFRAME");a.style.display="none";a.src="";window.document.documentElement.appendChild(a);var b=a.contentWindow;a=b.document;a.open();a.write("");a.close();var c="callImmediate"+Math.random(),d="file:"==b.location.protocol?"*":b.location.protocol+"//"+b.location.host;a=(0,_.t)(function(a){if(("*"==
d||a.origin==d)&&a.data==c)this.port1.onmessage()},this);b.addEventListener("message",a,!1);this.port1={};this.port2={postMessage:function(){b.postMessage(c,d)}}});if("undefined"!==typeof a&&!_.cb()){var b=new a,c={},d=c;b.port1.onmessage=function(){if(_.p(c.next)){c=c.next;var a=c.Wg;c.Wg=null;a()}};return function(a){d.next={Wg:a};d=d.next;b.port2.postMessage(0)}}return"undefined"!==typeof window.document&&"onreadystatechange"in window.document.createElement("SCRIPT")?function(a){var b=window.document.createElement("SCRIPT");
b.onreadystatechange=function(){b.onreadystatechange=null;b.parentNode.removeChild(b);b=null;a();a=null};window.document.documentElement.appendChild(b)}:function(a){_.jb.setTimeout(a,0)}};tb=function(){this.f=this.b=null};ub=function(){this.next=this.b=this.Ic=null};_.ob=function(a,b){_.ob.b||_.ob.m();_.ob.j||(_.ob.b(),_.ob.j=!0);_.ob.l.add(a,b)};_.vb=function(a){return a*Math.PI/180};_.wb=function(a){return 180*a/Math.PI};_.xb=function(a){return a?a.length:0};
_.zb=function(a,b){_.yb(b,function(c){a[c]=b[c]})};_.Ab=function(a){for(var b in a)return!1;return!0};_.Bb=function(a,b,c){null!=b&&(a=Math.max(a,b));null!=c&&(a=Math.min(a,c));return a};_.Cb=function(a,b,c){c-=b;return((a-b)%c+c)%c+b};_.Db=function(a,b,c){return Math.abs(a-b)<=(c||1E-9)};_.Eb=function(a,b){for(var c=[],d=_.xb(a),e=0;e<d;++e)c.push(b(a[e],e));return c};_.Hb=function(a,b){for(var c=_.Fb(void 0,_.xb(b)),d=_.Fb(void 0,0);d<c;++d)a.push(b[d])};_.y=function(a){return"number"==typeof a};
_.Ib=function(a){return"object"==typeof a};_.Fb=function(a,b){return null==a?b:a};_.Jb=function(a){return"string"==typeof a};_.Kb=function(a){return a===!!a};_.yb=function(a,b){for(var c in a)b(c,a[c])};_.Mb=function(a){return function(){var b=this,c=arguments;_.Lb(function(){a.apply(b,c)})}};_.Lb=function(a){return window.setTimeout(a,0)};Nb=function(a,b){if(Object.prototype.hasOwnProperty.call(a,b))return a[b]};_.Ob=function(a){window.console&&window.console.error&&window.console.error(a)};
Pb=function(a){this.message=a;this.name="InvalidValueError";this.stack=Error().stack};_.Qb=function(a,b){var c="";if(null!=b){if(!(b instanceof Pb))return b;c=": "+b.message}return new Pb(a+c)};_.Rb=function(a){if(!(a instanceof Pb))throw a;_.Ob(a.name+": "+a.message)};
_.Sb=function(a,b){var c=c?c+": ":"";return function(d){if(!d||!_.Ib(d))throw _.Qb(c+"not an Object");var e={},f;for(f in d)if(e[f]=d[f],!b&&!a[f])throw _.Qb(c+"unknown property "+f);for(f in a)try{var g=a[f](e[f]);if(_.p(g)||Object.prototype.hasOwnProperty.call(d,f))e[f]=a[f](e[f])}catch(h){throw _.Qb(c+"in property "+f,h);}return e}};Tb=function(a){try{return!!a.cloneNode}catch(b){return!1}};
_.Ub=function(a,b,c){return c?function(c){if(c instanceof a)return c;try{return new a(c)}catch(e){throw _.Qb("when calling new "+b,e);}}:function(c){if(c instanceof a)return c;throw _.Qb("not an instance of "+b);}};_.Vb=function(a){return function(b){for(var c in a)if(a[c]==b)return b;throw _.Qb(b);}};_.Wb=function(a){return function(b){if(!_.Ka(b))throw _.Qb("not an Array");return _.Eb(b,function(b,d){try{return a(b)}catch(e){throw _.Qb("at index "+d,e);}})}};
_.Xb=function(a,b){return function(c){if(a(c))return c;throw _.Qb(b||""+c);}};_.Yb=function(a){return function(b){for(var c=[],d=0,e=a.length;d<e;++d){var f=a[d];try{(f.ng||f)(b)}catch(g){if(!(g instanceof Pb))throw g;c.push(g.message);continue}return(f.then||f)(b)}throw _.Qb(c.join("; and "));}};_.Zb=function(a,b){return function(c){return b(a(c))}};_.$b=function(a){return function(b){return null==b?b:a(b)}};
ac=function(a){return function(b){if(b&&null!=b[a])return b;throw _.Qb("no "+a+" property");}};_.z=function(a,b){this.x=a;this.y=b};cc=function(a){if(a instanceof _.z)return a;try{_.Sb({x:_.bc,y:_.bc},!0)(a)}catch(b){throw _.Qb("not a Point",b);}return new _.z(a.x,a.y)};_.D=function(a,b,c,d){this.width=a;this.height=b;this.f=c||"px";this.b=d||"px"};dc=function(a){if(a instanceof _.D)return a;try{_.Sb({height:_.bc,width:_.bc},!0)(a)}catch(b){throw _.Qb("not a Size",b);}return new _.D(a.width,a.height)};
_.ec=function(a,b){this.b=a;this.f=b};fc=function(a){var b=Math.pow(2,Math.round(Math.log(a)/Math.LN2))/256;this.b=Math.round(a/b)*b;a=Math.cos(0*Math.PI/180);b=Math.cos(0*Math.PI/180);var c=Math.sin(0*Math.PI/180);this.m11=this.b*b;this.m12=this.b*c;this.m21=-this.b*a*c;this.m22=this.b*a*b;this.f=this.m11*this.m22-this.m12*this.m21};gc=function(a,b){return new _.ec((a.m22*b.Wa-a.m12*b.Xa)/a.f,(-a.m21*b.Wa+a.m11*b.Xa)/a.f)};
_.hc=function(a){this.J=this.I=window.Infinity;this.L=this.K=-window.Infinity;_.x(a||[],this.extend,this)};_.ic=function(a,b,c,d){var e=new _.hc;e.I=a;e.J=b;e.K=c;e.L=d;return e};jc=function(a,b){-180==a&&180!=b&&(a=180);-180==b&&180!=a&&(b=180);this.b=a;this.f=b};_.kc=function(a){return a.b>a.f};_.lc=function(a,b){var c=b-a;return 0<=c?c:b+180-(a-180)};_.mc=function(a){return a.isEmpty()?0:_.kc(a)?360-(a.b-a.f):a.f-a.b};nc=function(a,b){this.b=a;this.f=b};
_.F=function(a,b,c){if(a&&(void 0!==a.lat||void 0!==a.lng))try{oc(a),b=a.lng,a=a.lat,c=!1}catch(d){_.Rb(d)}a-=0;b-=0;c||(a=_.Bb(a,-90,90),180!=b&&(b=_.Cb(b,-180,180)));this.lat=function(){return a};this.lng=function(){return b}};_.pc=function(a){return _.vb(a.lat())};_.qc=function(a){return _.vb(a.lng())};tc=function(a,b){b=Math.pow(10,b);return Math.round(a*b)/b};
_.uc=function(a){try{if(a instanceof _.F)return a;a=oc(a);return new _.F(a.lat,a.lng)}catch(b){throw _.Qb("not a LatLng or LatLngLiteral",b);}};_.vc=function(a,b){a=a&&_.uc(a);b=b&&_.uc(b);if(a){b=b||a;var c=_.Bb(a.lat(),-90,90),d=_.Bb(b.lat(),-90,90);this.f=new nc(c,d);a=a.lng();b=b.lng();360<=b-a?this.b=new jc(-180,180):(a=_.Cb(a,-180,180),b=_.Cb(b,-180,180),this.b=new jc(a,b))}else this.f=new nc(1,-1),this.b=new jc(180,-180)};_.wc=function(a,b,c,d){return new _.vc(new _.F(a,b,!0),new _.F(c,d,!0))};
_.yc=function(a){if(a instanceof _.vc)return a;try{return a=xc(a),_.wc(a.south,a.west,a.north,a.east)}catch(b){throw _.Qb("not a LatLngBounds or LatLngBoundsLiteral",b);}};_.Bc=function(a){a=a||window.event;_.zc(a);_.Ac(a)};_.zc=function(a){a.cancelBubble=!0;a.stopPropagation&&a.stopPropagation()};_.Ac=function(a){a.preventDefault&&_.p(a.defaultPrevented)?a.preventDefault():a.returnValue=!1};_.Cc=function(a){a.handled=!0;void 0===a.bubbles&&(a.returnValue="handled")};
Dc=function(a,b){a.__e3_||(a.__e3_={});a=a.__e3_;a[b]||(a[b]={});return a[b]};Ec=function(a,b){var c=a.__e3_||{};if(b)a=c[b]||{};else for(b in a={},c)_.zb(a,c[b]);return a};Fc=function(a,b){return function(c){return b.call(a,c,this)}};Kc=function(a,b,c){return function(d){var e=[b,a];_.Hb(e,arguments);_.G.trigger.apply(this,e);c&&_.Cc.apply(null,arguments)}};Mc=function(a,b,c,d){this.f=a;this.j=b;this.b=c;this.l=d;this.id=++Lc;Dc(a,b)[this.id]=this};
Nc=function(a){return function(b){b||(b=window.event);if(b&&!b.target)try{b.target=b.srcElement}catch(d){}var c=a.b.apply(a.f,[b]);return b&&"click"==b.type&&(b=b.srcElement)&&"A"==b.tagName&&"javascript:void(0)"==b.href?!1:c}};_.Oc=function(a,b){this.f=a||0;this.j=b||0};_.Pc=function(a){return""+(_.Na(a)?_.Qa(a):a)};_.K=_.k();Rc=function(a,b){var c=b+"_changed";if(a[c])a[c]();else a.changed(b);c=Qc(a,b);for(var d in c){var e=c[d];Rc(e.Kc,e.ub)}_.G.trigger(a,b.toLowerCase()+"_changed")};
_.Tc=function(a){return Sc[a]||(Sc[a]=a.substr(0,1).toUpperCase()+a.substr(1))};Uc=function(a){a.gm_accessors_||(a.gm_accessors_={});return a.gm_accessors_};Qc=function(a,b){a.gm_bindings_||(a.gm_bindings_={});a.gm_bindings_.hasOwnProperty(b)||(a.gm_bindings_[b]={});return a.gm_bindings_[b]};_.Vc=function(a){return function(){return this.get(a)}};_.Wc=function(a,b){return b?function(c){try{this.set(a,b(c))}catch(d){_.Rb(_.Qb("set"+_.Tc(a),d))}}:function(b){this.set(a,b)}};
_.Xc=function(a,b){_.yb(b,function(b,d){var c=_.Vc(b);a["get"+_.Tc(b)]=c;d&&(d=_.Wc(b,d),a["set"+_.Tc(b)]=d)})};_.Zc=function(a){this.b=a||[];Yc(this)};Yc=function(a){a.set("length",a.b.length)};_.$c=function(){this.j=_.Pc;this.f={}};_.ad=function(a,b){var c=a.f,d=a.j(b);c[d]||(c[d]=b,_.G.trigger(a,"insert",b),a.b&&a.b(b))};_.bd=_.oa("b");_.cd=function(a,b,c){this.heading=a;this.pitch=_.Bb(b,-90,90);this.zoom=Math.max(0,c)};_.dd=function(){this.__gm=new _.K;this.l=null};
ed=function(a){this.M=[];this.b=a&&a.sd||_.Ha;this.f=a&&a.ud||_.Ha};_.gd=function(a,b,c,d){function e(){_.x(f,function(a){b.call(c||null,function(b){if(a.once){if(a.once.Ug)return;a.once.Ug=!0;_.Xa(g.M,a);g.M.length||g.b()}a.Ic.call(a.context,b)})})}var f=a.M.slice(0),g=a;d&&d.sync?e():fd(e)};hd=function(a,b){return function(c){return c.Ic==a&&c.context==(b||null)}};_.id=function(){this.M=new ed({sd:(0,_.t)(this.sd,this),ud:(0,_.t)(this.ud,this)})};_.jd=function(a){_.id.call(this);this.m=!!a};
_.ld=function(a){return new kd(a,void 0)};kd=function(a,b){_.jd.call(this,b);this.b=a};md=_.k();_.nd=function(a,b){a[b]||(a[b]=[]);return a[b]};_.pd=function(a,b){if(null==a||null==b)return null==a==(null==b);if(a.constructor!=Array&&a.constructor!=Object)throw Error("Invalid object type passed into jsproto.areObjectsEqual()");if(a===b)return!0;if(a.constructor!=b.constructor)return!1;for(var c in a)if(!(c in b&&od(a[c],b[c])))return!1;for(var d in b)if(!(d in a))return!1;return!0};
od=function(a,b){if(a===b||!(!0!==a&&1!==a||!0!==b&&1!==b)||!(!1!==a&&0!==a||!1!==b&&0!==b))return!0;if(a instanceof Object&&b instanceof Object){if(!_.pd(a,b))return!1}else return!1;return!0};td=function(a,b,c,d){this.type=a;this.label=b;this.ml=c;this.Fc=d};ud=function(a){switch(a){case "d":case "f":case "i":case "j":case "u":case "v":case "x":case "y":case "g":case "h":case "n":case "o":case "e":return 0;case "s":case "z":case "B":return"";case "b":return!1;default:return null}};
_.vd=function(a,b,c){return new td(a,1,_.p(b)?b:ud(a),c)};_.wd=function(a,b,c){return new td(a,2,_.p(b)?b:ud(a),c)};_.xd=function(a){return _.vd("i",a)};_.yd=function(a){return _.vd("v",a)};_.zd=function(a){return _.vd("b",a)};_.Ad=function(a){return _.vd("e",a)};_.L=function(a,b){return _.vd("m",a,b)};_.Bd=function(a){return new td("m",3,void 0,a)};Cd=_.k();
Ed=function(a,b,c){for(var d=1;d<b.A.length;++d){var e=b.A[d],f=a[d+b.b];if(e&&null!=f)if(3==e.label)for(var g=0;g<f.length;++g)Dd(f[g],d,e,c);else Dd(f,d,e,c)}};Dd=function(a,b,c,d){if("m"==c.type){var e=d.length;Ed(a,c.Fc,d);d.splice(e,0,[b,"m",d.length-e].join(""))}else"b"==c.type&&(a=a?"1":"0"),a=[b,c.type,(0,window.encodeURIComponent)(a)].join(""),d.push(a)};_.M=function(a){this.data=a||[]};_.Fd=function(a,b,c){a=a.data[b];return null!=a?a:c};_.N=function(a,b,c){return _.Fd(a,b,c||0)};
_.O=function(a,b,c){return _.Fd(a,b,c||"")};_.P=function(a,b){var c=a.data[b];c||(c=a.data[b]=[]);return c};_.Gd=function(a,b){return _.nd(a.data,b)};_.Hd=function(a,b,c){return _.Gd(a,b)[c]};_.Ld=function(a,b){var c=[];_.Gd(a,b).push(c);return c};_.Md=function(a,b){return a.data[b]?a.data[b].length:0};Nd=_.k();_.Od=_.oa("__gm");Pd=_.k();_.Qd=function(a){this.b=_.uc(a)};
Rd=function(a){if(a instanceof Pd)return a;try{return new _.Qd(_.uc(a))}catch(b){}throw _.Qb("not a Geometry or LatLng or LatLngLiteral object");};_.Sd=function(a,b){if(a)return function(){--a||b()};b();return _.Ha};_.Td=function(a,b,c){var d=a.getElementsByTagName("head")[0];a=a.createElement("script");a.type="text/javascript";a.charset="UTF-8";a.src=b;c&&(a.onerror=c);d.appendChild(a);return a};
Ud=function(a){for(var b="",c=0,d=arguments.length;c<d;++c){var e=arguments[c];e.length&&"/"==e[0]?b=e:(b&&"/"!=b[b.length-1]&&(b+="/"),b+=e)}return b};Vd=function(a){this.j=window.document;this.b={};this.f=a};Xd=function(){this.l={};this.f={};this.m={};this.b={};this.j=new Wd};Zd=function(a,b){a.l[b]||(a.l[b]=!0,Yd(a.j,function(c){for(var d=c.b[b],e=d?d.length:0,f=0;f<e;++f){var g=d[f];a.b[g]||Zd(a,g)}c=c.j;c.b[b]||_.Td(c.j,Ud(c.f,b)+".js")}))};
ae=function(a,b){var c=$d;this.j=a;this.b=c;a={};for(var d in c)for(var e=c[d],f=0,g=e.length;f<g;++f){var h=e[f];a[h]||(a[h]=[]);a[h].push(d)}this.l=a;this.f=b};Wd=function(){this.b=[]};Yd=function(a,b){a.f?b(a.f):a.b.push(b)};_.Q=function(a,b,c){var d=Xd.b();a=""+a;d.b[a]?b(d.b[a]):((d.f[a]=d.f[a]||[]).push(b),c||Zd(d,a))};_.be=function(a,b){Xd.b().b[""+a]=b};ce=function(a,b,c){var d=[],e=_.Sd(a.length,function(){b.apply(null,d)});_.x(a,function(a,b){_.Q(a,function(a){d[b]=a;e()},c)})};
_.fe=function(a){a=a||{};this.j=a.id;this.b=null;try{this.b=a.geometry?Rd(a.geometry):null}catch(b){_.Rb(b)}this.f=a.properties||{}};ge=function(){this.b={};this.j={};this.f={}};he=function(){this.b={}};ie=function(a){this.b=new he;var b=this;_.G.addListenerOnce(a,"addfeature",function(){_.Q("data",function(c){c.b(b,a,b.b)})})};_.ke=function(a){this.b=[];try{this.b=je(a)}catch(b){_.Rb(b)}};_.me=function(a){this.b=(0,_.le)(a)};_.ne=function(a){this.b=(0,_.le)(a)};_.pe=function(a){this.b=oe(a)};
_.qe=function(a){this.b=(0,_.le)(a)};_.se=function(a){this.b=re(a)};_.ue=function(a){this.b=te(a)};
_.ve=function(a,b,c){function d(a){if(!a)throw _.Qb("not a Feature");if("Feature"!=a.type)throw _.Qb('type != "Feature"');var b=a.geometry;try{b=null==b?null:e(b)}catch(H){throw _.Qb('in property "geometry"',H);}var d=a.properties||{};if(!_.Ib(d))throw _.Qb("properties is not an Object");var f=c.idPropertyName;a=f?d[f]:a.id;if(null!=a&&!_.y(a)&&!_.Jb(a))throw _.Qb((f||"id")+" is not a string or number");return{id:a,geometry:b,properties:d}}function e(a){if(null==a)throw _.Qb("is null");var b=(a.type+
"").toLowerCase(),c=a.coordinates;try{switch(b){case "point":return new _.Qd(h(c));case "multipoint":return new _.qe(n(c));case "linestring":return g(c);case "multilinestring":return new _.pe(q(c));case "polygon":return f(c);case "multipolygon":return new _.ue(u(c))}}catch(I){throw _.Qb('in property "coordinates"',I);}if("geometrycollection"==b)try{return new _.ke(B(a.geometries))}catch(I){throw _.Qb('in property "geometries"',I);}throw _.Qb("invalid type");}function f(a){return new _.se(r(a))}function g(a){return new _.me(n(a))}
function h(a){a=l(a);return _.uc({lat:a[1],lng:a[0]})}if(!b)return[];c=c||{};var l=_.Wb(_.bc),n=_.Wb(h),q=_.Wb(g),r=_.Wb(function(a){a=n(a);if(!a.length)throw _.Qb("contains no elements");if(!a[0].U(a[a.length-1]))throw _.Qb("first and last positions are not equal");return new _.ne(a.slice(0,-1))}),u=_.Wb(f),B=_.Wb(e),w=_.Wb(d);if("FeatureCollection"==b.type){b=b.features;try{return _.Eb(w(b),function(b){return a.add(b)})}catch(C){throw _.Qb('in property "features"',C);}}if("Feature"==b.type)return[a.add(d(b))];
throw _.Qb("not a Feature or FeatureCollection");};xe=function(a){var b=this;a=a||{};this.setValues(a);this.b=new ge;_.G.forward(this.b,"addfeature",this);_.G.forward(this.b,"removefeature",this);_.G.forward(this.b,"setgeometry",this);_.G.forward(this.b,"setproperty",this);_.G.forward(this.b,"removeproperty",this);this.f=new ie(this.b);this.f.bindTo("map",this);this.f.bindTo("style",this);_.x(_.we,function(a){_.G.forward(b.f,a,b)});this.j=!1};ye=function(a){a.j||(a.j=!0,_.Q("drawing_impl",function(b){b.em(a)}))};
ze=function(a){if(!a)return null;if(_.Fa(a)){var b=window.document.createElement("div");b.style.overflow="auto";b.innerHTML=a}else a.nodeType==window.Node.TEXT_NODE?(b=window.document.createElement("div"),b.appendChild(a)):b=a;return b};Ee=function(a){var b=Ae,c=Xd.b().j;a=c.f=new ae(new Vd(a),b);b=0;for(var d=c.b.length;b<d;++b)c.b[b](a);c.b.length=0};Fe=function(a){a=a||{};a.clickable=_.Fb(a.clickable,!0);a.visible=_.Fb(a.visible,!0);this.setValues(a);_.Q("marker",_.Ha)};
_.Ge=function(a){this.__gm={set:null,Wd:null,Yb:{map:null,xe:null}};Fe.call(this,a)};He=function(a,b){this.b=a;this.f=b;a.addListener("map_changed",(0,_.t)(this.fn,this));this.bindTo("map",a);this.bindTo("disableAutoPan",a);this.bindTo("maxWidth",a);this.bindTo("position",a);this.bindTo("zIndex",a);this.bindTo("internalAnchor",a,"anchor");this.bindTo("internalContent",a,"content");this.bindTo("internalPixelOffset",a,"pixelOffset")};Ie=function(a,b,c,d){c?a.bindTo(b,c,d):(a.unbind(b),a.set(b,void 0))};
_.Je=function(a){function b(){e||(e=!0,_.Q("infowindow",function(a){a.Kk(d)}))}window.setTimeout(function(){_.Q("infowindow",_.Ha)},100);a=a||{};var c=!!a.b;delete a.b;var d=new He(this,c),e=!1;_.G.addListenerOnce(this,"anchor_changed",b);_.G.addListenerOnce(this,"map_changed",b);this.setValues(a)};_.Le=function(a){_.Ke&&a&&_.Ke.push(a)};Me=function(a){this.setValues(a)};Ne=_.k();Oe=_.k();Pe=_.k();_.Qe=function(){_.Q("geocoder",_.Ha)};
_.Re=function(a,b,c){this.H=null;this.set("url",a);this.set("bounds",_.$b(_.yc)(b));this.setValues(c)};Se=function(a,b){_.Jb(a)?(this.set("url",a),this.setValues(b)):this.setValues(a)};_.Te=function(){var a=this;_.Q("layers",function(b){b.b(a)})};Ue=function(a){this.setValues(a);var b=this;_.Q("layers",function(a){a.f(b)})};Ve=function(){var a=this;_.Q("layers",function(b){b.j(a)})};_.Xe=function(){this.b="";this.f=_.We};_.Ye=function(a){var b=new _.Xe;b.b=a;return b};
_.$e=function(){this.qf="";this.hk=_.Ze;this.b=null};_.af=function(a,b){var c=new _.$e;c.qf=a;c.b=b;return c};_.bf=function(a,b){b.parentNode&&b.parentNode.insertBefore(a,b.nextSibling)};_.cf=function(a){a&&a.parentNode&&a.parentNode.removeChild(a)};_.df=_.k();ef=function(a,b,c,d,e){this.b=!!b;this.node=null;this.f=0;this.j=!1;this.l=!c;a&&this.setPosition(a,d);this.depth=void 0!=e?e:this.f||0;this.b&&(this.depth*=-1)};ff=function(a,b,c,d){ef.call(this,a,b,c,null,d)};gf=function(a){this.data=a||[]};
hf=function(a){this.data=a||[]};jf=function(a){this.data=a||[]};lf=function(a){this.data=a||[]};_.mf=function(a){this.data=a||[]};nf=function(a){this.data=a||[]};of=function(a){this.data=a||[]};pf=function(a){this.data=a||[]};_.qf=function(a){return _.O(a,0)};_.rf=function(a){return _.O(a,1)};_.sf=function(){return _.O(_.R,16)};_.tf=function(a){return new lf(a.data[2])};
uf=function(a,b,c,d,e){var f=_.O(_.tf(_.R),7);this.b=a;this.f=d;this.j=_.p(e)?e:_.Ta();var g=f+"/csi?v=2&s=mapsapi3&v3v="+_.O(new pf(_.R.data[36]),0)+"&action="+a;_.bb(c,function(a,b){g+="&"+(0,window.encodeURIComponent)(b)+"="+(0,window.encodeURIComponent)(a)});b&&(g+="&e="+b);this.l=g};_.wf=function(a,b){var c={};c[b]=void 0;_.vf(a,c)};
_.vf=function(a,b){var c="";_.bb(b,function(a,b){var d=(null!=a?a:_.Ta())-this.j;c&&(c+=",");c+=b+"."+Math.round(d);null==a&&window.performance&&window.performance.mark&&window.performance.mark("mapsapi:"+this.b+":"+b)},a);b=a.l+"&rt="+c;a.f.createElement("img").src=b;(a=_.jb.__gm_captureCSI)&&a(b)};
_.xf=function(a,b){b=b||{};var c=b.yn||{},d=_.Gd(_.R,12).join(",");d&&(c.libraries=d);d=_.O(_.R,6);var e=new gf(_.R.data[33]),f=[];d&&f.push(d);_.x(e.data,function(a,b){a&&_.x(a,function(a,c){null!=a&&f.push(b+1+"_"+(c+1)+"_"+a)})});b.Al&&(f=f.concat(b.Al));return new uf(a,f.join(","),c,b.document||window.document,b.startTime)};zf=function(){this.f=_.xf("apiboot2",{startTime:_.yf});_.wf(this.f,"main");this.b=!1};Bf=function(){var a=Af;a.b||(a.b=!0,_.wf(a.f,"firstmap"))};
_.Cf=function(a,b,c){this.size=a;this.b=b;this.heading=c;this.f=Math.cos(this.b/180*Math.PI)};_.Df=function(){this.b=new _.z(128,128);this.j=256/360;this.l=256/(2*Math.PI);this.f=!0};_.Ef=function(a,b,c){if(a=a.fromLatLngToPoint(b))c=Math.pow(2,c),a.x*=c,a.y*=c;return a};
_.Ff=function(a,b){var c=a.lat()+_.wb(b);90<c&&(c=90);var d=a.lat()-_.wb(b);-90>d&&(d=-90);b=Math.sin(b);var e=Math.cos(_.vb(a.lat()));if(90==c||-90==d||1E-6>e)return new _.vc(new _.F(d,-180),new _.F(c,180));b=_.wb(Math.asin(b/e));return new _.vc(new _.F(d,a.lng()-b),new _.F(c,a.lng()+b))};
If=function(a,b){_.dd.call(this);_.Le(a);this.__gm=new _.K;this.f=null;b&&b.client&&(this.f=_.Gf[b.client]||null);var c=this.controls=[];_.yb(_.Hf,function(a,b){c[b]=new _.Zc});this.j=!0;this.b=a;this.m=!1;this.__gm.wb=b&&b.wb||new _.$c;this.set("standAlone",!0);this.setPov(new _.cd(0,0,1));b&&b.wd&&!_.y(b.wd.zoom)&&(b.wd.zoom=_.y(b.zoom)?b.zoom:1);this.setValues(b);void 0==this.getVisible()&&this.setVisible(!0);_.G.addListenerOnce(this,"pano_changed",_.Mb(function(){_.Q("marker",(0,_.t)(function(a){a.b(this.__gm.wb,
this)},this))}))};Jf=function(){this.l=[];this.j=this.b=this.f=null};Kf=function(a,b,c){this.S=b;this.b=_.ld(new _.bd([]));this.B=new _.$c;new _.Zc;this.D=new _.$c;this.F=new _.$c;this.l=new _.$c;var d=this.wb=new _.$c;d.b=function(){delete d.b;_.Q("marker",_.Mb(function(b){b.b(d,a)}))};this.j=new If(c,{visible:!1,enableCloseButton:!0,wb:d});this.j.bindTo("reportErrorControl",a);this.j.j=!1;this.f=new Jf;this.overlayLayer=null};_.Lf=function(){this.M=new ed};
_.Mf=function(a){this.Yk=a||0;_.G.bind(this,"forceredraw",this,this.B)};_.Nf=function(a,b){a=a.style;a.width=b.width+b.f;a.height=b.height+b.b};_.Of=function(a){return new _.D(a.offsetWidth,a.offsetHeight)};Pf=function(a){this.data=a||[]};Sf=function(){Qf||(Qf={b:-1,A:[,_.Rf,_.Rf,_.Rf,_.Rf]});return Qf};Tf=function(a){this.data=a||[]};Uf=function(a){this.data=a||[]};Vf=function(a){this.data=a||[]};Wf=function(a){this.data=a||[]};eg=function(a){this.data=a||[]};fg=function(a){this.data=a||[]};
gg=function(a,b,c,d,e){_.Mf.call(this);this.G=b;this.F=new _.Df;this.O=c+"/maps/api/js/StaticMapService.GetMapImage";this.b=this.f=null;this.C=d;this.j=e?new kd(null,void 0):null;this.l=null;this.m=!1;this.set("div",a);this.set("loading",!0)};ig=function(a){var b=a.get("tilt")||_.xb(a.get("styles"));a=a.get("mapTypeId");return b?null:hg[a]};jg=function(a){a.parentNode&&a.parentNode.removeChild(a)};
kg=function(a,b){var c=a.b;c.onload=null;c.onerror=null;var d=a.get("size");d&&(b&&(c.parentNode||a.f.appendChild(c),a.j||_.Nf(c,d),_.G.trigger(a,"staticmaploaded"),a.C.set(_.Ta())),a.set("loading",!1))};lg=function(a,b){var c=a.b;b!=c.src?(a.j||jg(c),c.onload=function(){kg(a,!0)},c.onerror=function(){kg(a,!1)},c.src=b):!c.parentNode&&b&&a.f.appendChild(c)};_.ng=function(a){for(var b;b=a.firstChild;)_.mg(b),a.removeChild(b)};
_.mg=function(a){a=new ff(a);try{for(;;)_.G.clearInstanceListeners(a.next())}catch(b){if(b!==_.og)throw b;}};
sg=function(a,b){var c=_.Ta();Af&&Bf();var d=new _.Lf,e=b||{};e.noClear||_.ng(a);var f="undefined"==typeof window.document?null:window.document.createElement("div");f&&a.appendChild&&(a.appendChild(f),f.style.width=f.style.height="100%");if(![].forEach)throw _.Q("controls",function(b){b.hg(a)}),Error("The Google Maps API does not support this browser.");b=new window.Promise(_.k());_.Od.call(this,new Kf(this,a,f,d,b));_.p(e.mapTypeId)||(e.mapTypeId="roadmap");this.setValues(e);this.X=_.pg[15]&&e.noControlsOrLogging;
this.mapTypes=new Nd;this.features=new _.K;_.Le(f);this.notify("streetView");b=_.Of(f);var g=null;_.R&&qg(e.useStaticMap,b)&&(g=new gg(f,_.rg,_.O(_.tf(_.R),9),new kd(null,void 0),!1),_.G.forward(g,"staticmaploaded",this),g.set("size",b),g.bindTo("center",this),g.bindTo("zoom",this),g.bindTo("mapTypeId",this),g.bindTo("styles",this));this.overlayMapTypes=new _.Zc;var h=this.controls=[];_.yb(_.Hf,function(a,b){h[b]=new _.Zc});var l=this,n=!0;_.Q("map",function(a){l.getDiv()&&f&&a.f(l,e,f,g,n,c,d)});
n=!1;this.data=new xe({map:this})};qg=function(a,b){if(_.p(a))return!!a;a=b.width;b=b.height;return 384E3>=a*b&&800>=a&&800>=b};tg=function(){_.Q("maxzoom",_.Ha)};ug=function(a,b){!a||_.Jb(a)||_.y(a)?(this.set("tableId",a),this.setValues(b)):this.setValues(a)};_.vg=_.k();wg=function(a){a=a||{};a.visible=_.Fb(a.visible,!0);return a};_.xg=function(a){return a&&a.radius||6378137};zg=function(a){return a instanceof _.Zc?yg(a):new _.Zc((0,_.le)(a))};
Bg=function(a){if(_.Ka(a)||a instanceof _.Zc)if(0==_.xb(a))var b=!0;else b=a instanceof _.Zc?a.getAt(0):a[0],b=_.Ka(b)||b instanceof _.Zc;else b=!1;return b?a instanceof _.Zc?Ag(yg)(a):new _.Zc(_.Wb(zg)(a)):new _.Zc([zg(a)])};Ag=function(a){return function(b){if(!(b instanceof _.Zc))throw _.Qb("not an MVCArray");b.forEach(function(b,d){try{a(b)}catch(e){throw _.Qb("at index "+d,e);}});return b}};_.Cg=function(a){this.setValues(wg(a));_.Q("poly",_.Ha)};
Dg=function(a){this.set("latLngs",new _.Zc([new _.Zc]));this.setValues(wg(a));_.Q("poly",_.Ha)};_.Eg=function(a){Dg.call(this,a)};_.Fg=function(a){Dg.call(this,a)};_.Gg=function(a){this.setValues(wg(a));_.Q("poly",_.Ha)};Hg=function(){this.b=null};_.Ig=function(){this.b=null};
_.Jg=function(a){var b=this;this.tileSize=a.tileSize||new _.D(256,256);this.name=a.name;this.alt=a.alt;this.minZoom=a.minZoom;this.maxZoom=a.maxZoom;this.j=(0,_.t)(a.getTileUrl,a);this.b=new _.$c;this.f=null;this.set("opacity",a.opacity);_.Q("map",function(a){var c=b.f=a.b,e=b.tileSize||new _.D(256,256);b.b.forEach(function(a){var d=a.__gmimt,f=d.Y,l=d.zoom,n=b.j(f,l);d.$b=c({T:f.x,V:f.y,$:l},e,a,n,function(){return _.G.trigger(a,"load")})})})};
Kg=function(a){a=a.get("opacity");return"number"==typeof a?a:1};_.Lg=function(){_.Lg.Ye(this,"constructor")};_.Mg=function(a,b){_.Mg.Ye(this,"constructor");this.set("styles",a);a=b||{};this.f=a.baseMapTypeId||"roadmap";this.minZoom=a.minZoom;this.maxZoom=a.maxZoom||20;this.name=a.name;this.alt=a.alt;this.projection=null;this.tileSize=new _.D(256,256)};_.Ng=function(a,b){_.Xb(Tb,"container is not a Node")(a);this.setValues(b);_.Q("controls",(0,_.t)(function(b){b.wm(this,a)},this))};Og=_.oa("b");
Pg=function(a,b,c){for(var d=Array(b.length),e=0,f=b.length;e<f;++e)d[e]=b.charCodeAt(e);d.unshift(c);a=a.b;c=b=0;for(e=d.length;c<e;++c)b*=1729,b+=d[c],b%=a;return b};Sg=function(){var a=_.N(new nf(_.R.data[4]),0),b=new Og(131071),c=(0,window.unescape)("%26%74%6F%6B%65%6E%3D");return function(d){d=d.replace(Qg,"%27");var e=d+c;Rg||(Rg=/(?:https?:\/\/[^/]+)?(.*)/);d=Rg.exec(d);return e+Pg(b,d&&d[1],a)}};Tg=function(){var a=new Og(2147483647);return function(b){return Pg(a,b,0)}};
Ug=function(a){for(var b=a.split("."),c=window,d=window,e=0;e<b.length;e++)if(d=c,c=c[b[e]],!c)throw _.Qb(a+" is not a function");return function(){c.apply(d)}};Vg=function(){for(var a in Object.prototype)window.console&&window.console.error("This site adds property <"+a+"> to Object.prototype. Extending Object.prototype breaks JavaScript for..in loops, which are used heavily in Google Maps API v3.")};
ah=function(a){(a="version"in a)&&window.console&&window.console.error("You have included the Google Maps API multiple times on this page. This may cause unexpected errors.");return a};_.ra=[];_.va="undefined"!=typeof window&&window===this?this:"undefined"!=typeof window.global&&null!=window.global?window.global:this;_.bh="function"==typeof Object.create?Object.create:function(a){function b(){}b.prototype=a;return new b};
if("function"==typeof Object.setPrototypeOf)ch=Object.setPrototypeOf;else{var dh;a:{var eh={Gk:!0},fh={};try{fh.__proto__=eh;dh=fh.Gk;break a}catch(a){}dh=!1}ch=dh?function(a,b){a.__proto__=b;if(a.__proto__!==b)throw new TypeError(a+" is not extensible");return a}:null}_.gh=ch;xa="function"==typeof Object.defineProperties?Object.defineProperty:function(a,b,c){a!=Array.prototype&&a!=Object.prototype&&(a[b]=c.value)};wa=function(){var a=0;return function(b){return"jscomp_symbol_"+(b||"")+a++}}();
Da("Array.prototype.findIndex",function(a){return a?a:function(a,c){a:{var b=this;b instanceof String&&(b=String(b));for(var e=b.length,f=0;f<e;f++)if(a.call(c,b[f],f,b)){a=f;break a}a=-1}return a}});
Da("Promise",function(a){function b(a){this.b=0;this.j=void 0;this.f=[];var b=this.l();try{a(b.resolve,b.reject)}catch(l){b.reject(l)}}function c(){this.b=null}function d(a){return a instanceof b?a:new b(function(b){b(a)})}if(a)return a;c.prototype.f=function(a){null==this.b&&(this.b=[],this.l());this.b.push(a)};c.prototype.l=function(){var a=this;this.j(function(){a.B()})};var e=_.va.setTimeout;c.prototype.j=function(a){e(a,0)};c.prototype.B=function(){for(;this.b&&this.b.length;){var a=this.b;this.b=
[];for(var b=0;b<a.length;++b){var c=a[b];delete a[b];try{c()}catch(n){this.m(n)}}}this.b=null};c.prototype.m=function(a){this.j(function(){throw a;})};b.prototype.l=function(){function a(a){return function(d){c||(c=!0,a.call(b,d))}}var b=this,c=!1;return{resolve:a(this.G),reject:a(this.m)}};b.prototype.G=function(a){if(a===this)this.m(new TypeError("A Promise cannot resolve to itself"));else if(a instanceof b)this.O(a);else{a:switch(typeof a){case "object":var c=null!=a;break a;case "function":c=
!0;break a;default:c=!1}c?this.F(a):this.B(a)}};b.prototype.F=function(a){var b=void 0;try{b=a.then}catch(l){this.m(l);return}"function"==typeof b?this.R(b,a):this.B(a)};b.prototype.m=function(a){this.C(2,a)};b.prototype.B=function(a){this.C(1,a)};b.prototype.C=function(a,b){if(0!=this.b)throw Error("Cannot settle("+a+", "+b|"): Promise already settled in state"+this.b);this.b=a;this.j=b;this.D()};b.prototype.D=function(){if(null!=this.f){for(var a=this.f,b=0;b<a.length;++b)a[b].call(),a[b]=null;
this.f=null}};var f=new c;b.prototype.O=function(a){var b=this.l();a.Kd(b.resolve,b.reject)};b.prototype.R=function(a,b){var c=this.l();try{a.call(b,c.resolve,c.reject)}catch(n){c.reject(n)}};b.prototype.then=function(a,c){function d(a,b){return"function"==typeof a?function(b){try{e(a(b))}catch(C){f(C)}}:b}var e,f,g=new b(function(a,b){e=a;f=b});this.Kd(d(a,e),d(c,f));return g};b.prototype["catch"]=function(a){return this.then(void 0,a)};b.prototype.Kd=function(a,b){function c(){switch(d.b){case 1:a(d.j);
break;case 2:b(d.j);break;default:throw Error("Unexpected state: "+d.b);}}var d=this;null==this.f?f.f(c):this.f.push(function(){f.f(c)})};b.resolve=d;b.reject=function(a){return new b(function(b,c){c(a)})};b.race=function(a){return new b(function(b,c){for(var e=_.Ca(a),f=e.next();!f.done;f=e.next())d(f.value).Kd(b,c)})};b.all=function(a){var c=_.Ca(a),e=c.next();return e.done?d([]):new b(function(a,b){function f(b){return function(c){g[b]=c;h--;0==h&&a(g)}}var g=[],h=0;do g.push(void 0),h++,d(e.value).Kd(f(g.length-
1),b),e=c.next();while(!e.done)})};return b});Da("Array.from",function(a){return a?a:function(a,c,d){za();c=null!=c?c:_.na();var b=[],f=a[window.Symbol.iterator];if("function"==typeof f)for(a=f.call(a);!(f=a.next()).done;)b.push(c.call(d,f.value));else{f=a.length;for(var g=0;g<f;g++)b.push(c.call(d,a[g]))}return b}});Da("Math.sign",function(a){return a?a:function(a){a=Number(a);return 0===a||(0,window.isNaN)(a)?a:0<a?1:-1}});
Da("WeakMap",function(a){function b(a){this.b=(f+=Math.random()+1).toString();if(a){ua();za();a=_.Ca(a);for(var b;!(b=a.next()).done;)b=b.value,this.set(b[0],b[1])}}function c(a){Ea(a,e)||xa(a,e,{value:{}})}function d(a){var b=Object[a];b&&(Object[a]=function(a){c(a);return b(a)})}if(function(){if(!a||!Object.seal)return!1;try{var b=Object.seal({}),c=Object.seal({}),d=new a([[b,2],[c,3]]);if(2!=d.get(b)||3!=d.get(c))return!1;d["delete"](b);d.set(c,4);return!d.has(b)&&4==d.get(c)}catch(n){return!1}}())return a;
var e="$jscomp_hidden_"+Math.random().toString().substring(2);d("freeze");d("preventExtensions");d("seal");var f=0;b.prototype.set=function(a,b){c(a);if(!Ea(a,e))throw Error("WeakMap key fail: "+a);a[e][this.b]=b;return this};b.prototype.get=function(a){return Ea(a,e)?a[e][this.b]:void 0};b.prototype.has=function(a){return Ea(a,e)&&Ea(a[e],this.b)};b.prototype["delete"]=function(a){return Ea(a,e)&&Ea(a[e],this.b)?delete a[e][this.b]:!1};return b});
Da("Map",function(a){function b(){var a={};return a.Kb=a.next=a.head=a}function c(a,b){var c=a.b;return Aa(function(){if(c){for(;c.head!=a.b;)c=c.Kb;for(;c.next!=c.head;)return c=c.next,{done:!1,value:b(c)};c=null}return{done:!0,value:void 0}})}function d(a,b){var c=b&&typeof b;"object"==c||"function"==c?f.has(b)?c=f.get(b):(c=""+ ++g,f.set(b,c)):c="p_"+b;var d=a.f[c];if(d&&Ea(a.f,c))for(a=0;a<d.length;a++){var e=d[a];if(b!==b&&e.key!==e.key||b===e.key)return{id:c,list:d,index:a,Qa:e}}return{id:c,
list:d,index:-1,Qa:void 0}}function e(a){this.f={};this.b=b();this.size=0;if(a){a=_.Ca(a);for(var c;!(c=a.next()).done;)c=c.value,this.set(c[0],c[1])}}if(function(){if(!a||!a.prototype.entries||"function"!=typeof Object.seal)return!1;try{var b=Object.seal({x:4}),c=new a(_.Ca([[b,"s"]]));if("s"!=c.get(b)||1!=c.size||c.get({x:4})||c.set({x:4},"t")!=c||2!=c.size)return!1;var d=c.entries(),e=d.next();if(e.done||e.value[0]!=b||"s"!=e.value[1])return!1;e=d.next();return e.done||4!=e.value[0].x||"t"!=e.value[1]||
!d.next().done?!1:!0}catch(r){return!1}}())return a;ua();za();var f=new window.WeakMap;e.prototype.set=function(a,b){var c=d(this,a);c.list||(c.list=this.f[c.id]=[]);c.Qa?c.Qa.value=b:(c.Qa={next:this.b,Kb:this.b.Kb,head:this.b,key:a,value:b},c.list.push(c.Qa),this.b.Kb.next=c.Qa,this.b.Kb=c.Qa,this.size++);return this};e.prototype["delete"]=function(a){a=d(this,a);return a.Qa&&a.list?(a.list.splice(a.index,1),a.list.length||delete this.f[a.id],a.Qa.Kb.next=a.Qa.next,a.Qa.next.Kb=a.Qa.Kb,a.Qa.head=
null,this.size--,!0):!1};e.prototype.clear=function(){this.f={};this.b=this.b.Kb=b();this.size=0};e.prototype.has=function(a){return!!d(this,a).Qa};e.prototype.get=function(a){return(a=d(this,a).Qa)&&a.value};e.prototype.entries=function(){return c(this,function(a){return[a.key,a.value]})};e.prototype.keys=function(){return c(this,function(a){return a.key})};e.prototype.values=function(){return c(this,function(a){return a.value})};e.prototype.forEach=function(a,b){for(var c=this.entries(),d;!(d=c.next()).done;)d=
d.value,a.call(b,d[1],d[0],this)};e.prototype[window.Symbol.iterator]=e.prototype.entries;var g=0;return e});Da("Array.prototype.fill",function(a){return a?a:function(a,c,d){var b=this.length||0;0>c&&(c=Math.max(0,b+c));if(null==d||d>b)d=b;d=Number(d);0>d&&(d=Math.max(0,b+d));for(c=Number(c||0);c<d;c++)this[c]=a;return this}});Da("Object.is",function(a){return a?a:function(a,c){return a===c?0!==a||1/a===1/c:a!==a&&c!==c}});
Da("Array.prototype.includes",function(a){return a?a:function(a,c){var b=this;b instanceof String&&(b=String(b));var e=b.length;for(c=c||0;c<e;c++)if(b[c]==a||Object.is(b[c],a))return!0;return!1}});_.jb=this;Oa="closure_uid_"+(1E9*Math.random()>>>0);Pa=0;a:{var hh=_.jb.navigator;if(hh){var ih=hh.userAgent;if(ih){_.Za=ih;break a}}_.Za=""};_.hb[" "]=_.Ha;var vh;_.jh=_.ab("Opera");_.kh=_.cb();_.lh=_.ab("Edge");_.mh=_.ab("Gecko")&&!(_.$a()&&!_.ab("Edge"))&&!(_.ab("Trident")||_.ab("MSIE"))&&!_.ab("Edge");_.nh=_.$a()&&!_.ab("Edge");_.oh=_.ab("Macintosh");_.ph=_.ab("Windows");_.qh=_.ab("Linux")||_.ab("CrOS");_.rh=_.ab("Android");_.sh=_.gb();_.th=_.ab("iPad");_.uh=_.ab("iPod");
a:{var wh="",xh=function(){var a=_.Za;if(_.mh)return/rv:([^\);]+)(\)|;)/.exec(a);if(_.lh)return/Edge\/([\d\.]+)/.exec(a);if(_.kh)return/\b(?:MSIE|rv)[: ]([^\);]+)(\)|;)/.exec(a);if(_.nh)return/WebKit\/(\S+)/.exec(a);if(_.jh)return/(?:Version)[ \/]?(\S+)/.exec(a)}();xh&&(wh=xh?xh[1]:"");if(_.kh){var yh=kb();if(null!=yh&&yh>(0,window.parseFloat)(wh)){vh=String(yh);break a}}vh=wh}_.zh=vh;var Bh=_.jb.document;_.Ah=Bh&&_.kh?kb()||("CSS1Compat"==Bh.compatMode?(0,window.parseInt)(_.zh,10):5):void 0;_.Ch=_.ab("Firefox");_.Dh=_.gb()||_.ab("iPod");_.Eh=_.ab("iPad");_.Fh=_.fb();_.Gh=db();_.Hh=_.eb()&&!(_.gb()||_.ab("iPad")||_.ab("iPod"));var Ih;Ih=_.mh||_.nh&&!_.Hh||_.jh;_.Jh=Ih||"function"==typeof _.jb.btoa;_.Kh=Ih||!_.Hh&&!_.kh&&"function"==typeof _.jb.atob;lb.prototype.get=function(){if(0<this.f){this.f--;var a=this.b;this.b=a.next;a.next=null}else a=this.j();return a};var Lh=function(a){return function(){return a}}(null);var qb,pb=_.mb;var Mh=new lb(function(){return new ub},function(a){a.reset()});tb.prototype.add=function(a,b){var c=Mh.get();c.set(a,b);this.f?this.f.next=c:this.b=c;this.f=c};tb.prototype.remove=function(){var a=null;this.b&&(a=this.b,this.b=this.b.next,this.b||(this.f=null),a.next=null);return a};ub.prototype.set=function(a,b){this.Ic=a;this.b=b;this.next=null};ub.prototype.reset=function(){this.next=this.b=this.Ic=null};_.ob.m=function(){if(-1!=String(_.jb.Promise).indexOf("[native code]")){var a=_.jb.Promise.resolve(void 0);_.ob.b=function(){a.then(_.ob.f)}}else _.ob.b=function(){sb()}};_.ob.B=function(a){_.ob.b=function(){sb();a&&a(_.ob.f)}};_.ob.j=!1;_.ob.l=new tb;_.ob.f=function(){for(var a;a=_.ob.l.remove();){try{a.Ic.call(a.b)}catch(c){nb(c)}var b=Mh;b.l(a);100>b.f&&(b.f++,a.next=b.b,b.b=a)}_.ob.j=!1};_.Nh={ROADMAP:"roadmap",SATELLITE:"satellite",HYBRID:"hybrid",TERRAIN:"terrain"};_.Hf={TOP_LEFT:1,TOP_CENTER:2,TOP:2,TOP_RIGHT:3,LEFT_CENTER:4,LEFT_TOP:5,LEFT:5,LEFT_BOTTOM:6,RIGHT_TOP:7,RIGHT:7,RIGHT_CENTER:8,RIGHT_BOTTOM:9,BOTTOM_LEFT:10,BOTTOM_CENTER:11,BOTTOM:11,BOTTOM_RIGHT:12,CENTER:13};_.v(Pb,Error);var Oh,Qh;_.bc=_.Xb(_.y,"not a number");Oh=_.Zb(_.bc,function(a){if((0,window.isNaN)(a))throw _.Qb("NaN is not an accepted value");return a});_.Ph=_.Xb(_.Jb,"not a string");Qh=_.Xb(_.Kb,"not a boolean");_.Rh=_.$b(_.bc);_.Sh=_.$b(_.Ph);_.Th=_.$b(Qh);_.Uh=new _.z(0,0);_.z.prototype.toString=function(){return"("+this.x+", "+this.y+")"};_.z.prototype.U=function(a){return a?a.x==this.x&&a.y==this.y:!1};_.z.prototype.equals=_.z.prototype.U;_.z.prototype.round=function(){this.x=Math.round(this.x);this.y=Math.round(this.y)};_.z.prototype.ae=_.sa(0);_.Vh=new _.D(0,0);_.D.prototype.toString=function(){return"("+this.width+", "+this.height+")"};_.D.prototype.U=function(a){return a?a.width==this.width&&a.height==this.height:!1};_.D.prototype.equals=_.D.prototype.U;_.ec.prototype.U=function(a){return a?this.b==a.b&&this.f==a.f:!1};fc.prototype.U=function(a){return a?this.m11==a.m11&&this.m12==a.m12&&this.m21==a.m21&&this.m22==a.m22:!1};_.hc.prototype.isEmpty=function(){return!(this.I<this.K&&this.J<this.L)};_.hc.prototype.extend=function(a){a&&(this.I=Math.min(this.I,a.x),this.K=Math.max(this.K,a.x),this.J=Math.min(this.J,a.y),this.L=Math.max(this.L,a.y))};_.hc.prototype.getCenter=function(){return new _.z((this.I+this.K)/2,(this.J+this.L)/2)};_.hc.prototype.U=function(a){return a?this.I==a.I&&this.J==a.J&&this.K==a.K&&this.L==a.L:!1};_.Wh=_.ic(-window.Infinity,-window.Infinity,window.Infinity,window.Infinity);_.Xh=_.ic(0,0,0,0);_.m=jc.prototype;_.m.isEmpty=function(){return 360==this.b-this.f};_.m.intersects=function(a){var b=this.b,c=this.f;return this.isEmpty()||a.isEmpty()?!1:_.kc(this)?_.kc(a)||a.b<=this.f||a.f>=b:_.kc(a)?a.b<=c||a.f>=b:a.b<=c&&a.f>=b};_.m.contains=function(a){-180==a&&(a=180);var b=this.b,c=this.f;return _.kc(this)?(a>=b||a<=c)&&!this.isEmpty():a>=b&&a<=c};_.m.extend=function(a){this.contains(a)||(this.isEmpty()?this.b=this.f=a:_.lc(a,this.b)<_.lc(this.f,a)?this.b=a:this.f=a)};
_.m.U=function(a){return 1E-9>=Math.abs(a.b-this.b)%360+Math.abs(_.mc(a)-_.mc(this))};_.m.Rb=function(){var a=(this.b+this.f)/2;_.kc(this)&&(a=_.Cb(a+180,-180,180));return a};_.m=nc.prototype;_.m.isEmpty=function(){return this.b>this.f};_.m.intersects=function(a){var b=this.b,c=this.f;return b<=a.b?a.b<=c&&a.b<=a.f:b<=a.f&&b<=c};_.m.contains=function(a){return a>=this.b&&a<=this.f};_.m.extend=function(a){this.isEmpty()?this.f=this.b=a:a<this.b?this.b=a:a>this.f&&(this.f=a)};
_.m.U=function(a){return this.isEmpty()?a.isEmpty():1E-9>=Math.abs(a.b-this.b)+Math.abs(this.f-a.f)};_.m.Rb=function(){return(this.f+this.b)/2};var oc=_.Sb({lat:_.bc,lng:_.bc},!0);_.F.prototype.toString=function(){return"("+this.lat()+", "+this.lng()+")"};_.F.prototype.toJSON=function(){return{lat:this.lat(),lng:this.lng()}};_.F.prototype.U=function(a){return a?_.Db(this.lat(),a.lat())&&_.Db(this.lng(),a.lng()):!1};_.F.prototype.equals=_.F.prototype.U;_.F.prototype.toUrlValue=function(a){a=_.p(a)?a:6;return tc(this.lat(),a)+","+tc(this.lng(),a)};_.le=_.Wb(_.uc);_.m=_.vc.prototype;_.m.getCenter=function(){return new _.F(this.f.Rb(),this.b.Rb())};_.m.toString=function(){return"("+this.getSouthWest()+", "+this.getNorthEast()+")"};_.m.toJSON=function(){return{south:this.f.b,west:this.b.b,north:this.f.f,east:this.b.f}};_.m.toUrlValue=function(a){var b=this.getSouthWest(),c=this.getNorthEast();return[b.toUrlValue(a),c.toUrlValue(a)].join()};_.m.U=function(a){if(!a)return!1;a=_.yc(a);return this.f.U(a.f)&&this.b.U(a.b)};_.vc.prototype.equals=_.vc.prototype.U;
_.m=_.vc.prototype;_.m.contains=function(a){a=_.uc(a);return this.f.contains(a.lat())&&this.b.contains(a.lng())};_.m.intersects=function(a){a=_.yc(a);return this.f.intersects(a.f)&&this.b.intersects(a.b)};_.m.extend=function(a){a=_.uc(a);this.f.extend(a.lat());this.b.extend(a.lng());return this};_.m.union=function(a){a=_.yc(a);if(!a||a.isEmpty())return this;this.extend(a.getSouthWest());this.extend(a.getNorthEast());return this};_.m.getSouthWest=function(){return new _.F(this.f.b,this.b.b,!0)};
_.m.getNorthEast=function(){return new _.F(this.f.f,this.b.f,!0)};_.m.toSpan=function(){var a=this.f;a=a.isEmpty()?0:a.f-a.b;return new _.F(a,_.mc(this.b),!0)};_.m.isEmpty=function(){return this.f.isEmpty()||this.b.isEmpty()};var xc=_.Sb({south:_.bc,west:_.bc,north:_.bc,east:_.bc},!1);var Lc;
_.G={addListener:function(a,b,c){return new Mc(a,b,c,0)},hasListeners:function(a,b){if(!a)return!1;b=(a=a.__e3_)&&a[b];return!!b&&!_.Ab(b)},removeListener:function(a){a&&a.remove()},clearListeners:function(a,b){_.yb(Ec(a,b),function(a,b){b&&b.remove()})},clearInstanceListeners:function(a){_.yb(Ec(a),function(a,c){c&&c.remove()})},trigger:function(a,b,c){if(_.G.hasListeners(a,b)){var d=_.Ya(arguments,2),e=Ec(a,b),f;for(f in e){var g=e[f];g&&g.b.apply(g.f,d)}}},addDomListener:function(a,b,c,d){var e=
d?4:1;if(!a.addEventListener&&a.attachEvent)return c=new Mc(a,b,c,2),a.attachEvent("on"+b,Nc(c)),c;a.addEventListener&&a.addEventListener(b,c,d);return new Mc(a,b,c,e)},addDomListenerOnce:function(a,b,c,d){var e=_.G.addDomListener(a,b,function(){e.remove();return c.apply(this,arguments)},d);return e},W:function(a,b,c,d){return _.G.addDomListener(a,b,Fc(c,d))},bind:function(a,b,c,d){return _.G.addListener(a,b,(0,_.t)(d,c))},addListenerOnce:function(a,b,c){var d=_.G.addListener(a,b,function(){d.remove();
return c.apply(this,arguments)});return d},forward:function(a,b,c){return _.G.addListener(a,b,Kc(b,c))},ab:function(a,b,c,d){return _.G.addDomListener(a,b,Kc(b,c,!d))}};Lc=0;Mc.prototype.remove=function(){if(this.f){if(this.f.removeEventListener)switch(this.l){case 1:this.f.removeEventListener(this.j,this.b,!1);break;case 4:this.f.removeEventListener(this.j,this.b,!0)}delete Dc(this.f,this.j)[this.id];this.b=this.f=null}};_.Oc.prototype.heading=_.pa("f");_.Oc.prototype.b=_.pa("j");_.Oc.prototype.toString=function(){return this.f+","+this.j};_.Yh=new _.Oc;_.m=_.K.prototype;_.m.get=function(a){var b=Uc(this);a+="";b=Nb(b,a);if(_.p(b)){if(b){a=b.ub;b=b.Kc;var c="get"+_.Tc(a);return b[c]?b[c]():b.get(a)}return this[a]}};_.m.set=function(a,b){var c=Uc(this);a+="";var d=Nb(c,a);if(d)if(a=d.ub,d=d.Kc,c="set"+_.Tc(a),d[c])d[c](b);else d.set(a,b);else this[a]=b,c[a]=null,Rc(this,a)};_.m.notify=function(a){var b=Uc(this);a+="";(b=Nb(b,a))?b.Kc.notify(b.ub):Rc(this,a)};
_.m.setValues=function(a){for(var b in a){var c=a[b],d="set"+_.Tc(b);if(this[d])this[d](c);else this.set(b,c)}};_.m.setOptions=_.K.prototype.setValues;_.m.changed=_.k();var Sc={};_.K.prototype.bindTo=function(a,b,c,d){a+="";c=(c||a)+"";this.unbind(a);var e={Kc:this,ub:a},f={Kc:b,ub:c,Tg:e};Uc(this)[a]=f;Qc(b,c)[_.Pc(e)]=e;d||Rc(this,a)};_.K.prototype.unbind=function(a){var b=Uc(this),c=b[a];c&&(c.Tg&&delete Qc(c.Kc,c.ub)[_.Pc(c.Tg)],this[a]=this.get(a),b[a]=null)};
_.K.prototype.unbindAll=function(){var a=(0,_.t)(this.unbind,this),b=Uc(this),c;for(c in b)a(c)};_.K.prototype.addListener=function(a,b){return _.G.addListener(this,a,b)};_.v(_.Zc,_.K);_.m=_.Zc.prototype;_.m.getAt=function(a){return this.b[a]};_.m.indexOf=function(a){for(var b=0,c=this.b.length;b<c;++b)if(a===this.b[b])return b;return-1};_.m.forEach=function(a){for(var b=0,c=this.b.length;b<c;++b)a(this.b[b],b)};_.m.setAt=function(a,b){var c=this.b[a],d=this.b.length;if(a<d)this.b[a]=b,_.G.trigger(this,"set_at",a,c),this.l&&this.l(a,c);else{for(c=d;c<a;++c)this.insertAt(c,void 0);this.insertAt(a,b)}};
_.m.insertAt=function(a,b){this.b.splice(a,0,b);Yc(this);_.G.trigger(this,"insert_at",a);this.f&&this.f(a)};_.m.removeAt=function(a){var b=this.b[a];this.b.splice(a,1);Yc(this);_.G.trigger(this,"remove_at",a,b);this.j&&this.j(a,b);return b};_.m.push=function(a){this.insertAt(this.b.length,a);return this.b.length};_.m.pop=function(){return this.removeAt(this.b.length-1)};_.m.getArray=_.pa("b");_.m.clear=function(){for(;this.get("length");)this.pop()};_.Xc(_.Zc.prototype,{length:null});_.$c.prototype.remove=function(a){var b=this.f,c=this.j(a);b[c]&&(delete b[c],_.G.trigger(this,"remove",a),this.onRemove&&this.onRemove(a))};_.$c.prototype.contains=function(a){return!!this.f[this.j(a)]};_.$c.prototype.forEach=function(a){var b=this.f,c;for(c in b)a.call(this,b[c])};_.bd.prototype.nb=_.sa(1);_.bd.prototype.forEach=function(a,b){_.x(this.b,function(c,d){a.call(b,c,d)})};var Zh=_.Sb({zoom:_.$b(Oh),heading:Oh,pitch:Oh});_.v(_.dd,_.K);ed.prototype.addListener=function(a,b,c){c=c?{Ug:!1}:null;var d=!this.M.length;var e=this.M;var f=Va(e,hd(a,b));(e=0>f?null:_.Fa(e)?e.charAt(f):e[f])?e.once=e.once&&c:this.M.push({Ic:a,context:b||null,once:c});d&&this.f();return a};ed.prototype.addListenerOnce=function(a,b){this.addListener(a,b,!0);return a};ed.prototype.removeListener=function(a,b){if(this.M.length){var c=this.M;a=Va(c,hd(a,b));0<=a&&_.Wa(c,a);this.M.length||this.b()}};var fd=_.ob;_.m=_.id.prototype;_.m.ud=_.k();_.m.sd=_.k();_.m.addListener=function(a,b){return this.M.addListener(a,b)};_.m.addListenerOnce=function(a,b){return this.M.addListenerOnce(a,b)};_.m.removeListener=function(a,b){return this.M.removeListener(a,b)};_.m.notify=function(a){_.gd(this.M,function(a){a(this.get())},this,a)};_.v(_.jd,_.id);_.jd.prototype.set=function(a){this.m&&this.get()===a||(this.ui(a),this.notify())};_.v(kd,_.jd);kd.prototype.get=_.pa("b");kd.prototype.ui=_.oa("b");_.v(md,_.K);_.$h=_.vd("d",void 0);_.ai=_.vd("f",void 0);_.S=_.xd();_.bi=_.wd("i",void 0);_.ci=new td("i",3,void 0,void 0);_.di=new td("j",3,"",void 0);_.ei=_.vd("u",void 0);_.Rf=_.wd("u",void 0);_.fi=new td("u",3,void 0,void 0);_.gi=_.yd();_.T=_.zd();_.U=_.Ad();_.hi=new td("e",3,void 0,void 0);_.V=_.vd("s",void 0);_.ii=_.wd("s",void 0);_.ji=new td("s",3,void 0,void 0);_.ki=_.vd("B",void 0);_.li=_.vd("x",void 0);_.mi=_.wd("x",void 0);_.ni=new td("x",3,void 0,void 0);_.oi=new td("y",3,void 0,void 0);var qi;_.pi=new Cd;qi=/'/g;Cd.prototype.b=function(a,b){var c=[];Ed(a,b,c);return c.join("&").replace(qi,"%27")};_.M.prototype.U=function(a){return _.pd(this.data,a?(a&&a).data:null)};_.M.prototype.Gi=_.sa(2);_.v(Nd,_.K);Nd.prototype.set=function(a,b){if(null!=b&&!(b&&_.y(b.maxZoom)&&b.tileSize&&b.tileSize.width&&b.tileSize.height&&b.getTile&&b.getTile.apply))throw Error("Valore di implementazione di google.maps.MapType mancante");return _.K.prototype.set.apply(this,arguments)};_.v(_.Od,_.K);_.v(_.Qd,Pd);_.Qd.prototype.getType=_.qa("Point");_.Qd.prototype.forEachLatLng=function(a){a(this.b)};_.Qd.prototype.get=_.pa("b");var je=_.Wb(Rd);Xd.f=void 0;Xd.b=function(){return Xd.f?Xd.f:Xd.f=new Xd};Xd.prototype.oa=function(a,b){if(!this.b[a]){var c=this,d=c.m;Yd(c.j,function(e){for(var f=e.b[a]||[],g=e.l[a]||[],h=d[a]=_.Sd(f.length,function(){delete d[a];b(e.f);for(var f=c.f[a],h=f?f.length:0,l=0;l<h;++l)f[l](c.b[a]);delete c.f[a];l=0;for(f=g.length;l<f;++l)h=g[l],d[h]&&d[h]()}),l=0,n=f.length;l<n;++l)c.b[f[l]]&&h()})}};_.m=_.fe.prototype;_.m.getId=_.pa("j");_.m.getGeometry=_.pa("b");_.m.setGeometry=function(a){var b=this.b;try{this.b=a?Rd(a):null}catch(c){_.Rb(c);return}_.G.trigger(this,"setgeometry",{feature:this,newGeometry:this.b,oldGeometry:b})};_.m.getProperty=function(a){return Nb(this.f,a)};_.m.setProperty=function(a,b){if(void 0===b)this.removeProperty(a);else{var c=this.getProperty(a);this.f[a]=b;_.G.trigger(this,"setproperty",{feature:this,name:a,newValue:b,oldValue:c})}};
_.m.removeProperty=function(a){var b=this.getProperty(a);delete this.f[a];_.G.trigger(this,"removeproperty",{feature:this,name:a,oldValue:b})};_.m.forEachProperty=function(a){for(var b in this.f)a(this.getProperty(b),b)};_.m.toGeoJson=function(a){var b=this;_.Q("data",function(c){c.f(b,a)})};var ri={lp:"Point",hp:"LineString",POLYGON:"Polygon"};var si={CIRCLE:0,FORWARD_CLOSED_ARROW:1,FORWARD_OPEN_ARROW:2,BACKWARD_CLOSED_ARROW:3,BACKWARD_OPEN_ARROW:4};_.m=ge.prototype;_.m.contains=function(a){return this.b.hasOwnProperty(_.Pc(a))};_.m.getFeatureById=function(a){return Nb(this.f,a)};
_.m.add=function(a){a=a||{};a=a instanceof _.fe?a:new _.fe(a);if(!this.contains(a)){var b=a.getId();if(b){var c=this.getFeatureById(b);c&&this.remove(c)}c=_.Pc(a);this.b[c]=a;b&&(this.f[b]=a);var d=_.G.forward(a,"setgeometry",this),e=_.G.forward(a,"setproperty",this),f=_.G.forward(a,"removeproperty",this);this.j[c]=function(){_.G.removeListener(d);_.G.removeListener(e);_.G.removeListener(f)};_.G.trigger(this,"addfeature",{feature:a})}return a};
_.m.remove=function(a){var b=_.Pc(a),c=a.getId();if(this.b[b]){delete this.b[b];c&&delete this.f[c];if(c=this.j[b])delete this.j[b],c();_.G.trigger(this,"removefeature",{feature:a})}};_.m.forEach=function(a){for(var b in this.b)a(this.b[b])};_.we="click dblclick mousedown mousemove mouseout mouseover mouseup rightclick".split(" ");he.prototype.get=function(a){return this.b[a]};he.prototype.set=function(a,b){var c=this.b;c[a]||(c[a]={});_.zb(c[a],b);_.G.trigger(this,"changed",a)};he.prototype.reset=function(a){delete this.b[a];_.G.trigger(this,"changed",a)};he.prototype.forEach=function(a){_.yb(this.b,a)};_.v(ie,_.K);ie.prototype.overrideStyle=function(a,b){this.b.set(_.Pc(a),b)};ie.prototype.revertStyle=function(a){a?this.b.reset(_.Pc(a)):this.b.forEach((0,_.t)(this.b.reset,this.b))};_.v(_.ke,Pd);_.m=_.ke.prototype;_.m.getType=_.qa("GeometryCollection");_.m.getLength=function(){return this.b.length};_.m.getAt=function(a){return this.b[a]};_.m.getArray=function(){return this.b.slice()};_.m.forEachLatLng=function(a){this.b.forEach(function(b){b.forEachLatLng(a)})};_.v(_.me,Pd);_.m=_.me.prototype;_.m.getType=_.qa("LineString");_.m.getLength=function(){return this.b.length};_.m.getAt=function(a){return this.b[a]};_.m.getArray=function(){return this.b.slice()};_.m.forEachLatLng=function(a){this.b.forEach(a)};var oe=_.Wb(_.Ub(_.me,"google.maps.Data.LineString",!0));_.v(_.ne,Pd);_.m=_.ne.prototype;_.m.getType=_.qa("LinearRing");_.m.getLength=function(){return this.b.length};_.m.getAt=function(a){return this.b[a]};_.m.getArray=function(){return this.b.slice()};_.m.forEachLatLng=function(a){this.b.forEach(a)};var re=_.Wb(_.Ub(_.ne,"google.maps.Data.LinearRing",!0));_.v(_.pe,Pd);_.m=_.pe.prototype;_.m.getType=_.qa("MultiLineString");_.m.getLength=function(){return this.b.length};_.m.getAt=function(a){return this.b[a]};_.m.getArray=function(){return this.b.slice()};_.m.forEachLatLng=function(a){this.b.forEach(function(b){b.forEachLatLng(a)})};_.v(_.qe,Pd);_.m=_.qe.prototype;_.m.getType=_.qa("MultiPoint");_.m.getLength=function(){return this.b.length};_.m.getAt=function(a){return this.b[a]};_.m.getArray=function(){return this.b.slice()};_.m.forEachLatLng=function(a){this.b.forEach(a)};_.v(_.se,Pd);_.m=_.se.prototype;_.m.getType=_.qa("Polygon");_.m.getLength=function(){return this.b.length};_.m.getAt=function(a){return this.b[a]};_.m.getArray=function(){return this.b.slice()};_.m.forEachLatLng=function(a){this.b.forEach(function(b){b.forEachLatLng(a)})};var te=_.Wb(_.Ub(_.se,"google.maps.Data.Polygon",!0));_.v(_.ue,Pd);_.m=_.ue.prototype;_.m.getType=_.qa("MultiPolygon");_.m.getLength=function(){return this.b.length};_.m.getAt=function(a){return this.b[a]};_.m.getArray=function(){return this.b.slice()};_.m.forEachLatLng=function(a){this.b.forEach(function(b){b.forEachLatLng(a)})};_.ti=_.$b(_.Ub(_.Od,"Map"));_.v(xe,_.K);_.m=xe.prototype;_.m.contains=function(a){return this.b.contains(a)};_.m.getFeatureById=function(a){return this.b.getFeatureById(a)};_.m.add=function(a){return this.b.add(a)};_.m.remove=function(a){this.b.remove(a)};_.m.forEach=function(a){this.b.forEach(a)};_.m.addGeoJson=function(a,b){return _.ve(this.b,a,b)};_.m.loadGeoJson=function(a,b,c){var d=this.b;_.Q("data",function(e){e.Dl(d,a,b,c)})};_.m.toGeoJson=function(a){var b=this.b;_.Q("data",function(c){c.zl(b,a)})};
_.m.overrideStyle=function(a,b){this.f.overrideStyle(a,b)};_.m.revertStyle=function(a){this.f.revertStyle(a)};_.m.controls_changed=function(){this.get("controls")&&ye(this)};_.m.drawingMode_changed=function(){this.get("drawingMode")&&ye(this)};_.Xc(xe.prototype,{map:_.ti,style:_.mb,controls:_.$b(_.Wb(_.Vb(ri))),controlPosition:_.$b(_.Vb(_.Hf)),drawingMode:_.$b(_.Vb(ri))});_.ui={METRIC:0,IMPERIAL:1};_.vi={DRIVING:"DRIVING",WALKING:"WALKING",BICYCLING:"BICYCLING",TRANSIT:"TRANSIT"};_.wi={BEST_GUESS:"bestguess",OPTIMISTIC:"optimistic",PESSIMISTIC:"pessimistic"};_.xi={BUS:"BUS",RAIL:"RAIL",SUBWAY:"SUBWAY",TRAIN:"TRAIN",TRAM:"TRAM"};_.yi={LESS_WALKING:"LESS_WALKING",FEWER_TRANSFERS:"FEWER_TRANSFERS"};var zi=_.Sb({routes:_.Wb(_.Xb(_.Ib))},!0);var $d={main:[],common:["main"],util:["common"],adsense:["main"],controls:["util"],data:["util"],directions:["util","geometry"],distance_matrix:["util"],drawing:["main"],drawing_impl:["controls"],elevation:["util","geometry"],geocoder:["util"],geojson:["main"],imagery_viewer:["main"],geometry:["main"],infowindow:["util"],kml:["onion","util","map"],layers:["map"],map:["common"],marker:["util"],maxzoom:["util"],onion:["util","map"],overlay:["common"],panoramio:["main"],places:["main"],places_impl:["controls"],
poly:["util","map","geometry"],search:["main"],search_impl:["onion"],stats:["util"],streetview:["util","geometry"],usage:["util"],visualization:["main"],visualization_impl:["onion"],weather:["main"],zombie:["main"]};var Ai=_.jb.google.maps,Bi=Xd.b(),Ci=(0,_.t)(Bi.oa,Bi);Ai.__gjsload__=Ci;_.yb(Ai.modules,Ci);delete Ai.modules;var Di=_.Sb({source:_.Ph,webUrl:_.Sh,iosDeepLinkId:_.Sh});var Ei=_.Zb(_.Sb({placeId:_.Sh,query:_.Sh,location:_.uc}),function(a){if(a.placeId&&a.query)throw _.Qb("cannot set both placeId and query");if(!a.placeId&&!a.query)throw _.Qb("must set one of placeId or query");return a});_.v(Fe,_.K);
_.Xc(Fe.prototype,{position:_.$b(_.uc),title:_.Sh,icon:_.$b(_.Yb([_.Ph,{ng:ac("url"),then:_.Sb({url:_.Ph,scaledSize:_.$b(dc),size:_.$b(dc),origin:_.$b(cc),anchor:_.$b(cc),labelOrigin:_.$b(cc),path:_.Xb(function(a){return null==a})},!0)},{ng:ac("path"),then:_.Sb({path:_.Yb([_.Ph,_.Vb(si)]),anchor:_.$b(cc),labelOrigin:_.$b(cc),fillColor:_.Sh,fillOpacity:_.Rh,rotation:_.Rh,scale:_.Rh,strokeColor:_.Sh,strokeOpacity:_.Rh,strokeWeight:_.Rh,url:_.Xb(function(a){return null==a})},!0)}])),label:_.$b(_.Yb([_.Ph,{ng:ac("text"),
then:_.Sb({text:_.Ph,fontSize:_.Sh,fontWeight:_.Sh,fontFamily:_.Sh},!0)}])),shadow:_.mb,shape:_.mb,cursor:_.Sh,clickable:_.Th,animation:_.mb,draggable:_.Th,visible:_.Th,flat:_.mb,zIndex:_.Rh,opacity:_.Rh,place:_.$b(Ei),attribution:_.$b(Di)});var Fi=_.$b(_.Ub(_.dd,"StreetViewPanorama"));_.v(_.Ge,Fe);_.Ge.prototype.map_changed=function(){this.__gm.set&&this.__gm.set.remove(this);var a=this.get("map");this.__gm.set=a&&a.__gm.wb;this.__gm.set&&_.ad(this.__gm.set,this)};_.Ge.MAX_ZINDEX=1E6;_.Xc(_.Ge.prototype,{map:_.Yb([_.ti,Fi])});_.v(He,_.K);_.m=He.prototype;_.m.internalAnchor_changed=function(){var a=this.get("internalAnchor");Ie(this,"attribution",a);Ie(this,"place",a);Ie(this,"internalAnchorMap",a,"map");Ie(this,"internalAnchorPoint",a,"anchorPoint");a instanceof _.Ge?Ie(this,"internalAnchorPosition",a,"internalPosition"):Ie(this,"internalAnchorPosition",a,"position")};
_.m.internalAnchorPoint_changed=He.prototype.internalPixelOffset_changed=function(){var a=this.get("internalAnchorPoint")||_.Uh,b=this.get("internalPixelOffset")||_.Vh;this.set("pixelOffset",new _.D(b.width+Math.round(a.x),b.height+Math.round(a.y)))};_.m.internalAnchorPosition_changed=function(){var a=this.get("internalAnchorPosition");a&&this.set("position",a)};_.m.internalAnchorMap_changed=function(){this.get("internalAnchor")&&this.b.set("map",this.get("internalAnchorMap"))};
_.m.fn=function(){var a=this.get("internalAnchor");!this.b.get("map")&&a&&a.get("map")&&this.set("internalAnchor",null)};_.m.internalContent_changed=function(){this.set("content",ze(this.get("internalContent")))};_.m.trigger=function(a){_.G.trigger(this.b,a)};_.m.close=function(){this.b.set("map",null)};_.v(_.Je,_.K);_.Xc(_.Je.prototype,{content:_.Yb([_.Sh,_.Xb(Tb)]),position:_.$b(_.uc),size:_.$b(dc),map:_.Yb([_.ti,Fi]),anchor:_.$b(_.Ub(_.K,"MVCObject")),zIndex:_.Rh});_.Je.prototype.open=function(a,b){this.set("anchor",b);b?!this.get("map")&&a&&this.set("map",a):this.set("map",a)};_.Je.prototype.close=function(){this.set("map",null)};_.Ke=[];_.v(Me,_.K);Me.prototype.changed=function(a){if("map"==a||"panel"==a){var b=this;_.Q("directions",function(c){c.fm(b,a)})}"panel"==a&&_.Le(this.getPanel())};_.Xc(Me.prototype,{directions:zi,map:_.ti,panel:_.$b(_.Xb(Tb)),routeIndex:_.Rh});Ne.prototype.route=function(a,b){_.Q("directions",function(c){c.ti(a,b,!0)})};Oe.prototype.getDistanceMatrix=function(a,b){_.Q("distance_matrix",function(c){c.b(a,b)})};Pe.prototype.getElevationAlongPath=function(a,b){_.Q("elevation",function(c){c.getElevationAlongPath(a,b)})};Pe.prototype.getElevationForLocations=function(a,b){_.Q("elevation",function(c){c.getElevationForLocations(a,b)})};_.Gi=_.Ub(_.vc,"LatLngBounds");_.Qe.prototype.geocode=function(a,b){_.Q("geocoder",function(c){c.geocode(a,b)})};_.v(_.Re,_.K);_.Re.prototype.map_changed=function(){var a=this;_.Q("kml",function(b){b.b(a)})};_.Xc(_.Re.prototype,{map:_.ti,url:null,bounds:null,opacity:_.Rh});_.Ii={UNKNOWN:"UNKNOWN",OK:_.ia,INVALID_REQUEST:_.ba,DOCUMENT_NOT_FOUND:"DOCUMENT_NOT_FOUND",FETCH_ERROR:"FETCH_ERROR",INVALID_DOCUMENT:"INVALID_DOCUMENT",DOCUMENT_TOO_LARGE:"DOCUMENT_TOO_LARGE",LIMITS_EXCEEDED:"LIMITS_EXECEEDED",TIMED_OUT:"TIMED_OUT"};_.v(Se,_.K);_.m=Se.prototype;_.m.Gd=function(){var a=this;_.Q("kml",function(b){b.f(a)})};_.m.url_changed=Se.prototype.Gd;_.m.driveFileId_changed=Se.prototype.Gd;_.m.map_changed=Se.prototype.Gd;_.m.zIndex_changed=Se.prototype.Gd;_.Xc(Se.prototype,{map:_.ti,defaultViewport:null,metadata:null,status:null,url:_.Sh,screenOverlays:_.Th,zIndex:_.Rh});_.v(_.Te,_.K);_.Xc(_.Te.prototype,{map:_.ti});_.v(Ue,_.K);_.Xc(Ue.prototype,{map:_.ti});_.v(Ve,_.K);_.Xc(Ve.prototype,{map:_.ti});_.Xe.prototype.Xd=!0;_.Xe.prototype.Hb=_.sa(4);_.Xe.prototype.Jh=!0;_.Xe.prototype.Ud=_.sa(6);_.We={};_.Ye("about:blank");_.$e.prototype.Jh=!0;_.$e.prototype.Ud=_.sa(5);_.$e.prototype.Xd=!0;_.$e.prototype.Hb=_.sa(3);_.Ze={};_.af("<!DOCTYPE html>",0);_.af("",0);_.af("<br>",0);_.og="StopIteration"in _.jb?_.jb.StopIteration:{message:"StopIteration",stack:""};_.df.prototype.next=function(){throw _.og;};_.df.prototype.Ue=function(){return this};_.v(ef,_.df);ef.prototype.setPosition=function(a,b,c){if(this.node=a)this.f=_.Ga(b)?b:1!=this.node.nodeType?0:this.b?-1:1;_.Ga(c)&&(this.depth=c)};
ef.prototype.next=function(){if(this.j){if(!this.node||this.l&&0==this.depth)throw _.og;var a=this.node;var b=this.b?-1:1;if(this.f==b){var c=this.b?a.lastChild:a.firstChild;c?this.setPosition(c):this.setPosition(a,-1*b)}else(c=this.b?a.previousSibling:a.nextSibling)?this.setPosition(c):this.setPosition(a.parentNode,-1*b);this.depth+=this.f*(this.b?-1:1)}else this.j=!0;a=this.node;if(!this.node)throw _.og;return a};ef.prototype.U=function(a){return a.node==this.node&&(!this.node||a.f==this.f)};
ef.prototype.splice=function(a){var b=this.node,c=this.b?1:-1;this.f==c&&(this.f=-1*c,this.depth+=this.f*(this.b?-1:1));this.b=!this.b;ef.prototype.next.call(this);this.b=!this.b;c=_.La(arguments[0])?arguments[0]:arguments;for(var d=c.length-1;0<=d;d--)_.bf(c[d],b);_.cf(b)};_.v(ff,ef);ff.prototype.next=function(){do ff.vb.next.call(this);while(-1==this.f);return this.node};var Ji;_.v(gf,_.M);var Ki;_.v(hf,_.M);var Li;_.v(jf,_.M);_.v(lf,_.M);_.v(_.mf,_.M);_.v(nf,_.M);_.v(of,_.M);_.v(pf,_.M);_.pg={};var Af;_.Cf.prototype.U=function(a){return this==a||a instanceof _.Cf&&this.size.U(a.size)&&this.heading==a.heading&&this.b==a.b};_.Ni=new _.Cf(new _.ec(256,256),0,0);_.Df.prototype.fromLatLngToPoint=function(a,b){b=b||new _.z(0,0);var c=this.b;b.x=c.x+a.lng()*this.j;a=_.Bb(Math.sin(_.vb(a.lat())),-(1-1E-15),1-1E-15);b.y=c.y+.5*Math.log((1+a)/(1-a))*-this.l;return b};_.Df.prototype.fromPointToLatLng=function(a,b){var c=this.b;return new _.F(_.wb(2*Math.atan(Math.exp((a.y-c.y)/-this.l))-Math.PI/2),(a.x-c.x)/this.j,b)};_.Gf={japan_prequake:20,japan_postquake2010:24};_.Oi={NEAREST:"nearest",BEST:"best"};_.Xi={DEFAULT:"default",OUTDOOR:"outdoor"};_.v(If,_.dd);If.prototype.visible_changed=function(){var a=this;!a.m&&a.getVisible()&&(a.m=!0,_.Q("streetview",function(b){if(a.f)var c=a.f;b.wn(a,c)}))};_.Xc(If.prototype,{visible:_.Th,pano:_.Sh,position:_.$b(_.uc),pov:_.$b(Zh),motionTracking:Qh,photographerPov:null,location:null,links:_.Wb(_.Xb(_.Ib)),status:null,zoom:_.Rh,enableCloseButton:_.Th});If.prototype.registerPanoProvider=function(a,b){this.set("panoProvider",{ji:a,options:b||{}})};_.v(Kf,md);_.Lf.prototype.addListener=function(a,b){this.M.addListener(a,b)};_.Lf.prototype.addListenerOnce=function(a,b){this.M.addListenerOnce(a,b)};_.Lf.prototype.removeListener=function(a,b){this.M.removeListener(a,b)};_.Lf.prototype.b=_.sa(7);_.v(_.Mf,_.K);_.Mf.prototype.P=function(){var a=this;a.ca||(a.ca=_.jb.setTimeout(function(){a.ca=void 0;a.ea()},a.Yk))};_.Mf.prototype.B=function(){this.ca&&_.jb.clearTimeout(this.ca);this.ca=void 0;this.ea()};var Qf;_.v(Pf,_.M);var Yi;_.v(Tf,_.M);var Zi;_.v(Uf,_.M);var $i;_.v(Vf,_.M);var aj;_.v(Wf,_.M);var bj;_.v(eg,_.M);var cj;_.v(fg,_.M);fg.prototype.getZoom=function(){return _.N(this,2)};fg.prototype.setZoom=function(a){this.data[2]=a};_.v(gg,_.Mf);var hg={roadmap:0,satellite:2,hybrid:3,terrain:4},dj={0:1,2:2,3:2,4:2};_.m=gg.prototype;_.m.uh=_.Vc("center");_.m.Gg=_.Vc("zoom");_.m.changed=function(){var a=this.uh(),b=this.Gg(),c=ig(this);if(a&&!a.U(this.D)||this.R!=b||this.ba!=c)this.j||jg(this.b),this.P(),this.R=b,this.ba=c;this.D=a};
_.m.ea=function(){var a=ig(this);if(this.j&&this.m)this.l!=a&&jg(this.b);else{var b="",c=this.uh(),d=this.Gg(),e=this.get("size");if(e){if(c&&(0,window.isFinite)(c.lat())&&(0,window.isFinite)(c.lng())&&1<d&&null!=a&&e&&e.width&&e.height&&this.f){_.Nf(this.f,e);if(c=_.Ef(this.F,c,d)){var f=new _.hc;f.I=Math.round(c.x-e.width/2);f.K=f.I+e.width;f.J=Math.round(c.y-e.height/2);f.L=f.J+e.height}else f=null;c=dj[a];if(f){this.m=!0;this.l=a;this.j&&this.b&&(b=new fc(Math.pow(2,d)),this.j.set({jb:this.b,
Ja:{min:gc(b,{Wa:f.I,Xa:f.J}),max:gc(b,{Wa:f.K,Xa:f.L})},size:{width:e.width,height:e.height}}));b=new fg;var g=new Wf(_.P(b,0));g.data[0]=f.I;g.data[1]=f.J;b.data[1]=c;b.setZoom(d);d=new eg(_.P(b,3));d.data[0]=f.K-f.I;d.data[1]=f.L-f.J;d=new Vf(_.P(b,4));d.data[0]=a;d.data[4]=_.qf(_.tf(_.R));d.data[5]=_.rf(_.tf(_.R)).toLowerCase();d.data[9]=!0;d.data[11]=!0;_.pg[13]&&(a=new Tf(_.Ld(d,7)),a.data[0]=33,a.data[1]=3,a.data[7]=1);a=this.O+(0,window.unescape)("%3F");if(!cj){d=cj={b:-1,A:[]};c=new Wf([]);
aj||(aj={b:-1,A:[,_.S,_.S]});c=_.L(c,aj);f=new eg([]);bj||(bj={b:-1,A:[]},bj.A=[,_.ei,_.ei,_.Ad(1)]);f=_.L(f,bj);g=new Vf([]);if(!$i){var h=[];$i={b:-1,A:h};h[1]=_.U;h[2]=_.T;h[3]=_.T;h[5]=_.V;h[6]=_.V;Yi||(Yi={b:-1,A:[]},Yi.A=[,_.U,_.Ad(1),_.$h,_.L(new Pf([]),Sf()),_.T,_.$h,_.$h,_.U,_.L(new Pf([]),Sf()),_.$h]);h[8]=_.Bd(Yi);var l=new Uf([]);Zi||(Zi={b:-1,A:[,_.hi,_.T]});h[9]=_.L(l,Zi);h[10]=_.T;h[11]=_.T;h[12]=_.T;h[13]=_.hi;h[100]=_.T}g=_.L(g,$i);h=new gf([]);if(!Ji){l=Ji={b:-1,A:[]};var n=new jf([]);
Li||(Li={b:-1,A:[,_.T,_.T]});n=_.L(n,Li);var q=new hf([]);Ki||(Ki={b:-1,A:[,_.T]});l.A=[,,,,,,,,,,n,,_.L(q,Ki)]}d.A=[,c,_.U,_.ei,f,g,_.L(h,Ji)]}b=_.pi.b(b.data,cj);b=this.G(a+b)}}this.b&&(_.Nf(this.b,e),lg(this,b))}}};
_.m.div_changed=function(){var a=this.get("div"),b=this.f;if(a)if(b)a.appendChild(b);else{b=this.f=window.document.createElement("div");b.style.overflow="hidden";var c=this.b=window.document.createElement("img");_.G.addDomListener(b,"contextmenu",function(a){_.Ac(a);_.Cc(a)});c.ontouchstart=c.ontouchmove=c.ontouchend=c.ontouchcancel=function(a){_.Bc(a);_.Cc(a)};_.Nf(c,_.Vh);a.appendChild(b);this.ea()}else b&&(jg(b),this.f=null)};_.v(sg,_.Od);_.m=sg.prototype;_.m.streetView_changed=function(){var a=this.get("streetView");a?a.set("standAlone",!1):this.set("streetView",this.__gm.j)};_.m.getDiv=function(){return this.__gm.S};_.m.panBy=function(a,b){var c=this.__gm;_.Q("map",function(){_.G.trigger(c,"panby",a,b)})};_.m.panTo=function(a){var b=this.__gm;a=_.uc(a);_.Q("map",function(){_.G.trigger(b,"panto",a)})};_.m.panToBounds=function(a){var b=this.__gm,c=_.yc(a);_.Q("map",function(){_.G.trigger(b,"pantolatlngbounds",c)})};
_.m.fitBounds=function(a,b){var c=this;a=_.yc(a);_.Q("map",function(d){d.fitBounds(c,a,b)})};_.Xc(sg.prototype,{bounds:null,streetView:Fi,center:_.$b(_.uc),zoom:_.Rh,mapTypeId:_.Sh,projection:null,heading:_.Rh,tilt:_.Rh,clickableIcons:Qh});tg.prototype.getMaxZoomAtLatLng=function(a,b){_.Q("maxzoom",function(c){c.getMaxZoomAtLatLng(a,b)})};_.v(ug,_.K);ug.prototype.changed=function(a){if("suppressInfoWindows"!=a&&"clickable"!=a){var b=this;_.Q("onion",function(a){a.b(b)})}};_.Xc(ug.prototype,{map:_.ti,tableId:_.Rh,query:_.$b(_.Yb([_.Ph,_.Xb(_.Ib,"not an Object")]))});_.v(_.vg,_.K);_.vg.prototype.map_changed=function(){var a=this;_.Q("overlay",function(b){b.Mk(a)})};_.Xc(_.vg.prototype,{panes:null,projection:null,map:_.Yb([_.ti,Fi])});var yg=Ag(_.Ub(_.F,"LatLng"));_.v(_.Cg,_.K);_.Cg.prototype.map_changed=_.Cg.prototype.visible_changed=function(){var a=this;_.Q("poly",function(b){b.b(a)})};_.Cg.prototype.center_changed=function(){_.G.trigger(this,"bounds_changed")};_.Cg.prototype.radius_changed=_.Cg.prototype.center_changed;_.Cg.prototype.getBounds=function(){var a=this.get("radius"),b=this.get("center");if(b&&_.y(a)){var c=this.get("map");c=c&&c.__gm.get("baseMapType");return _.Ff(b,a/_.xg(c))}return null};
_.Xc(_.Cg.prototype,{center:_.$b(_.uc),draggable:_.Th,editable:_.Th,map:_.ti,radius:_.Rh,visible:_.Th});_.v(Dg,_.K);Dg.prototype.map_changed=Dg.prototype.visible_changed=function(){var a=this;_.Q("poly",function(b){b.f(a)})};Dg.prototype.getPath=function(){return this.get("latLngs").getAt(0)};Dg.prototype.setPath=function(a){try{this.get("latLngs").setAt(0,zg(a))}catch(b){_.Rb(b)}};_.Xc(Dg.prototype,{draggable:_.Th,editable:_.Th,map:_.ti,visible:_.Th});_.v(_.Eg,Dg);_.Eg.prototype.Ra=!0;_.Eg.prototype.getPaths=function(){return this.get("latLngs")};_.Eg.prototype.setPaths=function(a){this.set("latLngs",Bg(a))};_.v(_.Fg,Dg);_.Fg.prototype.Ra=!1;_.v(_.Gg,_.K);_.Gg.prototype.map_changed=_.Gg.prototype.visible_changed=function(){var a=this;_.Q("poly",function(b){b.j(a)})};_.Xc(_.Gg.prototype,{draggable:_.Th,editable:_.Th,bounds:_.$b(_.yc),map:_.ti,visible:_.Th});_.v(Hg,_.K);Hg.prototype.map_changed=function(){var a=this;_.Q("streetview",function(b){b.Lk(a)})};_.Xc(Hg.prototype,{map:_.ti});_.Ig.prototype.getPanorama=function(a,b){var c=this.b||void 0;_.Q("streetview",function(d){_.Q("geometry",function(e){d.Kl(a,b,e.computeHeading,e.computeOffset,c)})})};_.Ig.prototype.getPanoramaByLocation=function(a,b,c){this.getPanorama({location:a,radius:b,preference:50>(b||0)?"best":"nearest"},c)};_.Ig.prototype.getPanoramaById=function(a,b){this.getPanorama({pano:a},b)};_.v(_.Jg,_.K);_.m=_.Jg.prototype;_.m.getTile=function(a,b,c){if(!a||!c)return null;var d=c.createElement("div");c={Y:a,zoom:b,$b:null};d.__gmimt=c;_.ad(this.b,d);var e=Kg(this);1!=e&&(d.style.opacity=e);if(this.f){e=this.tileSize||new _.D(256,256);var f=this.j(a,b);c.$b=this.f({T:a.x,V:a.y,$:b},e,d,f,function(){_.G.trigger(d,"load")})}return d};_.m.releaseTile=function(a){a&&this.b.contains(a)&&(this.b.remove(a),(a=a.__gmimt.$b)&&a.release())};_.m.kf=_.sa(8);
_.m.opacity_changed=function(){var a=Kg(this);this.b.forEach(function(b){return b.style.opacity=a})};_.m.Tc=!0;_.Xc(_.Jg.prototype,{opacity:_.Rh});_.v(_.Lg,_.K);_.Lg.prototype.getTile=Lh;_.Lg.prototype.tileSize=new _.D(256,256);_.Lg.prototype.Tc=!0;_.v(_.Mg,_.Lg);_.v(_.Ng,_.K);_.Xc(_.Ng.prototype,{attribution:_.$b(Di),place:_.$b(Ei)});var ej={Animation:{BOUNCE:1,DROP:2,np:3,ip:4},Circle:_.Cg,ControlPosition:_.Hf,Data:xe,GroundOverlay:_.Re,ImageMapType:_.Jg,InfoWindow:_.Je,LatLng:_.F,LatLngBounds:_.vc,MVCArray:_.Zc,MVCObject:_.K,Map:sg,MapTypeControlStyle:{DEFAULT:0,HORIZONTAL_BAR:1,DROPDOWN_MENU:2,INSET:3,INSET_LARGE:4},MapTypeId:_.Nh,MapTypeRegistry:Nd,Marker:_.Ge,MarkerImage:function(a,b,c,d,e){this.url=a;this.size=b||e;this.origin=c;this.anchor=d;this.scaledSize=e;this.labelOrigin=null},NavigationControlStyle:{DEFAULT:0,SMALL:1,
ANDROID:2,ZOOM_PAN:3,op:4,wk:5},OverlayView:_.vg,Point:_.z,Polygon:_.Eg,Polyline:_.Fg,Rectangle:_.Gg,ScaleControlStyle:{DEFAULT:0},Size:_.D,StreetViewPreference:_.Oi,StreetViewSource:_.Xi,StrokePosition:{CENTER:0,INSIDE:1,OUTSIDE:2},SymbolPath:si,ZoomControlStyle:{DEFAULT:0,SMALL:1,LARGE:2,wk:3},event:_.G};
_.zb(ej,{BicyclingLayer:_.Te,DirectionsRenderer:Me,DirectionsService:Ne,DirectionsStatus:{OK:_.ia,UNKNOWN_ERROR:_.la,OVER_QUERY_LIMIT:_.ja,REQUEST_DENIED:_.ka,INVALID_REQUEST:_.ba,ZERO_RESULTS:_.ma,MAX_WAYPOINTS_EXCEEDED:_.fa,NOT_FOUND:_.ha},DirectionsTravelMode:_.vi,DirectionsUnitSystem:_.ui,DistanceMatrixService:Oe,DistanceMatrixStatus:{OK:_.ia,INVALID_REQUEST:_.ba,OVER_QUERY_LIMIT:_.ja,REQUEST_DENIED:_.ka,UNKNOWN_ERROR:_.la,MAX_ELEMENTS_EXCEEDED:_.ea,MAX_DIMENSIONS_EXCEEDED:_.ca},DistanceMatrixElementStatus:{OK:_.ia,
NOT_FOUND:_.ha,ZERO_RESULTS:_.ma},ElevationService:Pe,ElevationStatus:{OK:_.ia,UNKNOWN_ERROR:_.la,OVER_QUERY_LIMIT:_.ja,REQUEST_DENIED:_.ka,INVALID_REQUEST:_.ba,ep:"DATA_NOT_AVAILABLE"},FusionTablesLayer:ug,Geocoder:_.Qe,GeocoderLocationType:{ROOFTOP:"ROOFTOP",RANGE_INTERPOLATED:"RANGE_INTERPOLATED",GEOMETRIC_CENTER:"GEOMETRIC_CENTER",APPROXIMATE:"APPROXIMATE"},GeocoderStatus:{OK:_.ia,UNKNOWN_ERROR:_.la,OVER_QUERY_LIMIT:_.ja,REQUEST_DENIED:_.ka,INVALID_REQUEST:_.ba,ZERO_RESULTS:_.ma,ERROR:_.aa},KmlLayer:Se,
KmlLayerStatus:_.Ii,MaxZoomService:tg,MaxZoomStatus:{OK:_.ia,ERROR:_.aa},SaveWidget:_.Ng,StreetViewCoverageLayer:Hg,StreetViewPanorama:If,StreetViewService:_.Ig,StreetViewStatus:{OK:_.ia,UNKNOWN_ERROR:_.la,ZERO_RESULTS:_.ma},StyledMapType:_.Mg,TrafficLayer:Ue,TrafficModel:_.wi,TransitLayer:Ve,TransitMode:_.xi,TransitRoutePreference:_.yi,TravelMode:_.vi,UnitSystem:_.ui});_.zb(xe,{Feature:_.fe,Geometry:Pd,GeometryCollection:_.ke,LineString:_.me,LinearRing:_.ne,MultiLineString:_.pe,MultiPoint:_.qe,MultiPolygon:_.ue,Point:_.Qd,Polygon:_.se});_.be("main",{});var Qg=/'/g,Rg;var Ae=arguments[0];
window.google.maps.Load(function(a,b){var c=window.google.maps;Vg();var d=ah(c);_.R=new of(a);_.fj=Math.random()<_.N(_.R,0,1);_.gj=Math.round(1E15*Math.random()).toString(36);_.rg=Sg();_.Hi=Tg();_.Mi=new _.Zc;_.yf=b;for(a=0;a<_.Md(_.R,8);++a)_.pg[_.Hd(_.R,8,a)]=!0;a=new _.mf(_.R.data[3]);Ee(_.O(a,0));_.yb(ej,function(a,b){c[a]=b});c.version=_.O(a,1);window.setTimeout(function(){ce(["util","stats"],function(a,b){a.f.b();a.j();d&&b.b.b({ev:"api_alreadyloaded",client:_.O(_.R,6),key:_.sf()})})},5E3);
Af=new zf;(a=_.O(_.R,11))&&ce(_.Gd(_.R,12),Ug(a),!0)});}).call(this,{});

              </script>
                         
<!-- Alert per superamento soglia -->
        <script type="text/javascript">
                                                                                                                                            
         function myfunction(){    
             
                
                var A = <%= request.getAttribute("A") %>;
                var B = <%= request.getAttribute("B") %>;
                var C = <%= request.getAttribute("C") %>;
                var D = <%= request.getAttribute("D") %>;
                var E = <%= request.getAttribute("E") %>;
                var F = <%= request.getAttribute("F") %>;
                var G = <%= request.getAttribute("G") %>;
                var H = <%= request.getAttribute("H") %>;
                var I = <%= request.getAttribute("I") %>;
                var L = <%= request.getAttribute("L") %>;
                                           
                
                var Val = [A,B,C,D,E,F,G,H,I,L];
                var Elem = ["[ SO2 ]","\n[ NO2 ]","\n[ PM ]","\n[ C6H6 ]","\n[ IPA ]","\n[ Pb ]","\n[ Ni ]","\n[ Cd ]","\n[ O3 ]","\n[ CO ]"];
                var i;
                var j = 0;
                var Ris = [""];
                 for(i in Val)
                 {
                       if(  Val[i] > 0.8)
                       {
                           Ris[j] = Elem[i];
                           j++;
                       }
                 }
                 
                 if(Ris[0] !== "")
                 {
                    alert("\n\nI seguenti hanno superato la soglia del 0,8% :\n\n" + Ris);
                 }
             }
             
    </script>
                                                                                                                                            
        <!-- CSS stile pagina 2 -->
        <link rel="stylesheet" href="css/StylePage2.css" type="text/css" />
    </head>
    <body onload="javascript: myfunction();">
        
        <br><br>
        <div class="name">
          <div>
              
              <!--Messaggio di benvenuto -->
              <div class="Posizione1">
                  <h1 align="center"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Benvenuto <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%= request.getAttribute("User") %> !</h1>
              </div>
            <div class="frame"> <h3>Sensori:</h3>
            <div id="map" style="width:85%;height:430px; border: 1px solid #323232; "></div>

              <!-- gestione Api Google Maps -->
              <script>
              function myMap() {

                var myCenter = new google.maps.LatLng(<%= request.getAttribute("lati") %>, <%= request.getAttribute("longi") %>);
               

                var mapCanvas = document.getElementById("map");
                var mapOptions = {center: myCenter, zoom: 10};
                var map = new google.maps.Map(mapCanvas, mapOptions);
                var marker1 = new google.maps.Marker({position:myCenter, label:'%', animation: google.maps.Animation.DROP});
                marker1.setMap(map);
              }
              </script>

              <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmfwdXI49McL085tF36P41hAmHlPsXslw&callback=myMap"></script>


              
              <!-- Cambio di localitÃ  -->
              <h3 style="color:white"> Localita': </h3>   <div id="Slocation" style="position:absolute; color:white; font-weight: bold; font-size:25px; top:505px; right:350px"> </div>
              

                
              
              <button class="button"  id="popup" onclick="div_show4()"> <span> Cambia Localita' </span> </button>
              <div align="center" style="position:absolute; top: 552px; right:120px">
              <form action="Controller2" method="post">
                  <button class="button" id="out"><submit id="out" name="out" tipe="hidden"><span>Esci</span></button> 
              </form>
              </div>
            </div>


<!-- Tabella dei valori -->
            <div class="Posizione"> <h3> Statistiche inquintanti sulla localita':</h3>
              <table> 
              	<tr>
                        <th> NÂ°</th> 
                        <th> Inquinante</th> 
                        <th> (%)</th>
                        <th> Max/Min</th>
              	</tr>

              	<tr>
              		<td> 1. </td>
                        <td>Biossido di Zolfo (SO<sub><small>2</small></sub>)</td>
                        <td><%=request.getAttribute("A") %>%</td>
                        <td><%= request.getAttribute("A1") %>/<%=request.getAttribute("A2") %></td>
              	</tr>
                  
              	<tr>
                  	<td> 2. </td>
                        <td>Biossido di Azoto (NO<sub><small>2</small></sub>)</td>
                        <td><%= request.getAttribute("B") %>%</td>
                        <td><%= request.getAttribute("B1") %>/<%=request.getAttribute("B2") %></td>
                  </tr>
                  
              	<tr>
                  	<td> 3. </td>
                        <td> Particolato Atmosferico (PM) </td>
                        <td><%= request.getAttribute("C") %>%</td>
                        <td><%= request.getAttribute("C1") %>/<%=request.getAttribute("C2") %></td>
                  </tr>
                  
              	<tr>
                  	<td> 4. </td>
                        <td> Benzene (C<sub><small>6</small></sub>H<sub><small>6</small></sub>)</td>
                        <td><%= request.getAttribute("D") %>%</td>
                        <td><%= request.getAttribute("D1") %>/<%=request.getAttribute("D2") %></td>
                  </tr>
                  
              	<tr>
                  	<td> 5. </td>
                        <td>Idrocarburi Polici Aromatici (IPA)</td>
                        <td><%= request.getAttribute("E") %>%</td>
                        <td><%= request.getAttribute("E1")%>/<%=request.getAttribute("E2") %></td>
                  </tr>
                  
              	<tr>
                  	<td> 6. </td>
                        <td> Piombo (Pb) </td>
                        <td><%= request.getAttribute("F") %>%</td>
                        <td><%= request.getAttribute("F1") %>/<%=request.getAttribute("F2") %></td>
                  </tr>
                  
              	<tr>
                  	<td> 7. </td>
                        <td> Nichel (Ni) </td>
                        <td><%= request.getAttribute("G")%>%</td>
                        <td><%= request.getAttribute("G1") %>/<%=request.getAttribute("G2") %></td>
                  </tr>
                  
              	<tr>
                  	<td> 8. </td>
                        <td> Cadmio (Cd) </td>
                        <td><%= request.getAttribute("H") %>%</td>
                        <td><%= request.getAttribute("H1") %>/<%=request.getAttribute("H2") %></td>
                  </tr>
                  
              	<tr>
                  	<td> 9. </td>
                        <td> Ozono (O<sub><small>3</small></sub>)</td>
                        <td><%= request.getAttribute("I") %>%</td>
                        <td><%= request.getAttribute("I1") %>/<%=request.getAttribute("I2") %></td>
                  </tr>
                  
              	<tr>
                  	<td> 10. </td>
                        <td>Monossido di Carbonio (CO)</td>
                        <td><%= request.getAttribute("L") %>%</td>
                        <td><%= request.getAttribute("L1") %>/<%=request.getAttribute("L2") %></td>
                  </tr>
              </table>
              <br>
              
              <!-- Grafico -->
              
              <div id="chart_div" style="width: 406px; height: 250px;"></div>

            </div>

                  
  <!-- bottoni per medie -->
      <div style="position: absolute; top: 0px; right: 180px; width: 580px">
          <br><br><br><br><br><br><br><br><br><br><br>
        <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Calcola: </h1>
        <button class="button" style="vertical-align:middle" onclick="div_show5()"> <span> Media Locale </span> </button>
        <br><br>
        <button class="button" style="vertical-align:middle" onclick="div_show6()"> <span> Media Regionale </span> </button>
        <br><br>
           <!-- Ultimo aggiornamento pagina-->
            <script language="Javascript">
             
                  today = new Date();
                  function addZero(i) 
                  {
                            if (i < 10) {
                                i = "0" + i;
                            }
                            return i;
                  }
  
                    var h = addZero(today.getHours());
                    var m = addZero(today.getMinutes());
    
                  document.write("Ultimo aggiornamento alle ore ",h,":",m);
                
            </script>
      </div>
        </div>
  </div>


  <!--PopUp 4 -->
    <div id="P4">
        <!-- Popup Div Starts Here -->
        <div id="popupContact4">
          <!-- Contact Us Form -->
          <form action="Controller2" id="form4" method="post" name="form4">
            <img id="close4" src="img/cross.png" alt="C" onclick ="div_hide4()">
            <h2>Immettere una nuova location</h2>
            <br><br>
            <img src="img/map.png" width="300" height="90" alt="M">
            <input id="location4" name="location4" placeholder="Location" type="text">
            <input id ="Slocation" name="l" value="<%= request.getAttribute("location") %>" type ="hidden">
            <input id ="Slocation" name="u" value="<%= request.getAttribute("User") %>" type ="hidden">
            <br><br><br>
            <a href="javascript:%20check_empty4()" id="submit4"> Cambia</a>
          </form>
        </div>
        <!-- Popup Div Ends Here -->
      </div>



  <!--PopUp 5 -->
        <div id="P5">
        <!-- Popup Div Starts Here -->
        <div id="popupContact5">
          <!-- Contact Us Form -->
          <form action="Controller2" id="form5" method="post" name="form5">
            <img id="close5" src="img/cross.png" alt="C" onclick ="div_hide5()">
            <h2>Inserire data di inizio e di fine</h2>
            <br>
            <img src="img/map.png" width="300" height="90" alt="W">
            <h4>Da:</h4>
            <input id="data1" name="data1" type="date">
            <h4>A:</h4>
            <input id="data2" name="data2"  type="date">
            
            <input id ="Slocation" name="l" value="<%= request.getAttribute("location") %>" type ="hidden">
            <input id ="Slocation" name="u" value="<%= request.getAttribute("User") %>" type ="hidden">
            <br><br>
            <a href="javascript:%20check_emptyDate1()" id="submit5">Calcola</a>
          </form>
        </div>
        <!-- Popup Div Ends Here -->
      </div>   
  
    <!--PopUp 6 -->
        <div id="P6">
        <!-- Popup Div Starts Here -->
        <div id="popupContact6">
          <!-- Contact Us Form -->
          <form action="Controller2" id="form6" method="post" name="form5">
            <img id="close6" src="img/cross.png" alt="C" onclick ="div_hide6()">
            <h2>Inserire data di inizio e di fine</h2>
            <br>
            <img src="img/map.png" width="300" height="90" alt="W">
            <h4>Da:</h4>
            <input id="data3" name="data3" type="date">
            <h4>A:</h4>
            <input id="data4" name="data4"  type="date">
            <input id ="Slocation" name="l" value="<%= request.getAttribute("location") %>" type ="hidden">
            <input id ="Slocation" name="u" value="<%= request.getAttribute("User") %>" type ="hidden">
            <br><br>
            <a href="javascript:%20check_emptyDate2()" id="submit6">Calcola</a>
          </form>
        </div>
        <!-- Popup Div Ends Here -->
      </div>   
               
            
      <!-- gestione Local Storage -->
        
                <script>
                    // Check browser support
                    if (typeof(Storage) !== "undefined") {
                        // Storesession 
                         localStorage.setItem("l", "<%= request.getAttribute("location") %>");
                         localStorage.setItem("u", "<%= request.getAttribute("User") %>");
                         
                        // Retrieve
                        document.getElementById("Slocation").innerHTML = localStorage.getItem("l");
                       var l = localStorage.getItem("l");
                       var u = localStorage.getItem("u");
                    } else {
                        document.getElementById("Slocation").innerHTML = "Sorry, your browser does not support Web Storage...";
                    }
                </script>
    </body>
</html>