 <!-- inclusion du fichier head_assets.php (meta balises et styles) -->
    <?php require 'partials/head_assets.php'; ?>

<hr>
 <div class="fiche-produit">
     <div class="content-card">
         <div id="container">
             <div class="product-details">
                 <h5 >Catégorie :
                     <?php foreach($categories as $category): ?>
                         <?php if($category['id'] == $selectedProduct['category_id']): ?>
                             <?= $category['name']; ?>
                         <?php endif; ?>
                     <?php endforeach; ?>
                 </h5>
                 <h3><?= $selectedProduct['name']; ?></h3>
                 <div class="information"><?= $selectedProduct['description']; ?></div>
                 <div class="">
                         <span class="price"><?= $selectedProduct['price']; ?> €</span>

                         <form method="post" action="index.php?page=cart&action=ajouterPanier&product_id=<?= $selectedProduct['id']; ?>">
                             <select name="quantity" id="quantity">
                                 <?php for($i =1; $i<=$selectedProduct['quantity']; $i++):  ?>
                                 <option value="<?= $i ?>"><?= $i ?></option>
                                 <?php endfor; ?>
                             </select>
                             <input type="submit" value="Ajouter au panier" >
                         </form>
                 </div>
             </div>
             <div class="product-image">
                 <img src="./assets/images/<?= $selectedProduct['image']; ?>"  alt="<?= $selectedProduct['name']; ?>" >
             </div>
         </div>
     </div>
     <div class="mini-images">
         <?php foreach($images as $image): ?>
             <?php if($selectedProduct['id'] == $image['products_id']): ?>
         <div class="zoom">
         <div class="child-image">
                     <img  src="./assets/images/<?= $image['name']; ?>" alt="<?= $image['name']; ?>">
                 </div>
             <?php endif; ?>
         <?php endforeach; ?>
         </div>
     </div>
 </div>
 </style>
