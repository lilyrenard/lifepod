import $ from 'jquery';
import 'select2';

export function initSelect2() {
  $('.select2').each(function() {
  var $p = $(this).parent();
  $(this).select2({
    tags: true,
    dropdownParent: $p
  });
});
}

// Requiring CSS! Path is relative to ./node_modules
import 'select2/dist/css/select2.css';

