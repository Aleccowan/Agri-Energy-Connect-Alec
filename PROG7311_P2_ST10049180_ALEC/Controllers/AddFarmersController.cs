using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PROG7311_P2_ST10049180_ALEC.Models;

namespace PROG7311_P2_ST10049180_ALEC.Controllers
{
    public class AddFarmersController : Controller
    {
        private readonly UserManager<ApplicationUser> _userManager;

        public AddFarmersController(UserManager<ApplicationUser> userManager)
        {
            _userManager = userManager;
        }

        public async Task<IActionResult> Index()
        {
            //gets all the users from the database
            var users = await _userManager.Users.ToListAsync();
            var viewModels = users.Select(u => new UserViewModel
            {
                Id = u.Id,
                Name = u.Name,
                Email = u.Email,
                EmailConfirmed = u.EmailConfirmed
            });

            return View(viewModels);
        }


        public async Task<IActionResult> Edit(string id)
        {
            var user = await _userManager.FindByIdAsync(id);
            if (user == null)
            {
                return NotFound();
            }

            var viewModel = new UserViewModel
            {
                Id = user.Id,
                Name = user.Name,
                Email = user.Email,
                EmailConfirmed = user.EmailConfirmed
            };

            return View(viewModel);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, UserViewModel viewModel)
        {
            if (id != viewModel.Id)
            {
                return NotFound();
            }

            var user = await _userManager.FindByIdAsync(id);
            if (user == null)
            {
                return NotFound();
            }

            //updates database to authorize the farmer
            user.EmailConfirmed = viewModel.EmailConfirmed;
            var result = await _userManager.UpdateAsync(user);


           


            if (result.Succeeded)
            {
                return RedirectToAction(nameof(Index));
            }

            return View(viewModel);
        }


    }
}
