using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestEntity
{
    class Program
    {
        static void Main(string[] args)
        {
            // добавление данных
            using (ApplicationContext db = new ApplicationContext())
            {
                User user1 = new User { Name = "Aleksandr", Age = 33, Birth = new DateTime(1999, 10, 23) };
                User user2 = new User { Name = "Alice", Age = 26, Birth = new DateTime(2011, 11, 03) };

                //db.Users.AddRange(user1, user2);
                //db.SaveChanges();
            }
            // получение данных
            using (ApplicationContext db = new ApplicationContext())
            {
                var users = db.Users.ToList();
                Console.WriteLine("Список объектов:");
                foreach (User u in users)
                {
                    Console.WriteLine($"{u.Id}.{u.Name} - {u.Age}, {u.Birth}");
                }
                //Console.ReadLine();
            }
            Console.WriteLine("=========================================================================");
            using (entityContext db = new entityContext())
            {
                var books = db.Books.ToList();
                Console.WriteLine("Список книг:");
                foreach (Books u in books)
                {
                    Console.WriteLine($"{u.Id}.{u.Name} - {u.Author}, {u.DateCreation.ToString()}, {u.Pages.ToString()}");
                }
                //Console.ReadLine();
            }

            // Редактирование
            using (ApplicationContext db = new ApplicationContext())
            {
                // получаем первый объект
                User user = db.Users.FirstOrDefault();
                if (user != null)
                {
                    user.Name = "Bob";
                    user.Age = 44;
                    //обновляем объект
                    //db.Users.Update(user);
                    //db.SaveChanges();
                }
                // выводим данные после обновления
                Console.WriteLine("\nДанные после редактирования: =============================================");
                var users = db.Users.ToList();
                foreach (User u in users)
                {
                    Console.WriteLine($"{u.Id}.{u.Name} - {u.Age}");
                }
            }

            // Удаление
            using (ApplicationContext db = new ApplicationContext())
            {
                // получаем первый объект
                User user = db.Users.FirstOrDefault();
                if (user != null)
                {
                    //удаляем объект
                    //db.Users.Remove(user);
                    //db.SaveChanges();
                }
                // выводим данные после обновления
                Console.WriteLine("\nДанные после удаления: ====================================================");
                var users = db.Users.ToList();
                foreach (User u in users)
                {
                    Console.WriteLine($"{u.Id}.{u.Name} - {u.Age}");
                }
            }
            // добавление данных
            using (ApplicationContext db = new ApplicationContext())
            {
                User user1 = new User { Name = "Aleksandr", Age = 33, Birth = new DateTime(1999, 10, 23) };
                User user2 = new User { Name = "Alice", Age = 26, Birth = new DateTime(2011, 11, 03) };

                //db.Users.AddRange(user1, user2);
                //db.SaveChanges();
            }
            Console.ReadLine();
        }
    }
}
