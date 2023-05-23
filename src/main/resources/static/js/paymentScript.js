/**
 * 
 */


const getAmount = () => {
    let amt = document.getElementById("paymentAmount").value;
    alert(amt);
    let userId = id;
}

//send the request to the server
$.ajax({
    url:'payment/'+id,
    data:JSON.stringify({amount:amt,info:'order_request'}),
    contentType:"application/json",
    type:'POST',
    dataType:'json',
    success:function(response) {
        alert("success");
    },
    error:function(error) {
        alert("error");
    }

})

 