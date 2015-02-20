$(document).ready(function(), {

  $('.endorsements-link').on('click', function() {
    event.preventDefault();

    var endorsementCount = $(this).siblings('endorsement-count');

    $.post(this.href, function(response) {
      endorsementCount.text(response.new_endorsement_count);
    });
  });

});
