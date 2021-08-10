<div class="client" style="overflow: hidden;">        
    <template>
        <div>
            <b-navbar toggleable type="warning" variant="warning" >
                <b-navbar-brand href="#"><img src="/image/moshriq.png" alt="logo" class="logo" style="width:100%; height:22px; float:right;" /></b-navbar-brand>
                <b-navbar-toggle target="navbar-toggle-collapse">
                    <template #default="{ expanded }">
                        <b-icon v-if="expanded" icon="chevron-bar-up"></b-icon>
                        <b-icon v-else icon="chevron-bar-down"></b-icon>
                    </template>
                </b-navbar-toggle>
                <b-collapse id="navbar-toggle-collapse" is-nav>
                    <b-navbar-nav class="ml-auto">
                        <b-col class="col-md-4">
                            <div class="row"><b-nav-item href="#">Projets demandés</b-nav-item></div>
                            <div class="row"><b-nav-item href="#">Clients</b-nav-item></div>
                            <div class="row"><b-nav-item href="#">Témoignages</b-nav-item></div>
                            <div class="row"><b-nav-item href="#">Employés</b-nav-item></div>
                        </b-col>
                        <b-col class="col-md-4">
                            <div class="row"><b-nav-item href="#">Composants</b-nav-item></div>
                            <div class="row"><b-nav-item href="#">Départements</b-nav-item></div>
                            <div class="row"><b-nav-item href="#">Secteurs</b-nav-item></div>
                            <div class="row"><b-nav-item href="#">Services</b-nav-item></div>
                        </b-col>
                        <b-col class="col-md-4">
                            <div class="row"><b-nav-item href="#">Types de projets</b-nav-item></div>
                            <div class="row"><b-nav-item href="#">Status</b-nav-item></div>
                            <div class="row"><b-nav-item href="#">Villes</b-nav-item></div>
                        </b-col>
                    </b-navbar-nav>
                </b-collapse>
            </b-navbar><br><br>
            <h5>Bonjour, Mme GHOUIZI HOUDA</h5>
            <div class="row ">
                <br><br>
                <b-col class="col-md-12">
                    <b-card-group deck>
                        <b-card class="bg-warning" title="Projets demandés" header-tag="header" footer-tag="footer">
                            <b-card-text><h6>12 Projets demandés</h6></b-card-text>
                        </b-card>
                        <b-card class="tem" style="background-color: #202D65; color: white;" title="Clients" header-tag="header" footer-tag="footer">
                            <b-card-text><h6>7 Clients</h6></b-card-text>
                        </b-card>
                    </b-card-group>
                </b-col>
            </div>
        </div>
    </template><br><br>

<div class="row">
    <b-col class="col-md-3"></b-col>
    <b-col class="col-md-6">
        <br><br><br><br><h3 class="text-center">Votre projet est                     
        @foreach ($status as $status)
            <span class="text-danger"> {{$stat->status}} </span>
        @endforeach</h3><br><br>
    </b-col>
    
</div><br><br>
<div><h4>Pour plus d'informations merci de cliquer sur <span class="contact" style="color: #025210;"><i>Contactez-nous</i></span></h4></div>
</div>

