﻿using System;
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

                db.Users.AddRange(user1, user2);
                db.SaveChanges();
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

            using (entityContext db = new entityContext())
            {
                var books = db.Books.ToList();
                Console.WriteLine("Список книг:");
                foreach (Books u in books)
                {
                    Console.WriteLine($"{u.Id}.{u.Name} - {u.Author}, {u.DateCreation.ToString()}, {u.Pages.ToString()}");
                }
                Console.ReadLine();
            }
        }
    }
}
