using Microsoft.EntityFrameworkCore;
using MVCProject.Models;

namespace MVCProject.Repository
{
    public class CartRepository : ICartRepository
    {
        Cart mycart = new Cart();

        public Context context;
        private List<Cart> carts = new List<Cart>();
        public CartRepository(Context context)
        {
            this.context = context;
        }

        // Get Cart ID
        public Cart GetCartId(int id)
        {
            return context.Cart.FirstOrDefault(c => c.Id == id);
        }
        
        // عرض المنتجات
        public List<Produc_Supplier> GetCartItems(int id)
        {
            return context.Produc_Suppliers.ToList();
        }
 
        // اضافة منتج الي الكارت
        public void AddToCart(Product product)
        {
            //var cartItem = context.Carts.FirstOrDefault(
            //    c => c.Id == product.Id);
            //    cartItem.Quantity += 1;
            //    context.SaveChanges();
        }


        // مسح منتج من الكارت
        public void RemoveFromCart(int id)
        {
            var cartItem = context.Cart.FirstOrDefault(
                c => c.Id == id);

            if (cartItem != null)
            {
                if (cartItem.Quantity > 1)
                {
                    cartItem.Quantity--;
                }
                else
                {
                    context.Cart.Remove(cartItem);
                }
                context.SaveChanges();
            }
        }


        public int GetCartItemCount()
        {
            return carts.Count();
        }

        public void EditCart(Produc_Supplier product, int id)
        {
            Cart cart = GetCartId(id);
            cart.Quantity = product.Quantity;

            cart.Total = cart.Quantity * product.Price;
           
            
            context.SaveChanges();
        }
       
    }
}
