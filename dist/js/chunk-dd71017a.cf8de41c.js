(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-dd71017a"],{"2eeb":function(t,e,a){"use strict";var n=a("1c8b"),r=a("5dfd").map,i=a("1ea7"),s=a("ff9c"),c=i("map"),o=s("map");n({target:"Array",proto:!0,forced:!c||!o},{map:function(t){return r(this,t,arguments.length>1?arguments[1]:void 0)}})},"3ec7":function(t,e,a){"use strict";a.d(e,"g",(function(){return r})),a.d(e,"c",(function(){return i})),a.d(e,"j",(function(){return s})),a.d(e,"i",(function(){return c})),a.d(e,"d",(function(){return o})),a.d(e,"h",(function(){return u})),a.d(e,"f",(function(){return l})),a.d(e,"k",(function(){return f})),a.d(e,"a",(function(){return d})),a.d(e,"l",(function(){return h})),a.d(e,"b",(function(){return p})),a.d(e,"e",(function(){return b}));var n=a("b32d"),r=function(){return n["a"].get("/naire",{})},i=function(t){return n["a"].post("/naire/save",t,{headers:{"Content-Type":"application/json; charset=UTF-8"}})},s=function(t){return n["a"].post("/naire/statis",t,{headers:{"Content-Type":"application/json; charset=UTF-8"}})},c=function(t){return n["a"].get("/naire/sourcedata",t)},o=function(t){return n["a"].post("/naire/crossanalysis",t,{headers:{"Content-Type":"application/json; charset=UTF-8"}})},u=function(t){return n["a"].post("/naire/questions",t,{headers:{"Content-Type":"application/json; charset=UTF-8"}})},l=function(t){return n["a"].post("/naire/detail",t,{headers:{"Content-Type":"application/json; charset=UTF-8"}})},f=function(t){return n["a"].post("/naire/submit",t,{headers:{"Content-Type":"application/json; charset=UTF-8"}})},d=function(t){return n["a"].get("/naire/changeStatus",t)},h=function(t){return n["a"].get("/naire/submitStatis",t)},p=function(t){return n["a"].post("/naire/changeTime",t)},b=function(t){return n["a"].get("/naire/del",t)}},a34f:function(t,e,a){},b4fb:function(t,e,a){"use strict";var n=a("1c8b"),r=a("efe2"),i=a("74e7"),s=a("a719"),c=a("3553"),o=a("d88d"),u=a("1bbd"),l=a("1ca1"),f=a("1ea7"),d=a("90fb"),h=a("f594"),p=d("isConcatSpreadable"),b=9007199254740991,m="Maximum allowed index exceeded",v=h>=51||!r((function(){var t=[];return t[p]=!1,t.concat()[0]!==t})),_=f("concat"),y=function(t){if(!s(t))return!1;var e=t[p];return void 0!==e?!!e:i(t)},g=!v||!_;n({target:"Array",proto:!0,forced:g},{concat:function(t){var e,a,n,r,i,s=c(this),f=l(s,0),d=0;for(e=-1,n=arguments.length;e<n;e++)if(i=-1===e?s:arguments[e],y(i)){if(r=o(i.length),d+r>b)throw TypeError(m);for(a=0;a<r;a++,d++)a in i&&u(f,d,i[a])}else{if(d>=b)throw TypeError(m);u(f,d++,i)}return f.length=d,f}})},b56b:function(t,e,a){"use strict";var n=a("a34f"),r=a.n(n);r.a},d257:function(t,e,a){"use strict";a.d(e,"a",(function(){return i})),a.d(e,"b",(function(){return s}));a("2eeb");var n=a("cf24"),r=a.n(n),i=function(t,e){e.map((function(e){t.map((function(t){return"timestamp"===t?r()(e[t]).format("YYYY-MM-DD HH:mm:ss"):e[t]}))}))},s=function(t,e){return Math.round(t*Math.pow(10,e))/Math.pow(10,e)}},e4f8:function(t,e,a){"use strict";var n=function(){var t=this,e=t.$createElement,a=t._self._c||e;return t.naire?a("div",{staticClass:"header-info"},[a("h2",{staticClass:"title"},[t._v(t._s(t.naire.title))]),a("div",[a("el-tag",{staticClass:"publish-status",attrs:{type:0===t.naire.status?"danger":"success",effect:"plain"}},[t._v(" "+t._s(0===t.naire.status?"未发布":"已发布")+" ")]),a("p",{staticClass:"extend"},[t._v(" 创建日期： "+t._s(t._f("formatTime")(t.naire.creattime))+" | 截止日期："+t._s(t._f("formatTime")(t.naire.deadline))+" ")])],1),t._t("default")],2):t._e()},r=[],i=a("1462"),s=a("bb06"),c=a("9691"),o=a("0372"),u=a("e4a1"),l=function(t){Object(s["a"])(a,t);var e=Object(c["a"])(a);function a(){return Object(i["a"])(this,a),e.apply(this,arguments)}return a}(u["c"]);o["a"]([Object(u["b"])()],l.prototype,"naire",void 0),l=o["a"]([Object(u["a"])({name:"HeaderInfo"})],l);var f=l,d=f,h=(a("f15b"),a("9ca4")),p=Object(h["a"])(d,n,r,!1,null,"38604cd8",null);e["a"]=p.exports},f15b:function(t,e,a){"use strict";var n=a("fbbc"),r=a.n(n);r.a},f2ba:function(t,e,a){"use strict";a.r(e);var n=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{directives:[{name:"loading",rawName:"v-loading.fullscreen.lock",value:t.loading,expression:"loading",modifiers:{fullscreen:!0,lock:!0}}]},[a("header-info",{attrs:{naire:t.naire}}),a("el-row",{staticClass:"cross-analysis-select",attrs:{gutter:20}},[a("el-col",{attrs:{span:12}},[a("h3",[t._v("自变量：")]),a("p",[t._v("一般为样本数据，例如性别和年龄，目前支持一项。")]),a("el-select",{staticStyle:{width:"100%"},model:{value:t.searchParams.x_id,callback:function(e){t.$set(t.searchParams,"x_id",e)},expression:"searchParams.x_id"}},t._l(t.questions,(function(t,e){return a("el-option",{key:e,attrs:{value:t.value,label:t.label}})})),1)],1),a("el-col",{attrs:{span:12}},[a("h3",[t._v("因变量：")]),a("p",[t._v("您要分析的目标题目，目前支持一项。")]),a("el-select",{staticStyle:{width:"100%"},model:{value:t.searchParams.y_id,callback:function(e){t.$set(t.searchParams,"y_id",e)},expression:"searchParams.y_id"}},t._l(t.questions,(function(t,e){return a("el-option",{key:e,attrs:{value:t.value,label:t.label}})})),1)],1)],1),a("div",{staticClass:"cross-analysis-btn"},[a("el-button",{attrs:{type:"primary",icon:"ios-shuffle"},on:{click:t.crossAnalysis}},[t._v("交叉分析")])],1),t.columns&&t.result?a("div",{staticClass:"cross-analysis-table"},[a("el-table",{staticClass:"border-table",attrs:{size:"small",stripe:!0,data:t.result}},[a("el-table-column",{attrs:{label:"X \\ Y",prop:"type","min-width":"100","max-width":"150"}}),a("el-table-column",{attrs:{label:"小计",prop:"count",width:"100"}}),t._l(t.columns,(function(t,e){return a("el-table-column",{key:e,attrs:{label:t.title,prop:t.key,width:t.width}})}))],2)],1):t._e()],1)},r=[],i=(a("b4fb"),a("fe59"),a("2eeb"),a("513c"),a("08ba"),a("e793")),s=(a("6a61"),a("cf7f")),c=a("1462"),o=a("a340"),u=a("bb06"),l=a("9691"),f=a("0372"),d=a("e4a1"),h=a("e4f8"),p=a("3ec7"),b=a("d257"),m=function(t){Object(u["a"])(a,t);var e=Object(l["a"])(a);function a(){var t;return Object(c["a"])(this,a),t=e.apply(this,arguments),t.loading=!1,t.statisData={naire:null,row:[],column:[],crossResult:[]},t.naire=null,t.questions=[],t.searchParams={x_id:"",y_id:""},t.result=null,t.columns=null,t}return Object(o["a"])(a,[{key:"formateData",value:function(){var t=this,e={};this.statisData.crossResult.forEach((function(t){e["".concat(t.y_id,"_").concat(t.x_id)]={count:t["count"],value:t["x_value"],y_id:t["y_id"],x_id:t["x_id"]}}));var a={};this.statisData.row.forEach((function(t){a[t.o_id]={id:t.o_value}}));var n=[];this.statisData.row.forEach((function(r){var i={type:a[r.o_id].id},s=0;t.statisData.column.forEach((function(t){var a=e["".concat(t.o_id,"_").concat(r.o_id)],n=a?Number(a.count):0;i["y_".concat(t.o_id)]=n,s+=n})),i.count=s,n.push(i)})),n.forEach((function(t){for(var e in t)t.hasOwnProperty(e)&&"type"!==e&&"count"!==e&&(t[e]="".concat(t[e]," (").concat(0===t[e]?0:Object(b["b"])(100*t[e]/t.count,2),"%)"))})),this.result=n}},{key:"getColumns",value:function(t){return t.map((function(t,e){return{title:t.o_value,key:"y_".concat(t.o_id),width:100}}))}},{key:"crossAnalysis",value:function(){var t=Object(s["a"])(regeneratorRuntime.mark((function t(){var e,a;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return this.loading=!0,t.next=3,p["d"](Object(i["a"])({n_id:this.$route.params.id},this.searchParams));case 3:e=t.sent,this.loading=!1,e.success?(a=e.data.column,this.statisData={crossResult:e.data.cross_result,naire:e.data.naire,row:e.data.row,column:e.data.column},this.columns=this.getColumns(a),this.formateData()):(this.$message.error(e.data),this.$router.back());case 6:case"end":return t.stop()}}),t,this)})));function e(){return t.apply(this,arguments)}return e}()},{key:"fetchQuestionData",value:function(){var t=Object(s["a"])(regeneratorRuntime.mark((function t(){var e,a,n,r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return this.loading=!0,t.next=3,p["h"]({n_id:this.$route.params.id});case 3:e=t.sent,this.loading=!1,e.success?(a=e.data,n=a.naire,r=a.questions,this.naire=n,this.questions=r):(this.$message.error(e.msg),this.$router.back());case 6:case"end":return t.stop()}}),t,this)})));function e(){return t.apply(this,arguments)}return e}()},{key:"mounted",value:function(){this.fetchQuestionData()}}]),a}(d["c"]);m=f["a"]([Object(d["a"])({components:{HeaderInfo:h["a"]}})],m);var v=m,_=v,y=(a("b56b"),a("9ca4")),g=Object(y["a"])(_,n,r,!1,null,"3f406720",null);e["default"]=g.exports},fbbc:function(t,e,a){}}]);
//# sourceMappingURL=chunk-dd71017a.cf8de41c.js.map