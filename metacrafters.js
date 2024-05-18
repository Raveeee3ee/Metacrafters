
let nftCollection = [];

function mintNFT(name, creator, description, image) {
    let nft = {
        name: name,
        creator: creator,
        description: description,
        image: image
    };
    nftCollection.push(nft);
}

function listNFTs() {
    nftCollection.forEach(nft => {
        console.log("Name: " + nft.name);
        console.log("Creator: " + nft.creator);
        console.log("Description: " + nft.description);
        console.log("Image: " + nft.image);
        console.log("-------------------------");
    });
}

function getTotalSupply() {
    return nftCollection.length;
}

mintNFT("Doge Coin", "Rhava", "CryptoCoin", "image1.png");
mintNFT("Meme Coin", "Rave", "CryptoCoin", "image2.png");

console.log("List of all NFTs:");
listNFTs();

console.log("Total Supply of NFTs: " + getTotalSupply());
