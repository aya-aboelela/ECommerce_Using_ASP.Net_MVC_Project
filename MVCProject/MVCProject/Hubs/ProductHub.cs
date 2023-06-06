using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.SignalR;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MVCProject.Models;
using Microsoft.AspNetCore.CookiePolicy;

namespace MVCProject.Hubs
{
    public class ProductHub:Hub
    {
        Context context = new Context();
        private readonly UserManager<ApplicationUser> userManager;

        public ProductHub(Context context, UserManager<ApplicationUser> userManager)
        {
            this.context = context;
            this.userManager = userManager;
        }

        public void WriteComment(string text, int product_id)
        {
            //save db Logic
            Comment comment = new Comment();
            // comment.UserName = userManager.GetUserAsync(HttpContext.User).Result.UserName;
            String userId = userManager.GetUserAsync(Context.User).Result.Id;
            comment.UserName =userManager.FindByIdAsync(userId).Result.ToString(); 

            comment.Text = text;
          
            comment.Prod_SupId = product_id;
        
            comment.CustomerId = "1"; //userManager.GetUserAsync(Context.User).Result.Id;

            context.Comments.Add(comment);
            context.SaveChanges();

            //notify  Another Online Client
            Clients.All.SendAsync("NewCommentNotify", comment);
        }


        public void Connect(string name)
        {

            Clients.All.SendAsync("NewUser", name, Context.ConnectionId);
        }

        //[Authorize]
        public override Task OnConnectedAsync()
        {
            /*  string name = Context.User.Identity.Name; */  // Name Of User From Login
            string name = "No Name";
            Clients.All.SendAsync("NewProduct", name, Context.ConnectionId);
            return base.OnConnectedAsync();
        }
    }
}
