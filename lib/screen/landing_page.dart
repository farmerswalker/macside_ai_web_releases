import 'package:flutter/material.dart';
import 'package:macside_ai_web_releases/utils/custom_text.dart';
import 'package:macside_ai_web_releases/utils/util.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFEF4),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFEF4),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/app_icon.png'),
        ),
        title:
            const CustomText(text: 'MacSide AI', fontWeight: FontWeight.bold),
        centerTitle: false,
        actions: [
          GestureDetector(
            onTap: () => downloadMacSideAI(),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.black87,
              ),
              child: const CustomText(
                text: 'macOS版をダウンロード',
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 18),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 12),
              Container(
                height: 400,
                width: 700,
                alignment: Alignment.center,
                color: Colors.black,
                child:
                    const CustomText(text: '説明動画を貼る予定', color: Colors.white38),
              ),
              const SizedBox(height: 12),
              GestureDetector(
                onTap: () => downloadMacSideAI(),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 28),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black87,
                  ),
                  child: const CustomText(
                    text: 'macOS版をダウンロード（無料だよ！）',
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const SizedBox(
                width: 700,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: '・作業の邪魔をせずに一瞬でChat GPT、Claude、Geminiを開けるアプリだよ\n\n'
                          '・デスクトップの一番下端にカーソルを移動するだけでウィンドウが開けるよ\n'
                          '（デスクトップの右端のクリックでもウィンドウを開閉できるよ）\n\n'
                          '・キーボードのタイピング音が出せるよ\n\n'
                          '・どんなアプリのテキストでも選択して⌘+C+CすることですぐにAI検索できるよ\n\n'
                          '・ウィンドウで右クリックすれば即時メモが開けるよ\n\n'
                          '・fnキーでクリップボードの履歴など見れるよ\n\n'
                          '・ウィンドウの左上の方にある「範囲スクショ」でスクショした場合、\n'
                          '　そこに文字が映っていれば文字起こししてくれるよ',
                      size: 18,
                    ),
                    SizedBox(height: 24),
                    CustomText(
                      text: '・zipをダウンロードしたらダブルクリックでアプリを解凍してください。\n\n'
                          '・ClaudeのログインだけはGoogle認証でエラーになるので\n'
                          '　「メールアドレス」からログインしてください',
                      size: 18,
                      color: Colors.redAccent,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
