(function(t){function e(e){for(var n,o,i=e[0],c=e[1],l=e[2],u=0,b=[];u<i.length;u++)o=i[u],Object.prototype.hasOwnProperty.call(s,o)&&s[o]&&b.push(s[o][0]),s[o]=0;for(n in c)Object.prototype.hasOwnProperty.call(c,n)&&(t[n]=c[n]);d&&d(e);while(b.length)b.shift()();return r.push.apply(r,l||[]),a()}function a(){for(var t,e=0;e<r.length;e++){for(var a=r[e],n=!0,i=1;i<a.length;i++){var c=a[i];0!==s[c]&&(n=!1)}n&&(r.splice(e--,1),t=o(o.s=a[0]))}return t}var n={},s={app:0},r=[];function o(e){if(n[e])return n[e].exports;var a=n[e]={i:e,l:!1,exports:{}};return t[e].call(a.exports,a,a.exports,o),a.l=!0,a.exports}o.m=t,o.c=n,o.d=function(t,e,a){o.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:a})},o.r=function(t){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},o.t=function(t,e){if(1&e&&(t=o(t)),8&e)return t;if(4&e&&"object"===typeof t&&t&&t.__esModule)return t;var a=Object.create(null);if(o.r(a),Object.defineProperty(a,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var n in t)o.d(a,n,function(e){return t[e]}.bind(null,n));return a},o.n=function(t){var e=t&&t.__esModule?function(){return t["default"]}:function(){return t};return o.d(e,"a",e),e},o.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},o.p="/";var i=window["webpackJsonp"]=window["webpackJsonp"]||[],c=i.push.bind(i);i.push=e,i=i.slice();for(var l=0;l<i.length;l++)e(i[l]);var d=c;r.push([0,"chunk-vendors"]),a()})({0:function(t,e,a){t.exports=a("56d7")},"034f":function(t,e,a){"use strict";var n=a("85ec"),s=a.n(n);s.a},"0ca2":function(t,e,a){"use strict";var n=a("aea4"),s=a.n(n);s.a},4678:function(t,e,a){var n={"./af":"2bfb","./af.js":"2bfb","./ar":"8e73","./ar-dz":"a356","./ar-dz.js":"a356","./ar-kw":"423e","./ar-kw.js":"423e","./ar-ly":"1cfd","./ar-ly.js":"1cfd","./ar-ma":"0a84","./ar-ma.js":"0a84","./ar-sa":"8230","./ar-sa.js":"8230","./ar-tn":"6d83","./ar-tn.js":"6d83","./ar.js":"8e73","./az":"485c","./az.js":"485c","./be":"1fc1","./be.js":"1fc1","./bg":"84aa","./bg.js":"84aa","./bm":"a7fa","./bm.js":"a7fa","./bn":"9043","./bn.js":"9043","./bo":"d26a","./bo.js":"d26a","./br":"6887","./br.js":"6887","./bs":"2554","./bs.js":"2554","./ca":"d716","./ca.js":"d716","./cs":"3c0d","./cs.js":"3c0d","./cv":"03ec","./cv.js":"03ec","./cy":"9797","./cy.js":"9797","./da":"0f14","./da.js":"0f14","./de":"b469","./de-at":"b3eb","./de-at.js":"b3eb","./de-ch":"bb71","./de-ch.js":"bb71","./de.js":"b469","./dv":"598a","./dv.js":"598a","./el":"8d47","./el.js":"8d47","./en-au":"0e6b","./en-au.js":"0e6b","./en-ca":"3886","./en-ca.js":"3886","./en-gb":"39a6","./en-gb.js":"39a6","./en-ie":"e1d3","./en-ie.js":"e1d3","./en-il":"7333","./en-il.js":"7333","./en-in":"ec2e","./en-in.js":"ec2e","./en-nz":"6f50","./en-nz.js":"6f50","./en-sg":"b7e9","./en-sg.js":"b7e9","./eo":"65db","./eo.js":"65db","./es":"898b","./es-do":"0a3c","./es-do.js":"0a3c","./es-us":"55c9","./es-us.js":"55c9","./es.js":"898b","./et":"ec18","./et.js":"ec18","./eu":"0ff2","./eu.js":"0ff2","./fa":"8df4","./fa.js":"8df4","./fi":"81e9","./fi.js":"81e9","./fil":"d69a","./fil.js":"d69a","./fo":"0721","./fo.js":"0721","./fr":"9f26","./fr-ca":"d9f8","./fr-ca.js":"d9f8","./fr-ch":"0e49","./fr-ch.js":"0e49","./fr.js":"9f26","./fy":"7118","./fy.js":"7118","./ga":"5120","./ga.js":"5120","./gd":"f6b4","./gd.js":"f6b4","./gl":"8840","./gl.js":"8840","./gom-deva":"aaf2","./gom-deva.js":"aaf2","./gom-latn":"0caa","./gom-latn.js":"0caa","./gu":"e0c5","./gu.js":"e0c5","./he":"c7aa","./he.js":"c7aa","./hi":"dc4d","./hi.js":"dc4d","./hr":"4ba9","./hr.js":"4ba9","./hu":"5b14","./hu.js":"5b14","./hy-am":"d6b6","./hy-am.js":"d6b6","./id":"5038","./id.js":"5038","./is":"0558","./is.js":"0558","./it":"6e98","./it-ch":"6f12","./it-ch.js":"6f12","./it.js":"6e98","./ja":"079e","./ja.js":"079e","./jv":"b540","./jv.js":"b540","./ka":"201b","./ka.js":"201b","./kk":"6d79","./kk.js":"6d79","./km":"e81d","./km.js":"e81d","./kn":"3e92","./kn.js":"3e92","./ko":"22f8","./ko.js":"22f8","./ku":"2421","./ku.js":"2421","./ky":"9609","./ky.js":"9609","./lb":"440c","./lb.js":"440c","./lo":"b29d","./lo.js":"b29d","./lt":"26f9","./lt.js":"26f9","./lv":"b97c","./lv.js":"b97c","./me":"293c","./me.js":"293c","./mi":"688b","./mi.js":"688b","./mk":"6909","./mk.js":"6909","./ml":"02fb","./ml.js":"02fb","./mn":"958b","./mn.js":"958b","./mr":"39bd","./mr.js":"39bd","./ms":"ebe4","./ms-my":"6403","./ms-my.js":"6403","./ms.js":"ebe4","./mt":"1b45","./mt.js":"1b45","./my":"8689","./my.js":"8689","./nb":"6ce3","./nb.js":"6ce3","./ne":"3a39","./ne.js":"3a39","./nl":"facd","./nl-be":"db29","./nl-be.js":"db29","./nl.js":"facd","./nn":"b84c","./nn.js":"b84c","./oc-lnc":"167b","./oc-lnc.js":"167b","./pa-in":"f3ff","./pa-in.js":"f3ff","./pl":"8d57","./pl.js":"8d57","./pt":"f260","./pt-br":"d2d4","./pt-br.js":"d2d4","./pt.js":"f260","./ro":"972c","./ro.js":"972c","./ru":"957c","./ru.js":"957c","./sd":"6784","./sd.js":"6784","./se":"ffff","./se.js":"ffff","./si":"eda5","./si.js":"eda5","./sk":"7be6","./sk.js":"7be6","./sl":"8155","./sl.js":"8155","./sq":"c8f3","./sq.js":"c8f3","./sr":"cf1e","./sr-cyrl":"13e9","./sr-cyrl.js":"13e9","./sr.js":"cf1e","./ss":"52bd","./ss.js":"52bd","./sv":"5fbd","./sv.js":"5fbd","./sw":"74dc","./sw.js":"74dc","./ta":"3de5","./ta.js":"3de5","./te":"5cbb","./te.js":"5cbb","./tet":"576c","./tet.js":"576c","./tg":"3b1b","./tg.js":"3b1b","./th":"10e8","./th.js":"10e8","./tl-ph":"0f38","./tl-ph.js":"0f38","./tlh":"cf75","./tlh.js":"cf75","./tr":"0e81","./tr.js":"0e81","./tzl":"cf51","./tzl.js":"cf51","./tzm":"c109","./tzm-latn":"b53d","./tzm-latn.js":"b53d","./tzm.js":"c109","./ug-cn":"6117","./ug-cn.js":"6117","./uk":"ada2","./uk.js":"ada2","./ur":"5294","./ur.js":"5294","./uz":"2e8c","./uz-latn":"010e","./uz-latn.js":"010e","./uz.js":"2e8c","./vi":"2921","./vi.js":"2921","./x-pseudo":"fd7e","./x-pseudo.js":"fd7e","./yo":"7f33","./yo.js":"7f33","./zh-cn":"5c3a","./zh-cn.js":"5c3a","./zh-hk":"49ab","./zh-hk.js":"49ab","./zh-mo":"3a6c","./zh-mo.js":"3a6c","./zh-tw":"90ea","./zh-tw.js":"90ea"};function s(t){var e=r(t);return a(e)}function r(t){if(!a.o(n,t)){var e=new Error("Cannot find module '"+t+"'");throw e.code="MODULE_NOT_FOUND",e}return n[t]}s.keys=function(){return Object.keys(n)},s.resolve=r,t.exports=s,s.id="4678"},"56d7":function(t,e,a){"use strict";a.r(e);a("e260"),a("e6cf"),a("cca6"),a("a79d");var n=a("2b0e"),s=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",[a("div",{staticClass:"header-area header-transparrent"},[a("div",{staticClass:"headder-top header-sticky"},[a("div",{staticClass:"container"},[a("div",{staticClass:"row align-items-center"},[t._m(0),a("div",{staticClass:"col-lg-9 col-md-9"},[""==t.userid?a("b-container",[a("b-row"),a("b-row",[a("b-col",{staticClass:"mt-2",attrs:{cols:"7"}},[a("b-nav",[a("b-nav-item",{attrs:{href:"/happyhouse"}},[t._v("HOME")]),a("b-nav-item",{attrs:{href:"/happyhouse/member.do/initintro"}},[t._v("ABOUT")]),a("b-nav-item",{attrs:{href:"/happyhouse/mainlist"}},[t._v("SEARCH")]),a("b-nav-item-dropdown",{attrs:{id:"board-dropdown",text:"BOARD","toggle-class":"nav-link-custom",right:""}},[a("b-dropdown-item",{attrs:{href:"/happyhouse/notice.do/mvlist"}},[t._v("NOTICE ")]),a("b-dropdown-item",{attrs:{href:"/happyhouse/index.html"}},[t._v("Q&A")])],1),a("b-nav-item",{attrs:{href:"/happyhouse/chart.html"}},[t._v("CHART")])],1)],1),a("b-col",[a("a",{staticClass:"btn",attrs:{href:"/happyhouse/member.do/initinsert"}},[a("b-button",{attrs:{variant:"danger"}},[t._v("REGISTER")])],1),a("a",{staticClass:"btn",attrs:{href:"/happyhouse/member.do/initlog"}},[a("b-button",{attrs:{variant:"outline-danger"}},[t._v("LOGIN")])],1)])],1)],1):t._e(),""!=t.userid?a("b-container",[a("b-row",[a("b-col",{staticClass:"mt-4",attrs:{cols:"7"}},[a("b-nav",[a("b-nav-item",{attrs:{href:"/happyhouse"}},[t._v("HOME")]),a("b-nav-item",{attrs:{href:"/happyhouse/member.do/initintro"}},[t._v("ABOUT")]),a("b-nav-item",{attrs:{href:"/happyhouse/mainlist"}},[t._v("SEARCH")]),a("b-nav-item-dropdown",{attrs:{id:"board-dropdown",text:"BOARD","toggle-class":"nav-link-custom",right:""}},[a("b-dropdown-item",{attrs:{href:"/happyhouse/notice.do/mvlist"}},[t._v("NOTICE ")]),a("b-dropdown-item",{attrs:{href:"/happyhouse/index.html"}},[t._v("Q&A")])],1),a("b-nav-item",{attrs:{href:"/happyhouse/chart.html"}},[t._v("CHART")])],1)],1),a("b-col",[a("p",[a("strong",[t._v(t._s(t.userid))]),t._v("님 환영합니다.")]),a("a",{staticClass:"btn",attrs:{href:"/happyhouse/interest.do/search"}},[a("img",{attrs:{src:"http://localhost:9999/happyhouse/assets/img/use/heart2.png",height:"45px"}})]),a("a",{staticClass:"btn",attrs:{href:"/happyhouse/member.do/initup"}},[a("b-button",{attrs:{variant:"danger"}},[t._v("EDIT")])],1),a("a",{staticClass:"btn",attrs:{href:"#"}},[a("b-button",{attrs:{variant:"outline-danger"},on:{click:t.logout}},[t._v("LOGOUT")])],1)])],1)],1):t._e()],1),t._m(1)])])])]),a("div",{staticClass:"card mt-1",staticStyle:{"min-height":"850px"},attrs:{id:"app"}},[a("br"),a("br"),a("router-link",{attrs:{to:"/"}}),a("router-view",{attrs:{userid:t.userid}})],1)])},r=[function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"col-lg-3 col-md-2"},[a("div",{staticClass:"logo"},[a("a",{attrs:{href:"/happyhouse"}},[a("img",{attrs:{src:"http://localhost:9999/happyhouse/assets/img/logo/logo.png",width:"150px",height:"100px"}})])])])},function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"col-12"},[a("div",{staticClass:"mobile_menu d-block d-lg-none"})])}],o=a("bc3a"),i=a.n(o),c=i.a.create({baseURL:"http://localhost:9999/happyhouse/api/chart",headers:{"Content-type":"application/json"}}),l={name:"App",data:function(){return{userid:""}},components:{},methods:{logout:function(){var t=this;c.get("/logout").then((function(){t.userid=""})).catch((function(t){console.dir(t)}))}},mounted:function(){var t=this;c.get("/logined").then((function(e){var a=e.data;null!=a&&(t.userid=a),t.$router.push("/list")})).catch((function(t){console.dir(t)}))}},d=l,u=(a("034f"),a("2877")),b=Object(u["a"])(d,s,r,!1,null,null,null),f=b.exports,p=a("8c4f"),h=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",[a("h2",{attrs:{align:"center"}},[t._v("Q&A ")]),a("div",{staticClass:"footer-form"},[a("div",{attrs:{id:"mc_embed_signup"}},[a("input",{key:t.key,staticClass:"hide-on-focus",attrs:{type:"text",placeholder:"검색어 입력",onfocus:"this.placeholder = ''",onblur:"this.placeholder  =' 검색어 입력 '"}}),a("button",{staticClass:"bt",attrs:{type:"submit",name:"submit",id:"newsletter-submit"},on:{click:t.search}},[t._v("검색 ")]),a("div",{staticClass:"mt-10 info"})]),a("b-container",{staticClass:"mt-4"},[a("table",{staticClass:"pinktable",attrs:{align:"center",width:"70%"}},[a("thead",[a("tr",[a("td",{attrs:{align:"center"}},[t._v("질문번호")]),a("td",{attrs:{align:"center"}},[t._v("질문제목")]),a("td",{attrs:{align:"center"}},[t._v("질문자아이디")]),a("td",{attrs:{align:"center"}},[t._v("질문일시")]),a("td",{attrs:{align:"center"}},[t._v("답변여부")])]),t._l(t.qnas,(function(e,n){return e.qnaTitle.includes(t.key)?a("tr",{key:n},[a("td",{attrs:{align:"center"}},[t._v(t._s(e.qnaNo))]),a("td",{attrs:{align:"center"}},[a("router-link",{attrs:{to:"/detail/"+e.qnaNo}},[t._v(t._s(e.qnaTitle))])],1),a("td",{attrs:{align:"center"}},[t._v(t._s(e.qnaUserid))]),a("td",{attrs:{align:"center"}},[t._v(t._s(e.qnaDatetime))]),void 0==e.replyUserid?a("td",{attrs:{align:"center"}},[t._v("N")]):a("td",{attrs:{align:"center"}},[t._v("Y")])]):t._e()}))],2)]),""!=t.userid?a("div",{staticClass:"mt-4",attrs:{align:"right"}},[a("router-link",{attrs:{to:"/add"}},[a("b-button",{attrs:{variant:"outline-danger"}},[t._v("새 글 작성")])],1)],1):t._e(),""==t.userid?a("div",{staticClass:"mt-4",attrs:{align:"right"}},[a("b-button",{attrs:{variant:"secondary"},on:{click:t.alert}},[t._v("새 글 작성")])],1):t._e()])],1)])},m=[],v=(a("d3b7"),a("25f0"),i.a.create({baseURL:"http://localhost:9999/happyhouse/api/qna",headers:{"Content-type":"application/json"}})),j={name:"list",props:{userid:String},data:function(){return{key:"",qnas:[]}},methods:{search:function(t){this.key=t.target.previousElementSibling.value},alert:function(t){function e(){return t.apply(this,arguments)}return e.toString=function(){return t.toString()},e}((function(){alert("로그인 회원만 질문글을 작성하실 수 있습니다.")}))},mounted:function(){var t=this;v.get("/").then((function(e){t.qnas=e.data})).catch((function(t){console.dir(t)}))}},y=j,q=(a("0ca2"),Object(u["a"])(y,h,m,!1,null,null,null)),_=q.exports,g=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",[a("h3"),a("b-container",[a("div",{attrs:{id:"question"}},[a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{attrs:{cols:"8"}},[a("b-input-group",{attrs:{prepend:"질문 번호"}},[a("b-form-input",{ref:"qna.qnaNo",staticClass:"form-control",attrs:{type:"text",id:"qna.qnaNo",value:t.qna.qnaNo,readonly:"readonly"}})],1)],1)],1),a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{staticClass:"mt-1",attrs:{cols:"8"}},[a("b-input-group",{attrs:{prepend:"ID"}},[a("b-form-input",{ref:"qna_userid",staticClass:"form-control",attrs:{type:"text",id:"qna_userid",value:t.qna.qnaUserid,readonly:"readonly"}})],1)],1)],1),a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{staticClass:"mt-1",attrs:{cols:"8"}},[a("b-input-group",{attrs:{prepend:"작성시간"}},[a("b-form-input",{ref:"qna.qnaDatetime",staticClass:"form-control",attrs:{type:"text",id:"qna.qnaDatetime",value:t.qna.qnaDatetime,readonly:"readonly"}})],1)],1)],1),a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{staticClass:"mt-1",attrs:{cols:"8"}},[a("b-input-group",{attrs:{prepend:"제목 "}},[a("b-form-input",{ref:"qna_title",staticClass:"form-control",attrs:{type:"text",id:"qna_title",readonly:"readonly"},model:{value:t.qna.qnaTitle,callback:function(e){t.$set(t.qna,"qnaTitle",e)},expression:"qna.qnaTitle"}})],1)],1)],1),a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{staticClass:"mt-1",attrs:{cols:"8"}},[a("b-textarea",{ref:"qna_content",staticClass:"form-control",attrs:{type:"text",id:"qna_contnet",rows:"5","max-rows":"8",readonly:"readonly"},model:{value:t.qna.qnaContent,callback:function(e){t.$set(t.qna,"qnaContent",e)},expression:"qna.qnaContent"}})],1)],1),t.qna.qnaUserid==t.userid?a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{staticClass:"mt-1",attrs:{cols:"2"}},[a("router-link",{attrs:{to:"/update/"+t.qna.qnaNo}},[a("b-button",{attrs:{variant:"danger"}},[t._v("수정")])],1)],1),a("b-col",{attrs:{cols:"4"}}),a("b-col",{staticClass:"mt-1",attrs:{cols:"2"}},[a("b-button",{attrs:{variant:"outline-danger"},on:{click:function(e){return t.deleteQnA(t.qna.qnaNo)}}},[t._v("삭제")])],1)],1):t._e()],1),a("br"),a("br"),a("div",{attrs:{id:"answer"}},[void 0!=t.qna.replyUserid?a("div",[a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{staticClass:"mt-1",attrs:{cols:"8"}},[a("b-input-group",{attrs:{prepend:"ID"}},[a("b-form-input",{ref:"qna_userid",staticClass:"form-control",attrs:{type:"text",id:"qna_userid",value:t.qna.replyUserid,readonly:"readonly"}})],1)],1)],1),a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{staticClass:"mt-1",attrs:{cols:"8"}},[a("b-input-group",{attrs:{prepend:"작성시간"}},[a("b-form-input",{ref:"qna_userid",staticClass:"form-control",attrs:{type:"text",id:"qna_userid",value:t.qna.replyDatetime,readonly:"readonly"}})],1)],1)],1),a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{staticClass:"mt-1",attrs:{cols:"8"}},[a("b-textarea",{ref:"qna_content",staticClass:"form-control",attrs:{type:"text",id:"qna_contnet",value:t.qna.replyContent,rows:"5","max-rows":"8",readonly:"readonly"}})],1)],1)],1):""!=t.userid?a("div",[a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{attrs:{cols:"8"}},[a("b-input-group",{attrs:{prepend:"ID"}},[a("b-form-input",{ref:"qna_userid",staticClass:"form-control",attrs:{type:"text",id:"qna_userid",value:t.replyUserid,readonly:"readonly"}})],1)],1)],1),a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{staticClass:"mt-1",attrs:{cols:"8"}},[a("b-textarea",{ref:"qna_content",staticClass:"form-control",attrs:{type:"text",id:"qna_contnet",rows:"5","max-rows":"8"},model:{value:t.replyContent,callback:function(e){t.replyContent=e},expression:"replyContent"}})],1)],1),a("b-row",[a("b-col",[a("b-button",{staticClass:"mt-1",attrs:{variant:"danger"},on:{click:t.replyWrite}},[t._v("작성")])],1)],1)],1):t._e()])])],1)},C=[],w=a("c1df"),k=a.n(w),x={name:"detail",props:{userid:String},data:function(){return{qna:{},deleteNo:"",replyUserid:"",replyContent:""}},methods:{replyWrite:function(){var t=this;this.qna.replyUserid=this.replyUserid,this.qna.replyContent=this.replyContent,this.qna.replyDatetime=k()(new Date,"YYYY-MM-DD HH:mm:ss").format(),v.put("/",this.qna).then((function(){alert("답변 작성 성공!")})).catch((function(t){console.dir(t),alert("답변 작성 중 통신 오류")})).finally((function(){t.$router.push("/")}))},deleteQnA:function(t){var e=this;console.log(t),v.delete("/"+t).then((function(t){"success"===t.data?alert("삭제 성공!"):alert("데이터베이스 오류")})).catch((function(t){alert("삭제 실패"),console.dir(t)})).finally((function(){e.$router.push("/")}))}},mounted:function(){var t=this;v.get("/"+this.$route.params.qnaNo).then((function(e){var a=e.data;t.qna=a,console.dir(a)})).catch((function(){alert("통신 에러")})),this.replyUserid=this.userid}},O=x,z=Object(u["a"])(O,g,C,!1,null,"1e1d371b",null),T=z.exports,$=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",[a("h3",[t._v("질문글 작성")]),a("br"),a("br"),a("b-container",[a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{attrs:{cols:"8"}},[a("b-input-group",{attrs:{prepend:"ID"}},[a("b-form-input",{ref:"qna_userid",staticClass:"form-control",attrs:{type:"text",id:"qna_userid",readonly:"readonly"},model:{value:t.qna_userid,callback:function(e){t.qna_userid=e},expression:"qna_userid"}})],1)],1)],1),a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{staticClass:"mt-3",attrs:{cols:"8"}},[a("b-input-group",{attrs:{prepend:"제목 "}},[a("b-form-input",{ref:"qna_title",staticClass:"form-control",attrs:{type:"text",id:"qna_title",placeholder:"제목을 입력하세요"},model:{value:t.qna_title,callback:function(e){t.qna_title=e},expression:"qna_title"}})],1)],1)],1),a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{staticClass:"mt-3",attrs:{cols:"8"}},[a("b-textarea",{ref:"qna_content",staticClass:"form-control",attrs:{type:"text",id:"qna_contnet",placeholder:"내용을 입력하세요",rows:"5","max-rows":"8"},model:{value:t.qna_content,callback:function(e){t.qna_content=e},expression:"qna_content"}})],1)],1),a("b-row",[a("b-col",{staticClass:"mt-3"},[a("b-button",{attrs:{variant:"danger"},on:{click:t.checkHandler}},[t._v("등록")])],1)],1)],1)],1)},U=[],D={name:"board-Form",props:{type:{type:String},userid:String},data:function(){return{qna_no:"",qna_datetime:"",qna_userid:"",qna_title:"",qna_content:""}},methods:{checkHandler:function(){var t=!0,e="";!this.qna_title&&(e="제목 입력해주세요",t=!1,this.$refs.qna_title.focus()),t&&!this.qna_content&&(e="내용 입력해주세요",t=!1,this.$refs.qna_content.focus()),t?this.createHandler():alert(e)},createHandler:function(){var t=this,e={};e.qnaUserid=this.qna_userid,e.qnaTitle=this.qna_title,e.qnaContent=this.qna_content,v.post("/",e).then((function(t){var e=t.data,a="등록 처리시 문제가 발생했습니다.";"success"===e&&(a="등록이 완료되었습니다."),alert(a)})).catch((function(t){console.dir(t),alert("등록 처리시 에러가 발생했습니다.")})).finally((function(){t.$router.push("/")}))}},mounted:function(){this.qna_userid=this.userid}},E=D,N=Object(u["a"])(E,$,U,!1,null,null,null),S=N.exports,H=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",[a("h3",[t._v("질문글 수정")]),a("br"),a("br"),a("b-container",[a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{attrs:{cols:"8"}},[a("b-input-group",{attrs:{prepend:"ID"}},[a("b-form-input",{ref:"qna_userid",staticClass:"form-control",attrs:{type:"text",id:"qna_userid",value:t.qna.qnaUserid,readonly:"readonly"}})],1)],1)],1),a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{staticClass:"mt-3",attrs:{cols:"8"}},[a("b-input-group",{attrs:{prepend:"제목 "}},[a("b-form-input",{ref:"qna_title",staticClass:"form-control",attrs:{type:"text",id:"qna_title",placeholder:"제목을 입력하세요"},model:{value:t.qna.qnaTitle,callback:function(e){t.$set(t.qna,"qnaTitle",e)},expression:"qna.qnaTitle"}})],1)],1)],1),a("b-row",[a("b-col",{attrs:{cols:"2"}}),a("b-col",{staticClass:"mt-3",attrs:{cols:"8"}},[a("b-textarea",{ref:"qna_content",staticClass:"form-control",attrs:{type:"text",id:"qna_contnet",placeholder:"내용을 입력하세요",rows:"5","max-rows":"8"},model:{value:t.qna.qnaContent,callback:function(e){t.$set(t.qna,"qnaContent",e)},expression:"qna.qnaContent"}})],1)],1),a("b-row",[a("b-col",{staticClass:"mt-3"},[a("b-button",{attrs:{variant:"danger"},on:{click:t.checkHandler}},[t._v("수정")])],1)],1)],1)],1)},A=[],I={name:"board-Form",props:{type:{type:String},userid:String},data:function(){return{qna:[]}},methods:{checkHandler:function(){var t=!0,e="";!this.qna.qnaTitle&&(e="제목 입력해주세요",t=!1,this.$refs.qna_title.focus()),t&&!this.qna.qnaContent&&(e="내용 입력해주세요",t=!1,this.$refs.qna_content.focus()),t?this.updateHandler():alert(e)},updateHandler:function(){var t=this;v.put("/",this.qna).then((function(e){var a=e.data,n="수정 처리시 문제가 발생했습니다.";"success"===a&&(n="수정이 완료되었습니다."),alert(n),t.$router.push("/")})).catch((function(){alert("수정 처리시 에러가 발생했습니다.")}))}},mounted:function(){var t=this;v.get("/"+this.$route.params.qnaNo).then((function(e){var a=e.data;t.qna=a,console.dir(t.qna)})).catch((function(){alert("통신 에러")})),console.log(this.userid)}},R=I,M=Object(u["a"])(R,H,A,!1,null,null,null),P=M.exports;n["default"].use(p["a"]);var L=new p["a"]({mode:"history",routes:[{path:"/",name:"index",component:_},{path:"/list",name:"list",component:_},{path:"/detail/:qnaNo",name:"detail",component:T},{path:"/add",name:"Add",component:S},{path:"/update/:qnaNo",name:"Update",component:P}]}),Q=a("5f5b");a("ab8b"),a("2dd8");n["default"].use(Q["a"]),n["default"].config.productionTip=!1,new n["default"]({render:function(t){return t(f)},router:L}).$mount("#app")},"85ec":function(t,e,a){},aea4:function(t,e,a){}});
//# sourceMappingURL=app.87df17a8.js.map