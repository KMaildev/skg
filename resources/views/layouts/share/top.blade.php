 <!-- Top -->
 <nav class="layout-navbar navbar navbar-expand-xl align-items-center bg-navbar-theme" id="layout-navbar">
     <div class="container-xxl navbar-nav-right" style="background-color: #296166">

         <div class="navbar-brand app-brand demo d-none d-xl-flex py-0 me-4">
             <a href="{{ route('home') }}" class="app-brand-link gap-2">
                 <span class="app-brand-text demo menu-text fw-bold" style="color: white">SK GROUP</span>
             </a>
             <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-xl-none">
                 <i class="bx bx-x bx-sm align-middle"></i>
             </a>
         </div>

         <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
             <ul class="navbar-nav flex-row align-items-center ms-auto">

                 <!-- Notification -->
                 <li class="nav-item dropdown-notifications navbar-dropdown dropdown me-3 me-xl-2">
                     <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown"
                         data-bs-auto-close="outside" aria-expanded="false">
                         <i class="bx bx-bell bx-sm"></i>
                         <span class="badge bg-danger rounded-pill badge-notifications">5</span>
                     </a>
                     <ul class="dropdown-menu dropdown-menu-end py-0">
                         <li class="dropdown-menu-header border-bottom">
                             <div class="dropdown-header d-flex align-items-center py-3">
                                 <h5 class="text-body mb-0 me-auto">Notification</h5>
                                 <a href="javascript:void(0)" class="dropdown-notifications-all text-body"
                                     data-bs-toggle="tooltip" data-bs-placement="top" title="Mark all as read"><i
                                         class="bx fs-4 bx-envelope-open"></i></a>
                             </div>
                         </li>
                         <li class="dropdown-notifications-list scrollable-container">
                             <ul class="list-group list-group-flush">
                                 <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                     <div class="d-flex">
                                         <div class="flex-shrink-0 me-3">
                                             <div class="avatar">
                                                 <span class="avatar-initial rounded-circle bg-label-danger">CF</span>
                                             </div>
                                         </div>
                                         <div class="flex-grow-1">
                                             <h6 class="mb-1">Alex Jones</h6>
                                             <p class="mb-0">Request</p>
                                             <small class="text-muted">12hr ago</small>
                                         </div>
                                         <div class="flex-shrink-0 dropdown-notifications-actions">
                                             <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                                     class="badge badge-dot"></span></a>
                                             <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                                     class="bx bx-x"></span></a>
                                         </div>
                                     </div>
                                 </li>
                             </ul>
                         </li>

                         <li class="dropdown-notifications-list scrollable-container">
                             <ul class="list-group list-group-flush">
                                 <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                     <div class="d-flex">
                                         <div class="flex-shrink-0 me-3">
                                             <div class="avatar">
                                                 <span class="avatar-initial rounded-circle bg-label-danger">CF</span>
                                             </div>
                                         </div>
                                         <div class="flex-grow-1">
                                             <h6 class="mb-1">Alex Jones</h6>
                                             <p class="mb-0">Request code #220201
                                             </p>
                                             <small class="text-muted">12hr ago</small>
                                         </div>
                                         <div class="flex-shrink-0 dropdown-notifications-actions">
                                             <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                                     class="badge badge-dot"></span></a>
                                             <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                                     class="bx bx-x"></span></a>
                                         </div>
                                     </div>
                                 </li>
                             </ul>
                         </li>

                         <li class="dropdown-notifications-list scrollable-container">
                             <ul class="list-group list-group-flush">
                                 <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                     <div class="d-flex">
                                         <div class="flex-shrink-0 me-3">
                                             <div class="avatar">
                                                 <span class="avatar-initial rounded-circle bg-label-danger">CF</span>
                                             </div>
                                         </div>
                                         <div class="flex-grow-1">
                                             <h6 class="mb-1">Alex Jones</h6>
                                             <p class="mb-0">Request</p>
                                             <small class="text-muted">12hr ago</small>
                                         </div>
                                         <div class="flex-shrink-0 dropdown-notifications-actions">
                                             <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                                     class="badge badge-dot"></span></a>
                                             <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                                     class="bx bx-x"></span></a>
                                         </div>
                                     </div>
                                 </li>
                             </ul>
                         </li>
                         <li class="dropdown-menu-footer border-top">
                             <a href="javascript:void(0);" class="dropdown-item d-flex justify-content-center p-3">
                                 View all notifications
                             </a>
                         </li>
                     </ul>
                 </li>
                 <!--/ Notification -->


                 <!-- User -->
                 <li class="nav-item navbar-dropdown dropdown-user dropdown">
                     <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);"
                         data-bs-toggle="dropdown">
                         <div class="avatar avatar-online">
                             <img src="{{ asset('assets/data/profile.png') }}" alt class="rounded-circle">
                         </div>
                     </a>
                     <ul class="dropdown-menu dropdown-menu-end">
                         <li>
                             <a class="dropdown-item" href="#">
                                 <div class="d-flex">
                                     <div class="flex-shrink-0 me-3">
                                         <div class="avatar avatar-online">
                                             <img src="{{ asset('assets/data/profile.png') }}" alt
                                                 class="rounded-circle">
                                         </div>
                                     </div>
                                     <div class="flex-grow-1">
                                         <span class="fw-semibold d-block lh-1">SK GROUP</span>
                                         <small>Admin</small>
                                     </div>
                                 </div>
                             </a>
                         </li>
                         <li>
                             <div class="dropdown-divider"></div>
                         </li>
                         <li>
                             <a class="dropdown-item" href="{{ route('profile.index') }}">
                                 <i class="bx bx-user me-2"></i>
                                 <span class="align-middle">My Profile</span>
                             </a>
                         </li>
                         <li>
                             <div class="dropdown-divider"></div>
                         </li>
                         <li>
                             <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                    document.getElementById('logout-form').submit();">
                                 <i class="bx bx-power-off me-2"></i>
                                 {{ __('Logout') }}
                             </a>

                             <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                 class="d-none">
                                 @csrf
                             </form>
                         </li>
                     </ul>
                 </li>
                 <!--/ User -->
             </ul>
         </div>

     </div>
 </nav>
 <!-- TOp -->
