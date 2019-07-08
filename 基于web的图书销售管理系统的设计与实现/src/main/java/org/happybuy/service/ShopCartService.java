package org.happybuy.service;

import java.util.List;

import org.happybuy.pojo.ShopCart;
import org.happybuy.pojo.ShopCartExample;
import org.happybuy.pojo.ShopCartKey;

public interface ShopCartService {
    public void addShopCart(ShopCart shopCart);

    public List<ShopCart> selectByExample(ShopCartExample shopCartExample);

    public void deleteByKey(ShopCartKey shopCartKey);

    public void updateCartByKey(ShopCart shopCart);

    public ShopCart selectCartByKey(ShopCartKey shopCartKey);
}
