var OpenAppsManager = (function() {
  

  function getView(event) {
    event.preventDefault();
    $url = '/' + $openLink[0].href.split('/').pop();
    $.ajax({
      url: $url,
      dataType: 'html',
      type: 'GET',
      success: function(data){
        $appsManager.html(data)
      },
      error: function(data, err){ console.log(data, err)}
    });
  }

  var $openLink;
  var $appsManager;
  var $url;

  function init() {
    $openLink = $('.js-open-apps-manager')
    $appsManager = $('.manage-applications')
    $openLink.on('click', getView(event));
  }

  return {
    init: init
  }

})();

$(document).on('ready', OpenAppsManager.init);