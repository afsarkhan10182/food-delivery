@inject('admin', 'App\Admin')


@php($page = Request::segment(2))
<style type="text/css">
.menu-item{
	border-bottom: 1px solid #0c6057 !important;
}
</style>
<div class="admin-sidebar-brand">
<!-- begin sidebar branding-->
<img class="admin-brand-logo" src="{{Asset('assets/img/logo.png') }}" width="40" alt="atmos Logo">
<span class="admin-brand-content font-secondary"><a href="{{ Asset(env('admin').'/home') }}">  @if($admin->hasPerm('ALL')) Admin @else Sub Admin @endif</a></span>
<!-- end sidebar branding-->
<div class="ml-auto">
<!-- sidebar pin-->
<a href="#" class="admin-pin-sidebar btn-ghost btn btn-rounded-circle"></a>
<!-- sidebar close for mobile device-->
<a href="#" class="admin-close-sidebar"></a>
</div>
</div>
<div class="admin-sidebar-wrapper js-scrollbar">
<ul class="menu">
<li class="menu-item @if($page === 'home' || $page == 'setting') active @endif">
<a href="#" class="open-dropdown menu-link">
<span class="menu-label">
<span class="menu-name">Dashboard
<span class="menu-arrow"></span>
</span>

</span>
<span class="menu-icon">
<i class="icon-placeholder mdi mdi-shape-outline "></i>
</span>
</a>
<!--submenu-->
<ul class="sub-menu">

<li class="menu-item">
<a href="{{ Asset(env('admin').'/home') }}" class=" menu-link">
<span class="menu-label">
<span class="menu-name">Home</span>
</span>
<span class="menu-icon">
<i class="icon-placeholder  mdi mdi-home">

</i>
</span>
</a>
</li>
@if ($admin->hasPerm('Settings') || $admin->hasPerm('ALL'))
<li class="menu-item ">
<a href="{{ Asset(env('admin').'/setting') }}" class=" menu-link">
<span class="menu-label">
<span class="menu-name">Settings</span>
</span>
<span class="menu-icon">
<i class="icon-placeholder  mdi mdi-message-settings-variant">

</i>
</span>
</a>
</li>
@endif

@if ($admin->hasPerm('App Text') || $admin->hasPerm('ALL'))
<li class="menu-item ">
<a href="{{ Asset(env('admin').'/text/add') }}" class=" menu-link">
<span class="menu-label">
<span class="menu-name">App Text</span>
</span>
<span class="menu-icon">
<i class="icon-placeholder  mdi mdi-message-settings-variant">

</i>
</span>
</a>
</li>
</ul>
</li>
@endif

@if ($admin->hasPerm('Languages') || $admin->hasPerm('ALL'))
<li class="menu-item @if($page === 'language') active @endif">
<a href="{{ Asset(env('admin').'/language') }}" class="menu-link">
<span class="menu-label"><span class="menu-name">Languages</span></span>
<span class="menu-icon">
 <i class="mdi mdi-calendar-edit"></i>
</span>
</a>
</li>
@endif

@if ($admin->hasPerm('Banners') || $admin->hasPerm('ALL'))
<li class="menu-item @if($page === 'slider' || $page == 'banner') active @endif">
<a href="#" class="open-dropdown menu-link">
<span class="menu-label">
<span class="menu-name">Banners
<span class="menu-arrow"></span>
</span>

</span>
<span class="menu-icon">
<i class="icon-placeholder mdi mdi-image-filter "></i>
</span>
</a>
<!--submenu-->
<ul class="sub-menu">
<li class="menu-item">
<a href="{{ Asset(env('admin').'/slider') }}" class=" menu-link">
<span class="menu-label">
<span class="menu-name">Welcome Slider</span>
</span>
<span class="menu-icon">
<i class="icon-placeholder  mdi mdi-image-filter">

</i>
</span>
</a>
</li>



<li class="menu-item ">
<a href="{{ Asset(env('admin').'/banner') }}" class=" menu-link">
<span class="menu-label">
<span class="menu-name">Banners</span>
</span>
<span class="menu-icon">
<i class="icon-placeholder  mdi mdi-image">

</i>
</span>
</a>
</li>
</ul>
</li>
@endif

@if ($admin->hasPerm('Manage Cities') || $admin->hasPerm('ALL'))
<li class="menu-item @if($page === 'city') active @endif">
<a href="{{ Asset(env('admin').'/city') }}" class="menu-link">
<span class="menu-label"><span class="menu-name">Manage Cities</span></span>
<span class="menu-icon">
 <i class="mdi mdi-map-marker"></i>
</span>
</a>
</li>
@endif

@if ($admin->hasPerm('App Pages') || $admin->hasPerm('ALL'))
<li class="menu-item @if($page === 'page') active @endif">
<a href="{{ Asset(env('admin').'/page/add') }}" class="menu-link">
<span class="menu-label"><span class="menu-name">App Pages</span></span>
<span class="menu-icon">
 <i class="mdi mdi-file"></i>
</span>
</a>
</li>
@endif

@if ($admin->hasPerm('Manage Restaurants') || $admin->hasPerm('ALL'))
<li class="menu-item @if($page === 'user') active @endif">
<a href="{{ Asset(env('admin').'/user') }}" class="menu-link">
<span class="menu-label"><span class="menu-name">Manage Restaurants</span></span>
<span class="menu-icon">
<i class="icon-placeholder mdi mdi-home"></i>
</span>
</a>
</li>
@endif

@if ($admin->hasPerm('Discount Offers') || $admin->hasPerm('ALL'))
<li class="menu-item @if($page === 'offer') active @endif">
<a href="{{ Asset(env('admin').'/offer') }}" class="menu-link">
<span class="menu-label"><span class="menu-name">Discount Offers</span></span>
<span class="menu-icon">
<i class="icon-placeholder mdi mdi-calendar"></i>
</span>
</a>
</li>
@endif

@if ($admin->hasPerm('Delivery Boys'))
<li class="menu-item @if($page === 'delivery') active @endif">
<a href="{{ Asset(env('admin').'/delivery') }}" class="menu-link">
<span class="menu-label"><span class="menu-name">Delivery Boys</span></span>
<span class="menu-icon">
<i class="mdi mdi-account-clock"></i>
</span>
</a>
</li>
@endif

@if ($admin->hasPerm('ALL'))
<li class="menu-item @if($page === 'adminUser') active @endif">
<a href="{{ Asset(env('admin').'/adminUser') }}" class="menu-link">
<span class="menu-label"><span class="menu-name">Manage Sub Admin</span></span>
<span class="menu-icon">
<i class="mdi mdi-account-clock"></i>
</span>
</a>
</li>
@endif

@if ($admin->hasPerm('Manage Orders'))
<li class="menu-item @if($page === 'order') active @endif">
<a href="#" class="open-dropdown menu-link">
<span class="menu-label">
<span class="menu-name">Manage Orders 

<?php
$cOrder = DB::table('orders')->where('status',0)->count();
$rOrder = DB::table('orders')->where('status',1)->count();
if($cOrder > 0)
{
?>

<span class="icon-badge badge-success badge badge-pill">{{ $cOrder }}</span>

<?php } ?>

<span class="menu-arrow"></span>
</span>

</span>
<span class="menu-icon">
<i class="icon-placeholder mdi mdi-cart"></i>
</span>
</a>
<!--submenu-->
<ul class="sub-menu">

<li class="menu-item">
<a href="{{ Asset(env('admin').'/order?status=0') }}" class=" menu-link">
<span class="menu-label">
<span class="menu-name">New Orders

@if($cOrder > 0)

<span class="icon-badge badge-success badge badge-pill">{{ $cOrder }}</span>

@endif

</span>
</span>
<span class="menu-icon">
<i class="icon-placeholder  mdi mdi-cart">

</i>
</span>
</a>
</li>


<li class="menu-item">
<a href="{{ Asset(env('admin').'/order?status=1') }}" class=" menu-link">
<span class="menu-label">
<span class="menu-name">Running Orders

@if($rOrder > 0)

<span class="icon-badge badge-success badge badge-pill">{{ $rOrder }}</span>

@endif

</span>
</span>
<span class="menu-icon">
<i class="icon-placeholder  mdi mdi-camera-control">

</i>
</span>
</a>
</li>

<li class="menu-item">
<a href="{{ Asset(env('admin').'/order?status=2') }}" class=" menu-link">
<span class="menu-label">
<span class="menu-name">Cancelled Orders</span>
</span>
<span class="menu-icon">
<i class="icon-placeholder  mdi mdi-cancel">

</i>
</span>
</a>
</li>

<li class="menu-item">
<a href="{{ Asset(env('admin').'/order?status=4') }}" class=" menu-link">
<span class="menu-label">
<span class="menu-name">Completed Orders</span>
</span>
<span class="menu-icon">
<i class="icon-placeholder  mdi mdi-check-all">

</i>
</span>
</a>
</li>
</ul>
</li>
@endif

@if ($admin->hasPerm('Push Notification') || $admin->hasPerm('ALL'))
<li class="menu-item">
<a href="{{ Asset(env('admin').'/push') }}" class="menu-link">
<span class="menu-label"><span class="menu-name">Push Notification</span></span>
<span class="menu-icon">
<i class="icon-placeholder mdi mdi-send"></i>
</span>
</a>
</li>
@endif

@if ($admin->hasPerm('Reporting') || $admin->hasPerm('ALL'))
<li class="menu-item">
<a href="{{ Asset(env('admin').'/report') }}" class="menu-link">
<span class="menu-label"><span class="menu-name">Reporting</span></span>
<span class="menu-icon">
<i class="icon-placeholder mdi mdi-file"></i>
</span>
</a>
</li>
@endif

@if ($admin->hasPerm('App Users') || $admin->hasPerm('ALL'))
<li class="menu-item">
<a href="{{ Asset(env('admin').'/appUser') }}" class="menu-link">
<span class="menu-label"><span class="menu-name">App Users</span></span>
<span class="menu-icon">
<i class="icon-placeholder mdi mdi-account"></i>
</span>
</a>
</li>
@endif


<li class="menu-item">
<a href="{{ Asset(env('admin').'/logout') }}" class="menu-link">
<span class="menu-label"><span class="menu-name">Logout</span></span>
<span class="menu-icon">
<i class="icon-placeholder mdi mdi-logout"></i>
</span>
</a>
</li>

</ul>
</div>