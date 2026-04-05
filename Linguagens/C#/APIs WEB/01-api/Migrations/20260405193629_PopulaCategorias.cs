using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace _01_api.Migrations
{
    /// <inheritdoc />
    public partial class PopulaCategorias : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder mb)
        {
            mb.Sql("Insert into Categorias(nome, ImagemURL) Values('Bebidas', 'Bebidas.jpg')");
            mb.Sql("Insert into Categorias(nome, ImagemURL) Values('Lanches', 'Lanches.jpg')");
            mb.Sql("Insert into Categorias(nome, ImagemURL) Values('Sobremesas', 'Sobremesas.jpg')");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder mb)
        {
            mb.Sql("Delete from Categorias");
        }
    }
}
