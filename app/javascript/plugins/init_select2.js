import 'select2';

const initSelect2 = () => {
  $('.select2').select2({ width: '100%', maximumSelectionLength: 10 });
};

export { initSelect2 };
