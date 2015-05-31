$.fn.tabs = (control) ->
  # @ -> #tab
  # control -> #js-main

  element = @
  $control = $ control

  element.on 'click', 'li', ->
    tabName = $ @
      .data 'tab'

    element.trigger 'change.tabs', tabName

  element.on 'change.tabs', (e, tabName) ->
    element
      .find 'li'
      .removeClass 'active'

    element
      .find '> [data-tab=' + tabName + ']'
      .addClass 'active'

    $control
      .find '> [data-tab]'
      .removeClass 'active'

    $control
      .find '> [data-tab=' + tabName + ']'
      .addClass 'active'

  firstName = element
    .find 'li:first'
    .data 'tab'

  @.trigger 'change.tabs', firstName

$ '#js-tabs'
  .tabs '#js-main'
