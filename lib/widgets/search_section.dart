import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xeno/pages/chat_page.dart';
import 'package:xeno/services/chat_web_service.dart';
import 'package:xeno/theme/colors.dart';
import 'package:xeno/widgets/search_bar_button.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @overrideState<SearchSection> createState() => _SearchSectionState();
}

class _searchsection extends state<_searchsection> {
  final querycontroller =TextEditingController();

  @override
  void dispose() {
    super.dispose();
    querycontroller.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'where knowledge begins' ,
          style: GoogleFonts.ibmPleMono(
            fontSize:40,
            fontWeight:FontWeight.w400,
            height:1.2,
            letterSpacing:0.5
          ),
        ),
        const SizedBox(height: 32),
        Container(
          width: 700,
          decoration: BoxDecoration(
            color: AppColors.searchBar,
            border: Border.all(
              color: Appcolor.searchBarBorder,
              width: 1.5,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: querycontroller,
                  decoration: InputDecoration(
                    hintText: 'Search anything...',
                    color: AppColors.textGrey,
                    fontSize: 16,
                  ),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
    ),
    Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
    children: [
      SerachBarButton(
    icon: Icons.auto_awesome_outlined,
    text: 'Attach',
    ),
    const Spacer(),
    SearchBarButton(icon: Icons.add_circle_outline_outlined, text: 'Attach')
    const Spacer(),
    GestureDetector(
    onTap: () {
      chatWebService().chat(querycontroller.text.trim())
    }
    )
    ]
    )
    )
            ]
          )
        )
      ]
    )
  }
}