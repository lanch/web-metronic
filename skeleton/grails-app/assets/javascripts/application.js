// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery.min
//= require bootstrap/bootstrap
//= require boostrap-switch/bootstrap-switch
//= require js.cookie.min
//= require jquery-slimscroll/jquery.slimscroll.min
//= require jquery.blockui.min
//= require app
//= require layout/layout
//= require layout/demo
//= require global/quick-sidebar
//= require global/quick-nav
//= require_self

if (typeof jQuery !== 'undefined') {
    (function($) {
        $('#spinner').ajaxStart(function() {
            $(this).fadeIn();
        }).ajaxStop(function() {
            $(this).fadeOut();
        });
    })(jQuery);
}