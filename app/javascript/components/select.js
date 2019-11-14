import $ from 'jquery';
import select2 from 'select2';
import 'select2/dist/css/select2.min.css';

const initSelect2 = () => {
  $('.multi-select').select2();
}

export { initSelect2 };
