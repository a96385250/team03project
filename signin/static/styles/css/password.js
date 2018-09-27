/**
 * jquery.pwstrength http://matoilic.github.com/jquery.pwstrength
 *
 * @version v0.1.1
 * @author Mato Ilic <info@matoilic.ch>
 * @copyright 2013 Mato Ilic
 *
 * Dual licensed under the MIT and GPL licenses:
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.gnu.org/licenses/gpl.html
 */
;(function($) {
    $.pwstrength = function(password) {
        var score = 0, length = password.length, upperCase, lowerCase, digits, nonAlpha;
        //字串長度分數 
        if(length < 5) score += 0;
        else if(length < 8) score += 5;
        else if(length < 16) score += 10;
        else score += 15;
        //小寫字母分數
        lowerCase = password.match(/[a-z]/g);//回傳Array字串
        if(lowerCase) score += 1;
        //大寫字母分數
        upperCase = password.match(/[A-Z]/g);
        if(upperCase) score += 5;
        //同時有大小寫的分數
        if(upperCase && lowerCase) score += 2;
        
        digits = password.match(/\d/g);
        //if(digits && digits.length > 1) score += 5;
        //有至少一個數字的分數
        if (digits) {
            score += 5;
        }
         
        //底線也算特殊字元
        nonAlpha = password.match(/[\W_]/g);
        if (nonAlpha)
        {//特殊字元
            //共兩個以上
            score += (nonAlpha.length > 1) ? 15 : 10;
        }
        //同時有大小寫字母+數字+特殊字元
        if(upperCase && lowerCase && digits && nonAlpha) score += 15;

        //特殊字元已計算，所以空白不再重複計，拿掉 
        //if(password.match(/\s/)) score += 10;


        //console.log("score:" + score);
        //五個級距
        if(score < 15) return 0;
        if(score < 20) return 1;
        if(score < 35) return 2;
        if(score < 50) return 3;
        return 4;
    };
    
    function updateIndicator(event) {
        var strength = $.pwstrength($(this).val()), options = event.data, klass;
        klass = options.classes[strength];
        
        options.indicator.removeClass(options.indicator.data('pwclass'));
        options.indicator.data('pwclass', klass);
        options.indicator.addClass(klass);
        options.indicator.find(options.label).html(options.texts[strength]);
    }
    
    $.fn.pwstrength = function(options) {
        var options = $.extend({
            label: '.label',
            classes: ['pw-very-weak', 'pw-weak', 'pw-mediocre', 'pw-strong', 'pw-very-strong'],
            texts: ['very weak', 'weak', 'mediocre', 'strong', 'very strong']
        }, options || {});
        options.indicator = $('#' + this.data('indicator'));
        
        return this.keyup(options, updateIndicator);
    };
})(jQuery);