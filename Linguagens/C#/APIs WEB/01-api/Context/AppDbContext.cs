using Microsoft.EntityFrameworkCore;
using System.Security.Cryptography.X509Certificates;
using _01_api.Models;

namespace _01_api.Context;
    public class AppDbContext :  DbContext {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) {
              
        }

        public DbSet<Categoria>? Categorias { set; get; }
        public DbSet<Produto>? Produtos { set; get; }
        public DbSet<Usuario>? Usuarios { set; get; } 
    }

