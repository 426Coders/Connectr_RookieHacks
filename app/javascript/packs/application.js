// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("semantic-ui-sass")

scroll_bottom = function(){
    if($('#messages').length > 0){
       $('#messages').scrollTop($('#messages')[0].scrollHeight); 
    }
};

submit_message = function(){
    $('#message_body').on('keydown', function(e){
       if(e.keyCode === 13){
           $('button').click();
           e.target.value = '';
       }
    });
};

$(window).on('turbolinks:load', function () {
    $('.ui.dropdown').dropdown();
    $('.message .close').on('click', function () {
        $(this).closest('.message').transition('fade');
    });

    $("#message_form").bind("ajax:complete", function(event,xhr,status){
        $('#message_body').val('');
    });

    scroll_bottom();
    submit_message();
});

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
