using System.Collections.ObjectModel; // Permite usar Collection
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace _01_api.Models {
    public class Categoria {

        public Categoria() {
            Produtos = new Collection<Produto>();
        }

        [Key]
        public int CategoriaId { get; set; }
        [Required]
        [StringLength(80)]
        public string? Nome { get; set; }
        [Required]
        [StringLength(300)]
        public string? ImagemUrl { get; set; }

        public ICollection<Produto>? Produtos { get; set; } // Mapeia que Categoria pode conter N produto
    }

}