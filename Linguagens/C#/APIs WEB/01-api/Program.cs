using _01_api.Context;
using Microsoft.EntityFrameworkCore;
using System.Text.Json.Serialization;

var builder = WebApplication.CreateBuilder(args);

// Adiciona os controladores
builder.Services.AddControllers().AddJsonOptions(
    // Resolve problema da Referencia ciclica
    options => options.JsonSerializerOptions.ReferenceHandler = ReferenceHandler.IgnoreCycles); 
builder.Services.AddOpenApi();

var mySqlConnection = builder.Configuration.GetConnectionString("DefaultConnection");

builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseMySql(mySqlConnection, ServerVersion.AutoDetect(mySqlConnection)));

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment()) {
    app.MapOpenApi();
    app.UseSwaggerUI(options => options.SwaggerEndpoint("/openapi/v1.json", "weather api"));
    app.UseExceptionHandler("/Error");
}

app.UseHttpsRedirection(); // Redireciona para https

app.UseAuthorization(); // Redireciona para o Autentificacao da aplicação

app.MapControllers(); // Mapeia os controladores para os endpoints especificados neles

app.Run(); // Executa a aplicação
