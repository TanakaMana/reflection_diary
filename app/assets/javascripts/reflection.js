$(document).on('turbolinks:load', function() {
  $(function() {
    var member_num = $('.js-team_member').length;
    $('#add_item_button').on('click', function() {
      var input =
          '<div class="js-team_member" id="add_member_' + member_num + '">'
          + '<input placeholder="メモ" type="text" name="reflection[memos_attributes][' + member_num + '][memo]" id="team_members_attributes_' + member_num + '_name" required>'
          // + '<span class="member_delete" data-id="' + member_num + '">'
          // +   '削除'
          + '</span>'
          +'</div>'
      $('#team_members_box').append(input);
      member_num ++;
    });

    $('#team_members_box').on('click', '.member_delete', function() {
      var inputId = $(this).data('id');
      var defaultData = $(this).data('default');
      if (defaultData == 'default') {
        $(this).prev().prop('checked', true);
        $('#add_member_' + inputId).hide();
      }else{
        $('#add_member_' + inputId).remove();
      }
    });
  });
});
