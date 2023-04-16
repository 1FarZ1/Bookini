import 'package:bookini/core/consts.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomListView(),
          Text(
            "Best Seller",
            style: Styles.textStyle18,
          ),
          SizedBox(height: 20),
          ListViewBooks()
        ],
      ),
    );
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .35,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const BookCard();
        },
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          image: const DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class ListViewBooks extends StatelessWidget {
  const ListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return const BestSellerBookCard();
        },
      ),
    );
  }
}

class BestSellerBookCard extends StatelessWidget {
  const BestSellerBookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 3.2 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.height * .25,
                child: Text(
                  "Harry Potter and the Goblet of Fire",
                  style:
                      Styles.textStyle20.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                "JK Rowling",
                style: Styles.textStyle14,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    "19,19 \$ ",
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  Text(""),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
