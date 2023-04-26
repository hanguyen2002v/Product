using Microsoft.AspNetCore.Identity;
using WebV.Models;
using WebV.Constants;
using System;
using System.Runtime.InteropServices;

namespace WebV.Models
{
    public class DbSeeder
    {
        public static async Task SeendRolesAndAdminAsync(IServiceProvider service)
        {
            //Seed Roles
            var userManager = service.GetService<UserManager<ApplicationUser>>();
            var roleManager = service.GetService<RoleManager<IdentityRole>>();
            await roleManager.CreateAsync(new IdentityRole(Roles.Admin.ToString()));
            await roleManager.CreateAsync(new IdentityRole(Roles.User.ToString()));
            await roleManager.CreateAsync(new IdentityRole(Roles.Staff.ToString()));

            // creating admin

            var user = new ApplicationUser
            {
                UserName = "admin@gmail.com",
                Email = "admin@gmail.com",
                Name = "Ha",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true
            };
            var userInDb = await userManager.FindByEmailAsync(user.Email);
            if (userInDb == null)
            {
                await userManager.CreateAsync(user, "Admin@123");
                await userManager.AddToRoleAsync(user, Roles.Admin.ToString());
            }

            // Create Staff
            var userStaff = new ApplicationUser
            {
                UserName = "staff@gmail.com",
                Email = "staff@gmail.com",
                Name = "Hung",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true
            };
            var usesStaffInDb = await userManager.FindByEmailAsync(userStaff.Email);
            if (usesStaffInDb == null)
            {
                await userManager.CreateAsync(userStaff, "Staff@123");
                await userManager.AddToRoleAsync(userStaff, Roles.Staff.ToString());
            }
        }
    }
}
