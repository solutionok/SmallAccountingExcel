<?php

namespace App\Http\Middleware;

use Closure;

class Sales
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(session('sales')){
            return $next($request);
        }

        return redirect('/sales');
    }
}
