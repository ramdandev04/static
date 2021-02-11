
        paypal.Button.render({
            env: 'sandbox', // Or 'production'
            style: {
                size: 'large',
                color: 'blue',
                shape: 'pill',
                label: 'checkout',
                tagline: 'true'
            },
            // Set up the payment:
            // 1. Add a payment callback
            payment: (data, actions) => {
                // 2. Make a request to your server
                return actions.request.post('../api/create-payment/' + this.props.ost)
                    .then(function (res) {
                        // 3. Return res.id from the response
                        return res.id;
                    });
            },
            // Execute the payment:
            // 1. Add an onAuthorize callback
            onAuthorize: (data, actions) => {
                // 2. Make a request to your server
                return actions.request.post('../api/execute-payment/' + this.props.ost, {
                    paymentID: data.paymentID,
                    payerID: data.payerID
                }).then(function (res) {
                    cb(res)
                });
            }
        }, '#ppbtn');
