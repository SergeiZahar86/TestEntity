Необходимые компоненты:
1. Microsoft.EntityFrameworkCore.SqlServer
2. Pomelo.EntityFrameworkCore.MySql
3. MySql.Data.EntityFrameworkCore
4. https://stackoverflow.com/questions/50631210/mysql-with-entity-framework-6

Для MSSQL : Server=localhost\SQLEXPRESS;Database=master;Trusted_Connection=True;

Строка создания контекста по готовой базе:
	Scaffold-DbContext "server=127.0.0.1;port=3300;user=sergei;password=2712iwitn;database=entity;" Pomelo.EntityFrameworkCore.MySql





