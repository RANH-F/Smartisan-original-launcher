(function($) {
    'use strict';

    /**
     * Convert url parameter to object
     * @date: 2015-12
     */

    var isIphone = /iphone/i.test(navigator.userAgent.toLowerCase());
    var isAndroid = /android/i.test(navigator.userAgent.toLowerCase());
    var isWeixin = /micromessenger/i.test(navigator.userAgent.toLowerCase());
    var isMobile =
        /iphone|android|ucweb|ucbrowser|nokia|sony|ericsson|mot|samsung|sgh|lg|philips|panasonic|alcatel|lenovo|cldc|midp|wap|mobile/i
        .test(navigator.userAgent.toLowerCase()) && !/ipad/i.test(navigator.userAgent.toLowerCase());

    var parseUrlParams = function() {
        var serach = document.location.search.substr(1),
            p = serach.split('&'),
            obj = {};
        for (var i = 0; i < p.length; i++) {
            var _t = p[i].split('=');
            if (_t[1]) {
                obj[_t[0]] = _t[1];
            }
        }
        return obj;
    };

    /**
     * Compile audio template
     * @date: 2016-04
     */
    var compileAudioTemplate = function() {
        // get <audio> attrs
        var getAttr = function(content, attr) {
            var reg = new RegExp('"'+attr + '"="([^"]*)"', 'ig');
            var result = reg.exec(content);
            if(result && result.length  > 0) {
                return result[1].replace(/"/g,'');
            }
            return '';
        }

        $('audio').each(function(index, audio) {
            var strAudio = $(audio).get(0).outerHTML,
                albumUrl = getAttr(strAudio, 'albumurl');
            var wrapper = '<div class="audio-wrapper">'
                + '<div class="album">'
                    + '<a class="control stop"></a>'
                    + (albumUrl ? '<img src="' + albumUrl + '" alt="" id="album_pic"/>' : '')
                + '</div>'
                + '<div class="singer">'
                    + '<h5>' + getAttr(strAudio, 'music_name')+'</h5>'
                    + '<h6 style="line-height:16px;">'+ getAttr(strAudio, 'singer') +'</h6>'
                    + strAudio
                + '</div>'
            +'</div>';
            $(audio).get(0).outerHTML = wrapper;
        })
    };


    $(document).ready(function() {
        var $header = $('.header'),
            $download = $('.download-wrapper'),
            urlParams = parseUrlParams();

        // Display the download bar only under android browser
//        if (isAndroid) {
//            $download.show();
//        }

        // Hide download bar
        $('.link-close').click(function() {
            $download.hide();
        });

//        mWebViewImageListener.documentReady();

        // Display site information
        if(urlParams && urlParams['site_id']) {
            var siteIconUrl = 'http://image.smartisanos.cn/rss/site_pic/'+ urlParams['site_id'] + '.png';
            $header.find('.logo').attr('src', siteIconUrl);
            $header.show();
        }

        // Date down
        if(urlParams && urlParams['date_version'] && $('.header .date').text() && $('.content').has('.date').length === 0) {
            if($('.author').length === 0) {
                $('h1').after('<h6 class="author"></h6>')
            }
            // have author
            if($('.author').text()) {
                $('.content .author').html('<span class="author-name">' +$('.author').text()+ '</span>' + '<span class="date">'+ $('.header .date').text() + '</span>');
            } else {
                $('.content .author').html('<span class="date">'+ $('.header .date').text() + '</span>');
            }
            $('.header .date').text('')
        }
        // Update font size
        if (urlParams && urlParams['ft_size']) {
            $('body').removeClass().addClass('screen-' + urlParams['ft_size']);
        }

        // Compile audio template
        var $audio = $('body audio');
        var $audio_wrapper = $('body .audio-wrapper');
        if($audio.length != $audio_wrapper.length && $audio.length > 0){
            compileAudioTemplate();
        }

        // player
        $(document).on('click','.audio-wrapper', function(evt) {
            var $wrapper = $(evt.currentTarget),
                $control = $wrapper.find('.control'),
                $audio = $wrapper.find('audio');
            if($control.is('.stop')) {
                $control.removeClass('stop').addClass('start');
                $audio.get(0).play();
            } else {
                $control.removeClass('start').addClass('stop');
                $audio.get(0).pause();
            }
        });

        // After playing, replace the play icon
        if($audio.children().length != 0){
            var $control = $(document).find('.audio-wrapper').find('.control');
            $audio.get(0).addEventListener('ended', function(){
                if($control.is('.start'))
                    $control.removeClass('start').addClass('stop');
            }, false);
            $audio.get(0).addEventListener('pause', function(){
                $control.removeClass('start').addClass('stop');
            }, false);
        }
        var $dom_a = $('body a');
        for(var i = 0; i < $dom_a.length; i++){
            var $dom_a_img = $dom_a.eq(i).find('img');
            if($dom_a_img.length > 0){
                var a_href = $dom_a.eq(i).attr('href');
                // Remove links to images and links that don't start with http
                if(a_href.substr(a_href.length - 3, 3) == "jpg"
                    || a_href.substr(a_href.length - 3, 3) == "png"
                    || a_href.substr(a_href.length - 4, 4) == "jpeg"
                    || a_href.substr(0, 4) != "http"){
                        $dom_a.eq(i).attr('href',null);
                    }
            }
        }

        // check the <script> tag, if src exists, and the domain name is not smartisan,
        // Determine that the js was maliciously injected and delete the tag.
        var hasRemoved = false;
        var $head_script = $('head script');
        for(var i = 0; i < $head_script.length; i++){
            var src = $head_script.eq(i).attr("src");
            if(typeof src !== typeof undefined && src !== false){
                var index_slash = src.indexOf("/");
                if(typeof index_slash != typeof undefined && index_slash > 0){
                    if(src.substr(index_slash + 2, index_slash + 16) != "static.smartisanos.cn"
                        && src.substr(0, 21) != "other_style/smartisan"){
                        $head_script.eq(i).remove();
                        hasRemoved = true;
                    }
                }
            }
        }

        var $body_script = $('body script');
        for(var i = 0; i < $body_script.length; i++){
            var src = $body_script.eq(i).attr("src");
            if(typeof src !== typeof undefined && src !== false){
                var index_slash = src.indexOf("/");
                if(typeof index_slash != typeof undefined && index_slash > 0){
                    if(src.substr(index_slash + 2, index_slash + 16) != "static.smartisanos.cn"
                        && src.substr(0, 21) != "other_style/smartisan"){
                        $body_script.eq(i).remove();
                        hasRemoved = true;
                    }
                }
            }
        }

        // At the end, the filtered html file is passed to the java side.
        var after_html = document.getElementsByTagName('html')[0].outerHTML;

        //Notify app that page load finish.
//        mWebViewImageListener.onPageLoadFinish(after_html, hasRemoved);
    });
})(Zepto);

function onLoaded() {
    var allImage = document.querySelectorAll(".rss-wrapper .content img");
    allImage = Array.prototype.slice.call(allImage, 0);
    var index = 0;
    allImage.forEach(function(image) {
        if(image.id != "album_pic"){
//            //reset img status to normal.
//            if(image.hasAttribute("esrc")){
//                console.log("reset image status");
//                var esrc = image.getAttribute("esrc");
//                image.removeAttribute("esrc");
//                image.removeAttribute("onClick");
//                image.src = esrc;
//            }
//            var imageUrl = image.src;
//            image.setAttribute("esrc", imageUrl);
//            image.removeAttribute("src");
            var onClickUrl = "javascript:onImageClick('" +index +"')";
            image.setAttribute("onclick", onClickUrl);
            image.setAttribute("index", index);
//            mWebViewImageListener.loadImage(imageUrl, index);
            index = index + 1;
        }
    });
}

function onImageClick(index){
    var allImage = document.querySelectorAll(".rss-wrapper .content img");
    allImage = Array.prototype.slice.call(allImage, 0);
    var urls = new Array();
    allImage.forEach(function(image) {
        var imgUrl = image.getAttribute("src");
        //First, the audio background of qq music is filtered out. At present, no audio of other websites is found.
        if(imgUrl.indexOf("https://imgcache.qq.com/music/") == -1){
          urls.push(imgUrl);
        }
    });
   mWebViewImageListener.onImageClick(urls,parseInt(index));
}
