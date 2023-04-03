@extends('layout')
@section('title','Steel Toe Admin | Subscription Plans List')
@section('content')
    <div class="card mb-4 mt-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Subscription Plans List 
            
            <!--<a href="{{url('plans/my-plan')}}" class="float-end">View Subscribed Plan</a>-->
            
        </div>
        @if (Session::has('msg'))
            <div class="alert alert-success" role="alert">
                {{Session('msg')}}
            </div>
        @endif
       
        <div class="card-body">
            <table id="datatablesSimple">
                <thead>
                    <tr>
                        <th>Plan Name</th>
                        <th>Price</th>
                        <th>Time Period</th>
                        <th>Clients Limit</th>
                        <th>Sites Limit</th>
                        <th>Staffs Limit</th>
                        <th>Monitorings Limit</th>
                        <th>Meetings Limit</th>
                        <th>Supervisory Limit</th>
                        <th>Activities Limit</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($plans as $plan)
                    <tr>
                        <td>{{$plan->name}}</td>
                        <td>$ {{$plan->price}}</td>
                        <td>{{$plan->period}} Days</td>
                        <td>{{$plan->client_limit}}</td>
                        <td>{{$plan->site_limit}}</td>
                        <td>{{$plan->staff_limit}}</td>
                        <td>{{$plan->monitoring_limit}}</td>
                        <td>{{$plan->meeting_limit}}</td>
                        <td>{{$plan->supervisor_limit}}</td>
                        <td>{{$plan->activities_limit}}</td>
                        <td>
                            @if ($plan->id == auth()->user()->user_plan)
                                <span class="badge bg-success" style="font-size: 15px">Subscribed</span>
                            @elseif($plan->id == auth()->user()->requested_plan)
                                <span class="badge bg-warning text-dark" style="font-size: 15px">Requested</span>
                            @else 
                                {{-- <a href="{{URL::to('subscription/plans/subscribe/'.$plan->id.'/'.$plan->name)}}" class="btn btn-primary">Subscribe </a> --}}
                                @if ($plan->id != 1)
                                    <a onclick="subscribe({{json_encode($plan)}})" class="btn btn-primary">Subscribe </a>
                                @else
                                    <span class="badge bg-warning text-dark" style="font-size: 15px">Used</span>
                                @endif
                            @endif
                        </td>
                        
                    </tr>
                    @endforeach
                
                </tbody>
            </table>
        </div>
    </div>

    <!-- BEGIN::Subscription Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Subscribe <span id="plan-name"></span> Plan</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <form action="" class="form" id="payment-form">
                  <div class="row">
                      <div class="col-12" style="margin-top: 10px;">
                        <label for="">Selected Plan</label>
                        <input type="text" class="form-control" id="name" value="" readonly>
                        <input type="hidden" class="form-control" name="plan_id" id="plan-id" value="">
                      </div>
                      <div class="col-12" style="margin-top: 10px;">
                        <label for="">Subscription Charges</label>
                        <input type="text" class="form-control" id="plan-price" value="" readonly>
                      </div>
                      <div class="col-12" style="margin-top: 10px;" >
                        <label for="card-element" style="margin-bottom: 10px;">Card Details</label>
                        <div id="card-element"></div>
                      </div>
                      <div class="col-12 text-danger" style="margin-top: 10px;" id="card-errors">

                      </div>

                      <div class="col-12" style="margin-top: 10px;">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary" id="sub-btn">Subscribes Now</button>
                      </div>
                  </div>
              </form>
            </div>
            <input type="hidden" id="key" value="{{env('MIX_STRIPE_KEY')}}">
          </div>
        </div>
    </div>
    <!-- END::Subscription Modal-->

    <script type="text/javascript">
        function subscribe(sub) {
            const plan = sub;
            $('#plan-name').html(plan.name);
            $('#name').val(plan.name);
            $('#plan-id').val(plan.id);
            $('#plan-price').val(plan.price);
            $('#exampleModal').modal('show');
            console.log(plan);
        }
    </script>

    {{-- <script>
       ( function () {
            
            var key = $('#key').val();
            console.log(key);
            var stripe = Stripe(key);
            var elements = stripe.elements();
            var style = {
            base: {
                color: "#32325d",
            }
            };

            var card = elements.create("card", { style: style });
            card.mount("#card-element");
        })();
    </script> --}}

    <script>
        var key = $('#key').val();
        console.log(key);
        var stripe = Stripe(key);
        var elements = stripe.elements();
        var style = {
            base: {
                color: "#32325d",
            }
        };

        var card = elements.create("card", { style: style });
        card.mount("#card-element");
        
        // var planId = '';
        // var key = $('#key').val();    
        // var stripe = Stripe(key);
        // const card1 = elements.create("card", { style: style });

        var form = document.getElementById('payment-form');

        form.addEventListener('submit', async function(ev) {
            ev.preventDefault();
            $("#sub-btn").attr("disabled", true);  
            // If the client secret was rendered server-side as a data-secret attribute
            // on the <form> element, you can retrieve it here by calling `form.dataset.secret`
            const {paymentMethod, error} = await stripe.createPaymentMethod( 'card', card);
            console.log(paymentMethod);
            const planId = $('#plan-id').val();
            $.ajax({
                type:'POST',
                url:'{{url("/plan/subscribe")}}',
                data:{
                    "_token": "{{ csrf_token() }}",
                    'plan_id': planId,
                    'payment_method_id' : paymentMethod.id,
                },
                success:function(response){
                    console.log(response);
                    // if (response.status == 422) {
                    //     $('#card-errors').html(response.message);
                    //     $("#sub-btn").attr("disabled", false);  
                    // }else{
                        window.location.reload();
                    // }
                },
                error:function(error){
                    console.log(error);
                    $('#card-errors').html(error.responseText);
                    $("#sub-btn").attr("disabled", false);  
                }
            })


            // stripe.confirmCardPayment(clientSecret.id, {
            //     payment_method: {
            //     card: card,
            //     billing_details: {
            //         name: 'Jenny Rosen'
            //     }
            //     }
            // }).then(function(result) {
            //     if (result.error) {
            //     // Show error to your customer (for example, insufficient funds)
            //     var displayError = document.getElementById('card-errors');
            //     displayError.textContent = result.error.message;
            //     $('#exampleModal').modal('show');
            //     console.log(result.error.message);
            //     } else {
            //         // The payment has been processed!
            //         if (result.paymentIntent.status === 'succeeded') {
            //             console.log(result)
            //             // Show a success message to your customer
            //             // There's a risk of the customer closing the window before callback
            //             // execution. Set up a webhook or plugin to listen for the
            //             // payment_intent.succeeded event that handles any business critical
            //             // post-payment actions.
            //         }
            //     }
            // });
        });

    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="{{ asset('/js/script.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="{{ asset('/js/datatables-simple-demo.js') }}"></script>





@endsection