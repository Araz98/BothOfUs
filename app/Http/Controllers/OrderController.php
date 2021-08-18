<?php

namespace App\Http\Controllers;
use App\Models\Order;
use DB;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $order = DB::select('select * from orders');
        return view('welcome',['order'=>$order]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        //$order = Order::find($order_no);
        return view('welcome');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($order_no)
    {
        $order = DB::select('select * from orders where order_no =?', [$order_no]);
        return view('editOrder',['order'=>$order]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$order_no)
    {
        $orders = Order::find($order_no);
        $orders->product_name = $request->get('product_name');
        $orders->quantity = $request->get('quantity');
        $orders->price_each = $request->get('price_each');
        $orders->estimated = $request->get('estimated');
        $orders->bil_address = $request->get('bil_address');
        $orders->ship_address = $request->get('ship_address');
        $orders->total = $request->get('total');
        $orders->payment_method= $request->get('payment_method');
        $orders->save();

        return redirect('/')->with('Success','Data Updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($order_no)
    {
        DB::delete('delete from orders where order_no = ?', [$order_no]);
        return redirect('/')->with('Success','Data Deleted!');
    }

    public function search(Request $request)
    {
        $search = $request->get('search');
        $order = DB::table('orders')->where('product_name','like','%'.$search.'%')
                    ->orwhere('order_no','like','%'.$search.'%')
                    ->orwhere('total','like','%'.$search.'%')
                    ->orwhere('payment_method','like','%'.$search.'%')
                    ->orwhere('ship_address','like','%'.$search.'%')
                    ->orwhere('bil_address','like','%'.$search.'%')
                    ->orwhere('quantity','like','%'.$search.'%')->paginate(5);

        return view('welcome',['order'=>$order]);
    }
}
