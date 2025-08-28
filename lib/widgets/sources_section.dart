import 'package:flutter/material.dart';
import 'package:xeno/services/chat_web_service.dart';
import 'package:xeno/theme/colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SourceSection extends StatefulWidget {
  const SourceSection({super.key});

  @override
  State<SourceSection> createState() => _SourceSectionState();
}

class _SourceSectionState extends State<SourceSection> {
  bool isLoading = true;
  List searchResults= [
    {
      'title': 'Ind vs Aus Score 4th Test',
      'url': 'https://www.moneycontrol.com/sports/cricket/ind-vs-aus-live-score-4th-test-shubman-gill-dropped-australia-win-toss-opt-to-bat-liveblog-12897631.html',
    },
    {
      'title': 'Ind vs Aus Live Boxing Day Test',
      'url':
      'https://timesofindia.indiatimes.com/sports/cricket/india-vs-australia-live-score-boxing-day-test-2024-ind-vs-aus-4th-test-day-1-live-streaming-online/liveblog/116663401.cms',
    },
    {
      'title': 'Ind vs Aus - 4 Australian Batters Score Half Centuries',
      'url':
      'https://economictimes.indiatimes.com/news/sports/ind-vs-aus-four-australian-batters-score-half-centuries-in-boxing-day-test-jasprit-bumrah-leads-indias-fightback/articleshow/116674365.cms',
    }
  ]
}