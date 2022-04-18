// Generan Date Picker 
$('.date_picker').daterangepicker({
    "singleDatePicker": true,
    "timePicker": true,
    "autoApply": true,
    "showDropdowns": true,
    "locale": {
        // "format": "YYYY-MM-DD",
        "format": 'YYYY-MM-DD hh:mm A'
    }
});