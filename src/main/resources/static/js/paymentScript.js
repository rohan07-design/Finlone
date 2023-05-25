/**
 * 
 */


const getAmount = (id) => {
    let amount = document.getElementById("paymentAmount").value;
    let userId = id;
    alert(amount);

    debugger
    setTimeout(() => {
      //send the request to the server
    $.ajax({
        url: "/userpayment/" + userId,
        data: JSON.stringify({
            amount: amount,
            info: "order_request"
        }),
        contentType: "application/json",
        type: "POST",
        dataType: "json",
        success: function(response) {
            if (response.status == "created") {
                //open payment form
                let options = {
                    key: "rzp_test_b2ljmnm5S5yKeE",
                    amount: response.amount,
                    currency: "INR",
                    name: "Finlone",
                    description: "Online Loan Company",
                    order_id: response.id,
                    handler: function(response) {
                        alert(response.razorpay_payment_id);
                        alert(response.razorpay_order_id);
                        alert(response.razorpay_signature);
                    },
                    prefill: {
                        name: "Gaurav Kumar",
                        email: "gaurav.kumar@example.com",
                        contact: "9999999999"
                    },
                    notes: {
                        address: "Razorpay Corporate Office"
                    },
                    theme: {
                        color: "#3399cc"
                    }
                }
                let rzp = new Razorpay(options);
                rzp.on('payment.failed', function (response){
                    alert(response.error.code);
                    alert(response.error.description);
                    alert(response.error.source);
                    alert(response.error.step);
                    alert(response.error.reason);
                    alert(response.error.metadata.order_id);
                    alert(response.error.metadata.payment_id);
                    });
                rzp.open();

            }
        },
        error: function (error) {
            console.log("error is there");
            alert("something wrong..!!");
        },

    });  
    },2000)
    
};

