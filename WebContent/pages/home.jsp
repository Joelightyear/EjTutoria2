<div class="container">
	<div class="row">
	<a href="Login?g=1" class="btn btn-default btn-lg">Hazme click</a>
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-login">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-6">
							<a href="#" class="active" id="login-form-link">Login</a>
						</div>
						<div class="col-xs-6">
							<a href="#" id="register-form-link">Registro</a>
						</div>
					</div>
					<hr>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<form id="login-form" action="" method="post" role="form"
								style="display: block;">
								<div class="form-group">
									<input type="text" name="username" id="username" tabindex="1"
										class="form-control" placeholder="Usuario" value="">
								</div>
								<div class="form-group">
									<input type="password" name="password" id="password"
										tabindex="2" class="form-control" placeholder="Password">
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-sm-6 col-sm-offset-3">
											<input type="submit" name="login-submit" id="login-submit"
												tabindex="4" class="form-control btn btn-login"
												value="Login">
										</div>
									</div>
								</div>
							</form>
							<form id="register-form" action="" method="post" role="form"
								style="display: none;">
								<div class="form-group">
									<input type="text" name="username" id="username" tabindex="1"
										class="form-control" placeholder="Usuario" value="">
								</div>
								<div class="form-group">
									<input type="email" name="email" id="email" tabindex="1"
										class="form-control" placeholder="Email" value="">
								</div>
								<div class="form-group" id="Provincia">
									<h4>Provincia</h4>
									<div class="form-check">
										<label class="form-check-label"> <input
											class="form-check-input" type="radio" name="provincia"
											value="06"> Badajoz
										</label>
									</div>
									<div class="form-check">
										<label class="form-check-label"> <input
											class="form-check-input" type="radio" name="provincia"
											value="10"> Caceres
										</label>
									</div>
								</div>
								<div class="form-group" id="Comunidades">
									<h4>Comunidades Select</h4>
									<input type="text" name="comunidades" id="comu" list="com">
									<datalist id="com">
										<option value="" ></option>
									</datalist>
								</div>
								<div class="form-group" id="Provincias1" style="display:none">
									<h4>Provincias Select</h4>
									<input type="text" name="provincia" id="provi" list="prov1">
									<datalist id="prov1">
										<option value="" ></option>
									</datalist>
								</div>
								<div class="form-group" id="Localidad" style="display:none">
									<h4>Localidad</h4>	
									<input type="text" name="localidades" list="loc">
									<datalist id="loc">
										<option value="" ></option>
									</datalist>
									
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-sm-6 col-sm-offset-3">
											<input type="submit" name="register-submit"
												id="register-submit" tabindex="4"
												class="form-control btn btn-register" value="Registrate">
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>