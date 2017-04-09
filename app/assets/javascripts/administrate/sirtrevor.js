
SirTrevor.setDefaults({
  ajaxOptions: {
    headers: {
      "X-CSRF-Token": document.querySelector('meta[name=csrf-token]').getAttribute('content')
    },
    credentials: 'same-origin'
  }
});



 var editor = new SirTrevor.Editor({
    el: document.querySelector('#page_body,#course_full_description'),
    defaultType: 'Text',
    iconUrl: '/assets/sir-trevor-icons.svg'
  });

   document.body.scrollTop = document.documentElement.scrollTop = 0;
