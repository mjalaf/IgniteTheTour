﻿// <auto-generated />
using System;
using InventoryService.Api.Database;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace InventoryService.Api.Migrations
{
    [DbContext(typeof(InventoryContext))]
    partial class InventoryContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.1.4-rtm-31024")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("InventoryService.Api.Models.InventoryItem", b =>
                {
                    b.Property<string>("Sku")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("Modified");

                    b.Property<int>("Quantity");

                    b.HasKey("Sku");

                    b.ToTable("Inventory");
                });

            modelBuilder.Entity("InventoryService.Api.Models.SecretUser", b =>
                {
                    b.Property<string>("Username")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Password");

                    b.HasKey("Username");

                    b.ToTable("SecretUsers");
                });
#pragma warning restore 612, 618
        }
    }
}
