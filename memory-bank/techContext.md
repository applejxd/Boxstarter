# Windows Setup 技術コンテキスト

## 使用技術

このプロジェクトでは、以下の主要な技術を使用しています：

### スクリプト言語

1. **PowerShell**: Windows環境での自動化の中心的なスクリプト言語
   - バージョン: PowerShell 7.x（Core）および Windows PowerShell 5.1をサポート
   - 用途: インストールスクリプト、設定スクリプト、ネットワーク設定など

2. **バッチファイル**: シンプルなコマンドラインスクリプト
   - 用途: 日常的なタスクの自動化、簡単なユーティリティ

3. **Python**: 一部のツールやスクリプトで使用
   - 用途: 設定ファイルの生成、データ処理など

### パッケージマネージャー

1. **Winget**: Microsoft公式のパッケージマネージャー
   - 用途: 主要なアプリケーションのインストール

2. **Scoop**: コマンドラインツール向けのパッケージマネージャー
   - 用途: 開発ツールやコマンドラインユーティリティのインストール

### キーボードカスタマイズ

1. **Keyhac**: Pythonベースのキーボードカスタマイズツール
   - 用途: Emacs風のキーバインド実装、アプリケーション固有のキーマップ

### ユーティリティツール

1. **Everything**: 高速ファイル検索ツール
   - 用途: システム全体のファイル検索

2. **Keypirinha**: アプリケーションランチャー
   - 用途: アプリケーションの起動、コマンドの実行

3. **QuickLook**: ファイルプレビューツール
   - 用途: ファイルの高速プレビュー

### 開発環境

1. **Visual Studio Code**: 主要なコードエディタ
   - 拡張機能: 各種言語サポート、Git連携など

2. **WSL2**: Windows Subsystem for Linux
   - 用途: Linux環境での開発作業

3. **CUDA**: NVIDIA GPUプログラミング環境
   - 用途: GPU対応アプリケーションの開発

## 技術的制約

1. **Windows依存**: このプロジェクトはWindows環境に特化しており、他のOSでは動作しません
2. **管理者権限**: 一部のスクリプトは管理者権限が必要です
3. **PowerShell実行ポリシー**: スクリプトを実行するには、適切なPowerShell実行ポリシーが必要です
4. **ハードウェア依存**: 一部の機能（特にCUDA関連）は特定のハードウェアが必要です

## 依存関係

### 外部ツール

1. **Keyhac**: キーボードカスタマイズに必要
2. **Everything**: ファイル検索機能に必要
3. **Keypirinha**: アプリケーションランチャー機能に必要
4. **Visual Studio Code**: 開発環境として推奨
5. **PowerShell 7**: 一部のスクリプトで推奨

### 内部依存関係

1. **deploy.ps1**: 多くの設定ファイルの配置に使用
2. **scripts/installer/scoop.ps1**: 他のScoopパッケージのインストールの前提条件
3. **scripts/installer/winget.ps1**: 他のWingetパッケージのインストールの前提条件
4. **config/profile.ps1**: PowerShell環境のカスタマイズに使用

## 開発環境のセットアップ

このプロジェクトの開発や使用には、以下の環境セットアップが推奨されます：

1. **Windows 10/11**: 最新バージョンのWindows
2. **PowerShell 7**: 最新バージョンのPowerShell Core
3. **Git**: バージョン管理用
4. **Visual Studio Code**: コード編集用
5. **管理者権限**: 一部のスクリプト実行に必要

## 技術的な決定理由

1. **PowerShellの採用**: Windowsネイティブの強力なスクリプト言語であり、システム設定の自動化に最適
2. **Keyhacの採用**: Pythonベースで柔軟性が高く、Emacs風のキーバインドを実現可能
3. **Winget/Scoopの採用**: コマンドラインからのソフトウェアインストールを自動化可能
4. **WSL2の活用**: WindowsでのLinux開発環境を提供し、クロスプラットフォーム開発をサポート
5. **バッチファイルの併用**: シンプルなタスクには、より軽量なバッチファイルを使用

## 将来の技術的方向性

1. **PowerShell 7への完全移行**: Windows PowerShellからPowerShell 7（Core）への移行
2. **Wingetの活用拡大**: Scoopからの段階的な移行
3. **WSL2との連携強化**: WindowsとLinux環境間のシームレスな連携
4. **コンテナ技術の活用**: Docker/WSL2を活用した開発環境の標準化
5. **自動テストの導入**: スクリプトの信頼性向上のための自動テスト
