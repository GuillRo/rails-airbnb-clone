 const initCalendar = () => {

  //  const bindDatePicker = function() {
  //   $(".date").datetimepicker({
  //       format:'YYYY-MM-DD',
  //     icons: {
  //       time: "fa fa-clock-o",
  //       date: "fa fa-calendar",
  //       up: "fa fa-arrow-up",
  //       down: "fa fa-arrow-down"
  //     }
  //   }).find('input:first').on("blur",function () {
  //     // check if the date is correct. We can accept dd-mm-yyyy and yyyy-mm-dd.
  //     // update the format if it's yyyy-mm-dd
  //     let date = parseDate($(this).val());

  //     if (! isValidDate(date)) {
  //       //create date based on momentjs (we have that)
  //       date = moment().format('YYYY-MM-DD');
  //     }

  //     $(this).val(date);
  //   });
  // }

  //  const isValidDate = function(value, format) {
  //   format = format || false;
  //   // lets parse the date to the best of our knowledge
  //   if (format) {
  //     value = parseDate(value);
  //   }

  //   let timestamp = Date.parse(value);

  //   return isNaN(timestamp) == false;
  //  }

  //  const parseDate = function(value) {
  //   let m = value.match(/^(\d{1,2})(\/|-)?(\d{1,2})(\/|-)?(\d{4})$/);
  //   if (m)
  //     value = m[5] + '-' + ("00" + m[3]).slice(-2) + '-' + ("00" + m[1]).slice(-2);

  //   return value;
  //  }

  //  bindDatePicker();
 };


console.log("hello from calendar.js");

export { initCalendar };
