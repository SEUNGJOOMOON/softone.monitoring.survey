
        var surveyCommonUtils = {
            "setLayoutToSurvey" : function(){
				var myFullpage = new fullpage('#fullpage', {
					licenseKey: '2BD03B7C-BEE54D5A-AA0125A7-58B34D98',
//					scrollOverflow: true,
					autoScrolling:false,
					afterLoad: function(origin, destination, direction){
						$(".btn_prev").bind("click", function(){
							fullpage_api.moveSlideLeft();
                        });
                        $(".btn_next").bind("click", function(){
							fullpage_api.moveSlideRight();
                        });
                        fullpage_api.setAllowScrolling(false, 'left, right');
                      
					},
					scrollOverflowOptions: {
						click:false,    
						preventDefaultException: {tagName: /.*/}
					} 
				});

            },
            "setLayoutToView" : function(){
                $("html, body").css("overflow", "visible");
                $("body").css("width", "950px");
                $(".qest_title").css("margin-top", "0px");
                $(".qest_title, .label_txt, label, td, th").css("font-size", "15px");
                $("input, textarea").attr("disabled", "disabled");
                $("input[type='text']").each(function(){//input text -> span 태그로 변경
                    $(this).replaceWith( '<span>' + $(this).val() + '</span>' );
                });
                $("textarea").each(function(){//input textarea -> span 태그로 변경
                    $(this).replaceWith( '<span>' + $(this).val() + '</span>' );
                });
                $(".qest_title").each(function(index){
                    $(this).text($(".section").eq(index).attr("id").replace("q", "") + "." + $(this).text());
                });
                $(".qest_btn_group").hide();
                $(".qest_no").hide();
                $(".qest").hide();
                $(".qest_anwer_wrap").css("margin-top", "0px");
            },
            "printSurvey" : function(printThis){
                this.setLayoutToView();
                window.onbeforeprint = function (ev) {
                    document.body.innerHTML = $("#pagepiling").html();
                };
 
                window.print();
                //location.reload();

            }
        };
