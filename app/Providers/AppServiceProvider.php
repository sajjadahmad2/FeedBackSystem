<?php

namespace App\Providers;

use Schema;

use Illuminate\Pagination\Paginator;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        \Validator::extend('password', 'App\Rules\PasswordValidation@passes');
        Schema::defaultStringLength(191);
        Paginator::useBootstrapFour();
        // Paginator::useBootstrap();

    }
}
