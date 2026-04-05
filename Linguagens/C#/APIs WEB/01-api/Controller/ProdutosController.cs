using Microsoft.AspNetCore.Mvc;

namespace _01_api.Controller;

[ApiController]
[Route("[Controller]")]
    public class ProdutosController : ControllerBase {

    [HttpGet(Name = "GetProduto")]
    public string GetProduto() {
        return "Ola, sou um produto";
    }
}

