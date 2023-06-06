using MVCProject.Models;

namespace MVCProject.Repository
{
    public interface ICartRepository
    {
        Cart GetCartId(int id);
        List<Produc_Supplier> GetCartItems(int id);
        void AddToCart(Product product);
        void RemoveFromCart(int id);
        int GetCartItemCount();
        void EditCart(Produc_Supplier product, int id);

    }
}
