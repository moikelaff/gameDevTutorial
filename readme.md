1. Apa saja pesan log yang dicetak pada panel Output?
<br>A:  ‘Reached objective!'

2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
<br>A:  ‘Reached objective!’

3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
<br>A: iya, karena jika object BlueShip menyentuh Objective Area maka log akan mencetak ‘reached objective’ mengikuti script dibawah:
```
extends Area2D
func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		print("Reached objective!")
```
<br>

4. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?
<br>A: Sprite adalah child node yang merepresentasi visual dari objek yang ada di dalam game.

5. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?
<br>A: RigidBody2D adalah node yang memungkinkan objek bergerak dan bereaksi terhadap gerakan, sedangkan StaticBody2D adalah node yang tidak bergerak dan tidak bereaksi terhadap gerakan.

6. Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?
<br>A: Tidak ada yang terjadi, namun saya mempunyai asumsi bahwa jika masa diubah maka yang berubah adalah bagaimana RigidBody lain mempengaruhi objek tersebut. seperti suatu rigidBody ingin mendorong RigidBody lainnya.

7. Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?
<br>A: BlueShip jatuh menembus platformnya

8. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?
<br>A: Visualisasi berubah sesuai manipulasi, contohnya atribut position mengatur posisi x & y pada scene, etc.

9. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
<br>A: Karena posisi pada stoneplatform masih relatif (tidak fixed). posisi actual dari StonePlatform & StonePlatform2 mengikuti rumus:
```
x = x+a
y = y+b
dimana (a,b) adalah posisi (x,y) dari PlatformBlue
```











