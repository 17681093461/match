$(document).ready(function () {
    new PageInit().init();
});


function PageInit() {
    var api = null;
    var _this = this;
    this.init = function () {
        $("[name='upload']").on('click', this.portraitUpload);
    };

    this.portraitUpload = function () {
        var model = $.scojs_modal({
                title: '头像上传',
                content: template('portraitUpload'),
                onClose: refresh
            }
        );
        model.show();
        var fileUp = new FileUpload();
        var portrait = $('#fileUpload');
        fileUp.portrait(portrait, '/upload/portrait', _this.getExtraData, $('#alert'));
        portrait.on('change', _this.readURL);
    };

    this.readURL = function () {
        var img = $('#cut-img');
        var input = $('#fileUpload');
        if (input[0].files && input[0].files[0]) {
            var reader = new FileReader();
            reader.readAsDataURL(input[0].files[0]);
            reader.onload = function (e) {
                img.removeAttr('src');
                img.attr('src', e.target.result);
                img.Jcrop({
                    setSelect: [20, 20, 200, 200],
                    handleSize: 10,
                    aspectRatio: 1,
                    onSelect: updateCords
                }, function () {
                    api = this;
                });
            };
            if (api != undefined) {
                api.destroy();
            }
        }
        function updateCords(obj) {
            $("#x").val(obj.x);
            $("#y").val(obj.y);
            $("#w").val(obj.w);
            $("#h").val(obj.h);
        }
    };

    this.getExtraData = function () {
        return {
            sw: $('.jcrop-holder').css('width'),
            sh: $('.jcrop-holder').css('height'),
            x: $('#x').val(),
            y: $('#y').val(),
            w: $('#w').val(),
            h: $('#h').val()
        }
    }
}