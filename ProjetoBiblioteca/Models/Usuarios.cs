namespace ProjetoBiblioteca.Models
{
    public class Usuarios
    {
        public int Id { get; set; } 

        public string Nome { get; set; } 

        public string Email { get; set; }

        public string Senha_Hash { get; set; }
        
        public string role { get; set; }

        public int Ativo { get; set; }

        public DateTime Criado_Em { get; set; }
    }
}
