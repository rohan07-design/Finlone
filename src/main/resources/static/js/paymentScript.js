/**
 * 
 */


const getAmount = (id) => {
    let amount = document.getElementById("paymentAmount").value;
    alert(amount);
 	let userId = id; 

//send the request to the server
$.ajax({
	url:"/userpayment/"+userId,
    data:JSON.stringify({
        amount:amount,
        info:"order_request"
    }),
    contentType:"application/json",
    type:"POST",
    dataType:"json",
    success:function(response) {
        alert("success");
    },
    error:function(error) {
        alert("error");
    }

})
}
 
 