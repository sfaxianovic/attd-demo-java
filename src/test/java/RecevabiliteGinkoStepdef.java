import com.enedis.sge.attddemojava.habilitation.HabilitationService;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;

public class RecevabiliteGinkoStepdef {
    @Given("Un fournisseur {string}")
    public void unFournisseur(String codeFounisseur) {
        HabilitationService habilitationService = new HabilitationService();
        habilitationService.connect(codeFounisseur);
    }

    @And("Un point improductif {string}")
    public void unPointImproductif(String pmdId) {
    }

    @Then("L{string}état <etatAffaireGinko>")
    public void lAffaireEstCréeDansSGEDansLÉtatEtatAffaireGinko() {
        //Assert.assertTrue();
    }

    @When("je commande une {string}")
    public void jeCommandeUne(String arg0) {
    }
}
