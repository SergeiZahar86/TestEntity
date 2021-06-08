using Microsoft.EntityFrameworkCore;
using System.Configuration;

namespace TestEntity
{
    public class ApplicationContext : DbContext
    {
        public DbSet<User> Users { get; set; }

        public ApplicationContext()
        {
            Database.EnsureCreated();
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            //optionsBuilder.UseMySql("server=127.0.0.1;port=3300;user=sergei;password=2712iwitn;database=entity;");
            var vvv = ConfigurationManager.ConnectionStrings["BloggingDatabase"].ConnectionString;
            optionsBuilder.UseMySql(ConfigurationManager.ConnectionStrings["BloggingDatabase"].ConnectionString);
        }
    }
}
