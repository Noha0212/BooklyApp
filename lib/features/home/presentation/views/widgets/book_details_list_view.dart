import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.only(right: 10),
            child: CustomBookImage(
              imageUrl:
                  'https://www.google.com/imgres?q=blue&imgurl=https%3A%2F%2Fwww.geaves.com%2Fmedia%2Fcatalog%2Fproduct%2Fcache%2Facd115faf6a75f6594ab269049b631ed%2F3%2F1%2F3133_8.webp&imgrefurl=https%3A%2F%2Fwww.geaves.com%2Fsky-blue&docid=A3S3zzvErasj1M&tbnid=Dvgu7QserxCFGM&vet=12ahUKEwiBzZP_sdqIAxVF0QIHHeGMFu0QM3oECEwQAA..i&w=500&h=350&hcb=2&ved=2ahUKEwiBzZP_sdqIAxVF0QIHHeGMFu0QM3oECEwQAA',
            ),
          );
        },
      ),
    );
  }
}
