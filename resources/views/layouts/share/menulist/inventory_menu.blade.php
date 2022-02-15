<!-- Menu -->
<aside id="layout-menu" class="layout-menu-horizontal menu-horizontal  menu bg-menu-theme flex-grow-0">
    <div class="container-xxl d-flex h-100">
        <ul class="menu-inner">

            <li class="menu-item">
                <a href="{{ route('inventorydashboard.index') }}" class="menu-link">
                    <div data-i1n="Layouts">Dashboard</div>
                </a>
            </li>


            <li class="menu-item">
                <a href="javascript:void(0)" class="menu-link menu-toggle">
                    <div data-i2n="Layouts">Products</div>
                </a>

                <ul class="menu-sub">
                    <li class="menu-item">
                        <a href="{{ route('material.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Material</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="{{ route('labour.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Labour </div>
                        </a>
                    </li>
                </ul>
            </li>


            <li class="menu-item">
                <a href="{{ route('unitsofmeasure.index') }}" class="menu-link">
                    <div data-i1n="Layouts">Units of Measure</div>
                </a>
            </li>

        </ul>
    </div>
</aside>
<!-- / Menu -->
