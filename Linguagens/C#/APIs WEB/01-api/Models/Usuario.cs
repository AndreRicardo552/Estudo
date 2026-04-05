using System.ComponentModel.DataAnnotations;

namespace _01_api.Models {
    public class Usuario {

        [Key]
        public int UsuarioId { get; set; }
        [Required]
        [StringLength(100)]
        public string? Nome { get; set; }
        [Required]
        [StringLength(100)]
        public string? Email { get; set; }
        [Required]
        [StringLength(100)]
        public string? Login { get; set; }
        public DateOnly DataNasscimento { get; set; }
        [Required]
        [StringLength(11)]
        public string? cpf { get; set; }
        [Required]
        public string? Senha { get; set; }
        public DateTime DataCriacao { get; set; }

    }
}
