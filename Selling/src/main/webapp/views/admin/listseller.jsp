<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách seller</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/templates/admin/css/style.css">
</head>
<body>

	
	<!--  content -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css" integrity="sha512-pVCM5+SN2+qwj36KonHToF2p1oIvoU3bsqxphdOIWMYmgr4ZqD3t5DjKvvetKhXGc/ZG5REYTT6ltKfExEei/Q==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css" integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous" />

<div class="list d-flex justify-content-center align-items-center">
<button type="button" class="btn btn-outline-primary">Khách Hàng</button>
<button type="button" class="btn btn-outline-primary">Nhân Viên</button>
<button type="button" class="btn btn-outline-primary">Shipper</button>

</div>


<div class="container">
    <div class="row align-items-center">
        <div class="col-md-6">
            <div class="mb-3">
                <h5 class="card-title">Thông tin Nhân viên <span class="text-muted fw-normal ms-2">(56)</span></h5>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="">
                <div class="table-responsive">
                    <table class="table project-list-table table-nowrap align-middle table-borderless">
                        <thead>
                            <tr>
                                <th scope="col" class="ps-4" style="width: 50px;">
                                    <!-- <div class="form-check font-size-16"><input type="checkbox" class="form-check-input" id="contacusercheck" /><label class="form-check-label" for="contacusercheck"></label></div> -->
                                </th>
                                <th scope="col">Tài khoản</th>
                                <th scope="col">Vị trí </th>
                                <th scope="col">Số điện thoại</th>
                                <th scope="col" style="width: 200px;">Lựa chọn</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row" class="ps-4">
                                    <div class="form-check font-size-16"><input type="checkbox" class="form-check-input" id="contacusercheck1" /><label class="form-check-label" for="contacusercheck1"></label></div>
                                </th>
                                <td><img src="https://scontent.fsgn3-1.fna.fbcdn.net/v/t39.30808-6/357053034_814960390037893_4922475779121350488_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeF5HXwEGNMOPAGrytHpFsrR_aLOXQRBb7r9os5dBEFvuq1yibYhcbMKiV2CqFcBHaVpuYriGC2v8DMoF6Nbu4wB&_nc_ohc=-yKX52Urdn0AX8U0a-v&_nc_oc=AQlI2Ns9XLRTfcBwWgD0RHgOWIUMetQvlk_-r_YQaQQu_hub_sENbxLo6HLTTSsB0Ug&_nc_ht=scontent.fsgn3-1.fna&oh=00_AfAkwmC6el-T5G0ksuVne_5NYx6l7Dvg2p6XioTa2XhQgQ&oe=6556BE61" alt="" class="avatar-sm rounded-circle me-2" /><a href="#" class="text-body">Simon Ryles</a></td>
                                <td><span class="badge badge-soft-success mb-0">223</span></td>
                                <td>0382737462</td>
                                <td>
                                    <ul class="list-inline mb-0">
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit" class="px-2 text-primary"><i class="bx bx-pencil font-size-18"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete" class="px-2 text-danger"><i class="bx bx-trash-alt font-size-18"></i></a>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row" class="ps-4">
                                    <div class="form-check font-size-16"><input type="checkbox" class="form-check-input" id="contacusercheck2" /><label class="form-check-label" for="contacusercheck2"></label></div>
                                </th>
                                <td><img src="https://scontent.fsgn4-1.fna.fbcdn.net/v/t39.30808-6/339908861_207526681891832_1233331276264573363_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFJ4anPj9NtC_ZXyKQgLXW8YbiVsfA75rBhuJWx8DvmsBnd5OhM8q4r_k68Qy8JcoAD3jsoMp5iaPTcmvmLo366&_nc_ohc=60IqQ4L2MlMAX-Q0_O-&_nc_ht=scontent.fsgn4-1.fna&oh=00_AfAi3yPUfZzd37VSX88cYg6IjtgIqrEZHDrPfEA7jUM6oA&oe=6555B210" alt="" class="avatar-sm rounded-circle me-2" /><a href="#" class="text-body">Marion Walker</a></td>
                                <td><span class="badge badge-soft-info mb-0">134</span></td>
                                <td>0927366354</td>
                                <td>
                                    <ul class="list-inline mb-0">
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit" class="px-2 text-primary"><i class="bx bx-pencil font-size-18"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete" class="px-2 text-danger"><i class="bx bx-trash-alt font-size-18"></i></a>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row" class="ps-4">
                                    <div class="form-check font-size-16"><input type="checkbox" class="form-check-input" id="contacusercheck3" /><label class="form-check-label" for="contacusercheck3"></label></div>
                                </th>
                                <td>
                                    <div class="avatar-sm d-inline-block me-2">
                                        <div class="avatar-title bg-soft-primary rounded-circle text-primary"><i class="mdi mdi-account-circle m-0"></i></div>
                                    </div>
                                    <a href="#" class="text-body">Frederick White</a>
                                </td>
                                <td><span class="badge badge-soft-danger mb-0">123</span></td>
                                <td>0182736362</td>
                                <td>
                                    <ul class="list-inline mb-0">
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit" class="px-2 text-primary"><i class="bx bx-pencil font-size-18"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete" class="px-2 text-danger"><i class="bx bx-trash-alt font-size-18"></i></a>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row" class="ps-4">
                                    <div class="form-check font-size-16"><input type="checkbox" class="form-check-input" id="contacusercheck4" /><label class="form-check-label" for="contacusercheck4"></label></div>
                                </th>
                                <td><img src="https://scontent.fsgn3-1.fna.fbcdn.net/v/t39.30808-6/278383019_526100198923915_1078175830879600888_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGHwP6HRGDY_4895ALBlkHfcnYZpPz58SJydhmk_PnxIg-70u3FewryiLOAThQuMz99kTssKbILIW1KzMPfPbrk&_nc_ohc=S3Nvh0N-XO8AX8yPhcc&_nc_oc=AQkceypuViFX6WSYrB1OR_qaFvMigExEN8oSoLhm3SoFagW9nfMByc38HF13UeZVHi8&_nc_ht=scontent.fsgn3-1.fna&oh=00_AfCzfjP_ddvqmEX6lJ2NB2urUgmMBklmTYxH4UI3XjHSrw&oe=655713B8" alt="" class="avatar-sm rounded-circle me-2" /><a href="#" class="text-body">Shanon Marvin</a></td>
                                <td><span class="badge badge-soft-primary mb-0">73643</span></td>
                                <td>0299283777</td>
                                <td>
                                    <ul class="list-inline mb-0">
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit" class="px-2 text-primary"><i class="bx bx-pencil font-size-18"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete" class="px-2 text-danger"><i class="bx bx-trash-alt font-size-18"></i></a>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row" class="ps-4">
                                    <div class="form-check font-size-16"><input type="checkbox" class="form-check-input" id="contacusercheck5" /><label class="form-check-label" for="contacusercheck5"></label></div>
                                </th>
                                <td>
                                    <div class="avatar-sm d-inline-block me-2">
                                        <div class="avatar-title bg-soft-primary rounded-circle text-primary"><i class="mdi mdi-account-circle m-0"></i></div>
                                    </div>
                                    <a href="#" class="text-body">Mark Jones</a>
                                </td>
                                <td><span class="badge badge-soft-info mb-0">1736</span></td>
                                <td>0915226353</td>
                                <td>
                                    <ul class="list-inline mb-0">
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit" class="px-2 text-primary"><i class="bx bx-pencil font-size-18"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete" class="px-2 text-danger"><i class="bx bx-trash-alt font-size-18"></i></a>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row" class="ps-4">
                                    <div class="form-check font-size-16"><input type="checkbox" class="form-check-input" id="contacusercheck6" /><label class="form-check-label" for="contacusercheck6"></label></div>
                                </th>
                                <td><img src="https://scontent.fsgn4-1.fna.fbcdn.net/v/t39.30808-6/381207883_858099802390618_7125856891839006304_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGANIKNYKpVhbB0oKbOr2s-msfY58s5fO6ax9jnyzl87j1E6dWlMa25NdemG9rMfN0Goj5RL--Bqt7rWYU9qtip&_nc_ohc=_I3j7QaO_MoAX_ZMfKm&_nc_ht=scontent.fsgn4-1.fna&oh=00_AfD93ljfad4fLBdWClNPHWMXM-IlytphQ2Wf2xKjV4QVyA&oe=6556326E" alt="" class="avatar-sm rounded-circle me-2" /><a href="#" class="text-body">Janice Morgan</a></td>
                                <td><span class="badge badge-soft-primary mb-0">34</span></td>
                                <td>0788736272</td>
                                <td>
                                    <ul class="list-inline mb-0">
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit" class="px-2 text-primary"><i class="bx bx-pencil font-size-18"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete" class="px-2 text-danger"><i class="bx bx-trash-alt font-size-18"></i></a>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row" class="ps-4">
                                    <div class="form-check font-size-16"><input type="checkbox" class="form-check-input" id="contacusercheck7" /><label class="form-check-label" for="contacusercheck7"></label></div>
                                </th>
                                <td><img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="avatar-sm rounded-circle me-2" /><a href="#" class="text-body">Patrick Petty</a></td>
                                <td><span class="badge badge-soft-danger mb-0">1627</span></td>
                                <td>0366484756</td>
                                <td>
                                    <ul class="list-inline mb-0">
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit" class="px-2 text-primary"><i class="bx bx-pencil font-size-18"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete" class="px-2 text-danger"><i class="bx bx-trash-alt font-size-18"></i></a>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row" class="ps-4">
                                    <div class="form-check font-size-16"><input type="checkbox" class="form-check-input" id="contacusercheck8" /><label class="form-check-label" for="contacusercheck8"></label></div>
                                </th>
                                <td><img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="avatar-sm rounded-circle me-2" /><a href="#" class="text-body">Marilyn Horton</a></td>
                                <td><span class="badge badge-soft-primary mb-0">3637</span></td>
                                <td>0373646362</td>
                                <td>
                                    <ul class="list-inline mb-0">
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit" class="px-2 text-primary"><i class="bx bx-pencil font-size-18"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete" class="px-2 text-danger"><i class="bx bx-trash-alt font-size-18"></i></a>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row" class="ps-4">
                                    <div class="form-check font-size-16"><input type="checkbox" class="form-check-input" id="contacusercheck9" /><label class="form-check-label" for="contacusercheck9"></label></div>
                                </th>
                                <td><img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="avatar-sm rounded-circle me-2" /><a href="#" class="text-body">Neal Womack</a></td>
                                <td><span class="badge badge-soft-success mb-0">99</span></td>
                                <td>0192737272</td>
                                <td>
                                    <ul class="list-inline mb-0">
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit" class="px-2 text-primary"><i class="bx bx-pencil font-size-18"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="javascript:void(0);" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete" class="px-2 text-danger"><i class="bx bx-trash-alt font-size-18"></i></a>
                                        </li>

                                    </ul>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="row g-0 align-items-center pb-4">
        <div class="col-sm-6">
            <div><p class="mb-sm-0">Hiển thị 1 đến 10 trong 12 mục</p></div>
        </div>
        <div class="col-sm-6">
            <div class="float-sm-end">
                <ul class="pagination mb-sm-0">
                    <li class="page-item disabled">
                        <a href="#" class="page-link"><i class="mdi mdi-chevron-left"></i></a>
                    </li>
                    <li class="page-item active"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item">
                        <a href="#" class="page-link"><i class="mdi mdi-chevron-right"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
	<!-- end content-->


</body>
</html>