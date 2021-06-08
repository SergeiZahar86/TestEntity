using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace TestEntity
{
    public partial class Purchases
    {
        public int UserId { get; set; }
        public int BookId { get; set; }

        public virtual Books Book { get; set; }
        public virtual Users User { get; set; }
    }
}
