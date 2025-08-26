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
      ]
    )
  }
}