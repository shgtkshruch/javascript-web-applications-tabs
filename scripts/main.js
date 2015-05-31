(function() {
  $.fn.tabs = function(control) {
    var $control, element, firstName;
    element = this;
    $control = $(control);
    element.on('click', 'li', function() {
      var tabName;
      tabName = $(this).data('tab');
      return element.trigger('change.tabs', tabName);
    });
    element.on('change.tabs', function(e, tabName) {
      element.find('li').removeClass('active');
      element.find('> [data-tab=' + tabName + ']').addClass('active');
      $control.find('> [data-tab]').removeClass('active');
      return $control.find('> [data-tab=' + tabName + ']').addClass('active');
    });
    firstName = element.find('li:first').data('tab');
    return this.trigger('change.tabs', firstName);
  };

  $('#js-tabs').tabs('#js-main');

}).call(this);
