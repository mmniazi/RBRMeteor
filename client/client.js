Template.body.events({
    'click #inputs-button': function () {
        $('#inputs').removeClass('hidden');
        $('#scene').css('opacity', '0.4');
    },
    'click #outputs-button': function () {
        $('#outputs').removeClass('hidden');
        $('#scene').css('opacity', '0.4');
    },
    'click #close-input-button': function () {
        $('#inputs').addClass('hidden');
        $('#scene').css('opacity', '1');
    },
    'click #close-output-button': function () {
        $('#outputs').addClass('hidden');
        $('#scene').css('opacity', '1');
    }
});
