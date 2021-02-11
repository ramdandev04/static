var widget;
var onloadCallback = () => {
    widget = grecaptcha.render('captha', {
        sitekey: '6LekPFMaAAAAABw06APLgb7AaAvbz3-ix4TTQ3XL',
        theme: 'dark'
    })
}
