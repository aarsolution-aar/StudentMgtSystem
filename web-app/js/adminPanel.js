var ADMIN_POPUP = {
    btnCallBack: function (dummmy) {
    },
    hideAllPopUpBtns: function () {
        jQuery.each([GLOBAL.okBtnClass, GLOBAL.cancelBtnClass], function (idx, val) {
            GLOBAL.popUpModal.find('div.modal-footer button.' + val).hide();
        });
    },
    showCustomPopUp: function (msg, callback, btns, title) {
        title = title || "<span class='glyphicon glyphicon-exclamation-sign large-glyphicon'>&nbsp;</span> Information";
        btns = btns || [GLOBAL.okBtnClass, GLOBAL.cancelBtnClass];
        var $myModal = jQuery('#myModal');
        ADMIN_POPUP.btnCallBack = callback || jQuery.noop();
        $myModal.find('div.modal-body p').html(msg);
        $myModal.find('div.modal-header .modal-title').html(title);
        jQuery.each(btns, function (idx, val) {
            $myModal.find('div.modal-footer button.' + val).show();
        });
        $myModal.modal();
    },
    showCustomAlert: function (msg, callback) {
        ADMIN_POPUP.showCustomPopUp(msg, callback, [GLOBAL.okBtnClass], "<span class='glyphicon glyphicon-warning-sign large-glyphicon'>&nbsp;</span> Alert")
    }
};


