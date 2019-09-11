		var surveyCommonUtils = {
			"setLayoutToSurvey" : function() {
				var myFullpage = new fullpage('#fullpage', {
					licenseKey : '2BD03B7C-BEE54D5A-AA0125A7-58B34D98',
					scrollOverflow : true,
					navigation: true,
					navigationPosition: 'left',
					anchors:['#slide1', '#slide2', '#slide3'],
					afterLoad : function(origin, destination, direction) {
						$(".btn_prev").bind("click", function() {
							fullpage_api.moveSlideLeft();
						});
						$(".btn_next").bind("click", function() {
							fullpage_api.moveSlideRight();
						});
						fullpage_api.setAllowScrolling(false, 'left, right');
					},
					scrollOverflowOptions : {
						click : false,
						preventDefaultException : {
							tagName : /.*/
						}
					}
				});
			},
			"setLayoutToView" : function() {
				$("html, body").css("overflow", "visible");
				$(".qest_title").css("margin-top", "0px");
				$(".qest_title, .label_txt, label, td, th").css("font-size","15px");
				$("input, textarea").attr("disabled", "disabled");
				$("input[type='text']").each(function() {//input text -> span 태그로 변경
					$(this).replaceWith("<span class='span_font15'>" + $(this).val() + '</span>');
				});
				$("textarea").each(function() {//input textarea -> span 태그로 변경
					$(this).replaceWith("<div class='span_font15 txt_area_min_60'>" + $(this).val() + '</div>');
				});
				$("html, body").css("font-size", "12px");
				$(".subQuest").css("font-size", "15px");
				$(".qest_btn_group").hide();
				$(".surveyTop").css("top", "0px");
				$("#btn_close").hide();
				$(".qest_wrap").css("border", "0px").css("min-height", "100px");
				$(".slide").css("margin-top", "-150px");
				if(this.isMobile()){
					$("#slide1").css("margin-top", "40px");	
				}else{
					$("#slide1").css("margin-top", "0px");
				}
				//$(".surveyTop").hide();
				$(".quest_end").hide();
				$(".quest_red").hide();
				$(".btn_close").hide();
				$(".subQuest").show();
				$(".subAnwer").show();
				$(".view_quest_no").show();
				$(".qest_no").hide();
				$(".qest").hide();
				$(".qest_anwer_wrap").css("margin-top", "0px");
			},
			"printSurvey" : function(printThis) {
				/* if(!this.isMobile()){
					alert("인쇄는 PC에서만 가능합니다.");
					return;
				} */
				this.setLayoutToView();
				$(".qest_wrap").css("margin-top", "150px");
				$("#survey_cover").show();
				$(".qest_wrap").eq(0).css("margin-top", "0px");
				$(".qest_title").css("border-bottom", "0px");
				window.onbeforeprint = function(ev) {
					document.body.innerHTML = $("#fullpage").html();
				};
				window.print();

			},
			"isMobile" : function(){
				var filter = "win16|win32|win64|mac";
				if(navigator.platform){
					if(0 > filter.indexOf(navigator.platform.toLowerCase())){
						return true;
					}else{
						return false;
					}
				}
			}
		};