<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<title>Document</title>
<style>
.log {
	width: 8em;
}

.logo {
	width: 6.5em;
}

.shearch.pp {
	text-align: center;
}

@media ( max-width : 575px) {
	.log {
		width: 9.5em;
	}
	.logo {
		width: 9.5em;
	}
}

input:focus {
	color: #00c5bf;
	caret-color: #00c5bf;
	text-align: center;
}

.cntr {
	display: table;
	width: auto;
	height: auto;
	padding: 20px;
}

.cntr .cntr-innr {
	display: table-cell;
	text-align: left;
	vertical-align: middle;
}

.search {
	display: inline-block;
	position: relative;
	height: 35px;
	width: 35px;
	box-sizing: border-box;
	margin: 0px 8px 7px 0px;
	padding: 7px 9px 0px 9px;
	border: 3px solid #00c5bf;
	border-radius: 25px;
	transition: all 200ms ease;
	cursor: text;
	text-align: center;
	color: #00c5bf;
}

.search:after {
	content: "";
	position: absolute;
	width: 2.5px;
	height: 20px;
	right: -5px;
	top: 21px;
	background: #00c5bf;
	border-radius: 3px;
	transform: rotate(-45deg);
	transition: all 200ms ease;
}

.search.active, .search:hover {
	width: 200px;
	margin-right: 0px;
}

.search.active:after, .search:hover:after {
	height: 0px;
}

.search input {
	width: 100%;
	border: none;
	box-sizing: border-box;
	font-family: Helvetica;
	font-size: 15px;
	color: inherit;
	background: transparent;
	outline-width: 0px;
}

.resulttemp {
	width: 1024px;
	min-height: 720px;
	height: auto;
	margin-left: 50px;
}

.result {
	padding: 20px;
}

.result1 {
	width: 740px;
	min-height: 180px;
	margin: 0 auto;
	border: 1px;
	box-shadow: 5px 5px 20px 0 rgba(0, 0, 0, 0.4);
	border-radius: 10px;
	margin-left: 220px;
}

.result2 {
	padding: 30px;
}

@media ( max-width : 1199px) {
	.resulttemp {
		height: auto;
	}
}

@media ( max-width : 767px) {
	.resulttemp {
		height: auto;
		width: 540px;
	}
	.result {
		padding: 10px;
	}
	.result1 {
		width: 440px;
		min-height: auto;
		margin: 0;
	}
	.result2 {
		padding: 10px;
	}
}

@media ( max-width : 575px) {
	.resulttemp {
		height: auto;
		width: 340px;
		margin: 35px;
	}
	.result1 {
		width: 320px;
		min-height: auto;
		margin: 0;
	}
	.result2 {
		padding: 5px;
	}
}

@media ( max-width : 575px) {
	#inpt_submit {
		padding-top: 10px;
	}
}
</style>
</head>
<body>




	<header class="text-gray-600 body-font">
		<div
			class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
			<a
				class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0">
				<img class="log" src="img\logo.png" alt="">

			</a>
			<nav
				class="md:mr-auto md:ml-4 md:py-1 md:pl-4 md:border-l md:border-gray-400	flex flex-wrap items-center text-base justify-center">
				<a class="mr-5 hover:text-gray-900"
					href="https://medifrnd.000webhostapp.com/index.php#Home">Home</a> <a
					class="mr-5 hover:text-gray-900"
					href="https://medifrnd.000webhostapp.com/blog.php">Blog</a> <a
					class="mr-5 hover:text-gray-900"
					href="https://medifrnd.000webhostapp.com/index.php#About">About</a>
				<a class="mr-5 hover:text-gray-900"
					href="https://medifrnd.000webhostapp.com/index.php#Contact">Contact
					Us</a>
			</nav>
			<div class="cntr">

				<form class="cntr-innr" method="post" action='HospitalServlet'>
					<label class="search" for="inpt_search"> <input name='searchQuery'
						id="inpt_search" type="search" action='HospitalServlet' require /> <input
						name='submit' id='inpt_submit' type='submit' value='Submit' />
					</label>

				</form>

			</div>
		</div>
	</header>

	<div class="container p-10">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card card-sh">
					<c:forEach var="hospital" items="${hospitals}">
						<div class="card-body">
							<!-- Title -->
							<h3 class="h4">${hospital.hospitalName}</h3>
							<h6>${hospital.city}</h6>
							<h6>${hospital.contact}</h6>
							<p class="mt-4 mb-6">${hospital.address}</p>

							<a href="#" class="btn btn-sm btn-primary"> Learn more </a>
						</div>
					</c:forEach>
				</div>
			</div>

		</div>
	</div>

	<footer class="text-gray-600 body-font">
		<div
			class="container px-5 py-8 mx-auto flex items-center sm:flex-row flex-col">
			<a
				class="flex title-font font-medium items-center md:justify-start justify-center text-gray-900">
				<img class="logo" src="img\logo.png" alt="logo"> <span
				class="ml-3 text-xl">Medifrnd</span>
			</a>
			<p
				class="text-sm text-gray-500 sm:ml-4 sm:pl-4 sm:border-l-2 sm:border-gray-200 sm:py-2 sm:mt-0 mt-4">
				© 2021 Medifrnd — <a href="https://twitter.com/Akshayb2707"
					class="text-gray-600 ml-1" rel="noopener noreferrer"
					target="_blank">@Akshayb2707</a>
			</p>
			<span
				class="inline-flex sm:ml-auto sm:mt-0 mt-4 justify-center sm:justify-start">
				<a href="https://www.facebook.com/akshay.borade.1848"
				class="text-gray-500"> <svg fill="currentColor"
						stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
						class="w-5 h-5" viewBox="0 0 24 24">
                    <path
							d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
                  </svg>
			</a> <a
				href="https://twitter.com/Akshayb2707?t=BW4_gfYNO6i8aVweZ21usQ&s=08"
				class="ml-3 text-gray-500"> <svg fill="currentColor"
						stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
						class="w-5 h-5" viewBox="0 0 24 24">
                    <path
							d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
                  </svg>
			</a> <a href="https://www.instagram.com/akshay02105/?r=nametag"
				class="ml-3 text-gray-500"> <svg fill="none"
						stroke="currentColor" stroke-linecap="round"
						stroke-linejoin="round" stroke-width="2" class="w-5 h-5"
						viewBox="0 0 24 24">
                    <rect width="20" height="20" x="2" y="2" rx="5"
							ry="5"></rect>
                    <path
							d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
                  </svg>
			</a> <a href="https://www.linkedin.com/in/akshay-borade-882463216"
				class="ml-3 text-gray-500"> <svg fill="currentColor"
						stroke="currentColor" stroke-linecap="round"
						stroke-linejoin="round" stroke-width="0" class="w-5 h-5"
						viewBox="0 0 24 24">
                    <path stroke="none"
							d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-2-2 2 2 0 00-2 2v7h-4v-7a6 6 0 016-6zM2 9h4v12H2z"></path>
                    <circle cx="4" cy="4" r="2" stroke="none"></circle>
                  </svg>
			</a>
			</span>
		</div>
	</footer>
</body>
</html>