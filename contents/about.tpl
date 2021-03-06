<h1>Hatoholの概要</h1>

<h2>Hatoholとは</h2>
<p>
	Hatoholは、システム監視やジョブ管理やインシデント管理、ログ管理など、様々な運用管理ツールのハブとなるツールです。<br>
	現段階ではシステム監視ツールの統合機能を持っており、複数のZabbixとNagiosで監視を行っている場合に、それらの蓄積する監視情報を集約して表示する機能を持っています。<br>
	今後その他の種類のツールに対応することで、あらゆる機能を備えた統合運用管理ツールと同等の機能を実現していく予定です。 
</p>

<h2>スケールアウト可能な運用管理環境を実現</h2>
<p>
	監視対象機器の台数により、監視サーバーに必要なスペックやネットワーク帯域は異なります。従って、当初想定していた台数よりも監視対象機器が多くなってしまった場合、監視サーバーを買い換え、環境を再構築し、或いは別のネットワーク回線を用意しなければならなくなる場合があります。<br>
	しかし、それは経済的にも労力的にも非効率的です。そこで、元々ある監視サーバーに加えて、もう1台監視サーバーを追加する、という方法を取る場合があります。<br>
	この場合、2台の監視サーバーの情報を閲覧するためのインターフェースは、それぞれの監視サーバーごとに独立していますので、1つ1つ見ていかなければなりません。監視サーバーが2~3台程度であっても少々混乱しますし、10台、20台、或いはそれ以上の監視サーバーがある場合は、もはや非現実的です。<br>
	Hatoholはそれぞれの監視サーバーから情報を集め、1つの画面上で表示します。これにより、スマートな監視のスケールアウトが実現されます。
</p>
<div class="img">
	<img alt="Hatoholによる分散監視の概要図" src="/assets/images/diagrams/distributed-monitoring.png">
	<p>Hatoholによる分散監視の概要</p>
</div>

<h2>軽快な動作</h2>
<p>
	多くの監視サーバーの情報をまとめて表示するHatoholですが、そのサーバースペックはそれほど高いものである必要はありません。Hatoholが監視サーバーから取得してくる情報は、表示に必要な最低限だけです。障害通知メールなどの送信も、監視サーバーが行いますので、多少監視対象サーバーが増えたところで、オーバーフローすることはありません。
</p>

<h2>分散</h2>
<p>
	例えば1台のZabbix Serverで全てのホストを監視している場合、ネットワーク接続がオフラインになってしまうと、その間に取得した監視データは、Zabbix Serverに送信することができず、消失してしまいます。監視対象機器側で監視データを保存しておくことはできないためです。<br>
	一方Hatoholを用いた場合、Hatoholと監視サーバーの間のネットワーク接続が切れても、データは失われません。監視データはZabbix Serverなどに保存されるためです。<br>
	ですので、例えば東京にZabbix Serverを置き、大阪と北海道にある監視対象機器を監視するよりも、東京にHatoholを置き、大阪と北海道にそれぞれZabbix Serverを置いて、それぞれのLAN内の監視対象を監視させる方が、監視データが失われる可能性を低く抑えることができます。
</p>

<h2>様々なツールに対応</h2>
<p>
	現在のところはZabbixとNagiosにのみ対応していますが、今後は他のツールとの連携も予定されています。現在検討されているのは、ジョブ管理ツールとしてHinemos、インシデント管理ツールとしてRedmine、ログ管理ツールとしてfluentdなどです。これらのツールと連携することにより、OSSだけで運用管理を全て賄えるようにすることを目指しています。
</p>
<div class="img">
	<img alt="Hatoholと様々な運用管理ツールの連携" src="/assets/images/diagrams/integrated-monitoring.png">
	<p>様々な運用管理ツールとの連携を目指しています</p>
</div>

<!--
<h2>Project Hatoholとは</h2>
<p>
	Project Hatoholは、Hatoholの開発や、プロモーションなどを行っています。
</p>
-->
