INSERT INTO Artists (ArtistID, NameSinger ,Label ,Member)
VALUES 
('15','Vansire','Vansire the Band','2'),
('16','HONNE','HONNE','2'),
('17','LANDOKMAI','Whattheduck','2'),
('18','Selina & Sirinya','Selina & Sirinya Official','2'),
('19','YENTED','notbad music','7');

INSERT INTO Albums (AlbumID, ArtistID , NameAlbum , Released , ImageAlbum ,StyleID)
VALUES 
('101', '15', 'Angel Youth', '2018', '401'),
('102', '16', 'no song without you', '2020', '402'),
('103', '16', 'nswy: dream (edits)', '2020', '402'),
('104', '19', 'Antifungal', '2018', '404'),
('105', '17', 'Over The Sun', '2020', '405'),
('106', '18', 'Still Together', '2020', '403');

INSERT INTO Styles (StyleID , StyleSong)
VALUES 
('401','Lo-Fi'),
('402','Folksong'),
('403','Electro-pop'),
('404','Indy Pop R&B'),
('405','Indy Dream-pop');

INSERT INTO Songs (SongID, ArtistID, AlbumID, NameSong, Lengths ,Lyrics)
VALUES 

('207','15','101','KW','3:17',
'We’re floating over the district
I’m buoyed by winsome esprit
The stone arch bridge and the skyline
A tilt shift blur to the scene
Some headlights highlight the driveway
But she doesn’t turn to see
The details in our periphery
While shadows swell and recede

Droll city blocks and curbs
They all leave my head unnerved
Things felt that probably were
Thoughts I would say to her

But all lightrails motor fast
One glance and a moment’s passed
View life through tinted glass
Left with one printed pass

And now it’s me and the satellites
Halfway home at night
Fly from my line of sight
I’m sad but it’s alright
'),

('208','15','101','Nice to See You (ft. Floor Cry)','3:01',
'Nice to see you
How you doing
Did you know youre
Really something

You make me feel things
I dont believe in
Its all up in my heart
And all up in my spine those chills

I spose someday these roads will reach the sea
Its safe to say theyre tailor-made for replaying scenes
But Im too pensive
To decide whats real
All cause you left me with a heart chock-full of chills

In the morning sun
You and I are one
Fingers through my hair
Feel them everywhere
Dont know what to think
Am I still dreaming
Youre so perfect baby were you made for me

Nice to see you
How you doing
Did you know youre
Really something

You make me feel things
I dont believe in
Its all up in my heart
and all up in my spine those chills

Hope it works out
In the long run
I think about you and
Then the month gone

I ll raise the issue in
Tangential love songs
Its all up in my heart
And all up in my spine those chills

Those chills
Ah, those chills
'),

('209','18','106','เผลอสุขใจ','4:16',
'เธอนอนอยู่ข้างลำธารกับเงาต้นไม้น้อย ใหญ่ๆ มากมาย 
มีผีเสื้อบินโฉบเอากลิ่น พื้นดินหินทราย รอบกาย 
อากาศเบา เบา กำลังร้อน พอดีสายลม ผ่านมา
ฉันนั่งถอดเสื้อแกะสลัก เศษไม้สักตาม จินตนาการ

มองเห็นมะม่วงเก็บเอามาจิ๋มเกลือน้ำตาลสว่างตา 
ไม่รู้วัน  ไม่รู้คืน  หรือปี แค่เวลา ที่เลยผ่าน  
* อาจไม่มีเหตุผลใด และอาจจะเป็นเหตุผลได้ 
ที่ทำให้ฉันเผลอสุขใจ ในช่วงเวลาเหล่านั้น 

**ที่ทำให้ฉัน เผลอ เผลอ เผลอสุขใจ เผลอ เผลอ สุขใจ
'),

('210','16','102','by my side','4:13',
'You were there every time
Every time that I needed a shoulder
And you kept me warm
When my world grew darker and colder
You gave your strength
When mine had gone
And I could not go on
Where were you when
I hurt the most?
Where were you when
I needed hope?
I needed you close
You were by my side
Where were you?
Where were you?
You were by my side
Where were you?
Where were you?
You were by my side
You pick me up
Anytime that I start sinking lower
And I think to myself
What would life be if I didnt know ya?
You were the spark
That lit the path to carry on
Where were you when
I hurt the most?
Where were you when
I needed hope?
I needed you close
You were by my side
Where were you?
Where were you?
You were by my side
Where were you?
Where were you?
You were by my side
You were by my side
So sweet
Sweet as love you gave to me
And I swear, I swear oh
That I will love you till the end
You were by my side
You were by my side (you were by my side, you were by my side)
You were by my side
'),

('211','16','103','la la la that’s how it goes','3:41',
'I wont give up on you
If you will never give up on me
Anytime that you''re off the beat
I''ll put you on the groove and in key

I''m following you
If you are always following me
Any time that you hum it wrong
I''ll help you sing the right melody
It goes

La la la, la la la-la-la
La la la, la la la-la-la
Ooh, ooh
That''s how it goes

If things go bad for you
Then things are going bad for me
We''re in this thing together
I couldn''t think of a better team

And when the world gets heavy
The weight has got you down on your knees
It''s okay to say F it
If you just remember this melody
It goes

La la la, la la la-la-la
La la la, la la la-la-la
Ooh, ooh
It goes
La la la, la la la-la-la
La la la, la la la-la-la
Ooh, ooh
That''s how it goes

When the clouds above your head
And the sun''s not breaking through
You know I''ll be there to sing this song for you
And it goes

La la la, la la la-la-la
La la la, la la la-la-la
Oh, that''s how it goes

La la la, la la la-la-la (That''s how it goes)
La la la, la la la-la-la (That''s how it goes)
La la la, la la la-la-la (That''s how it goes)
La la la, la la la-la-la (That''s how it goes)
La la la, la la la-la-la (That''s how it goes)
La la la, la la la-la-la (That''s how it goes)
'),

('212','19','104','ห่าง (Aloof)','3:45',
'อยากให้เธอเข้าใจ
ไม่เคยต้องการให้เราสองคนต้องจบแบบนี้
สิ่งหนึ่งที่เธอก็รู้ดี ว่าฉันนั้นต้องการแค่เธอก็พอ

ทางที่เราต้องไปต่อ
จะฉุดให้รอและหวังให้เธอไม่เสียใจกับฉัน
ได้โปรดหยุดอยู่ตรงนั้น
จะออกจากฝันของเธอและหายไป

ห่างกันเพื่อหายไป
จากวันที่เราต้องไกล
ทำให้ฉันเข้าใจ
อาจจะเป็นเพราะบางอย่างในชีวิต
ทำให้ต้องไกลไม่อาจจะใกล้ชิด
ข้ออ้างมากมายที่ฉันวุ่นวาย
หามันเพื่อกลายเป็นคนที่เธอไม่รัก

เหมือนไม่รู้สึกอะไรทั้งนั้น
ทั้งที่ฉันเจ็บปวดใจทุกวัน
ทุกสิ่งที่เธอฝันฉันทำให้เสียใจ

อยากให้เธอเข้าใจ
ไม่เคยต้องการให้เราสองคนต้องจบแบบนี้
สิ่งหนึ่งที่เธอก็รู้ดี ว่าฉันนั้นต้องการแค่เธอก็พอ

ทางที่เราต้องไปต่อ
ฉันรู้ว่าเรานั้นควรพอ
ไม่อาจบอกเธอให้รอ
อยากให้เธอได้รู้
การที่ชีวิต เธอไม่มีฉันอยู่
เธอเองก็รู้ว่าดีกว่า...
'),

('213','19','104','ถ้าหาก','4:29',
'อยากให้เธอเข้าใจ
ไม่เคยต้องการให้เราสองคนต้องจบแบบนี้
สิ่งหนึ่งที่เธอก็รู้ดี ว่าฉันนั้นต้องการแค่เธอก็พอ

ทางที่เราต้องไปต่อ
จะฉุดให้รอและหวังให้เธอไม่เสียใจกับฉัน
ได้โปรดหยุดอยู่ตรงนั้น
จะออกจากฝันของเธอและหายไป

ห่างกันเพื่อหายไป
จากวันที่เราต้องไกล
ทำให้ฉันเข้าใจ
อาจจะเป็นเพราะบางอย่างในชีวิต
ทำให้ต้องไกลไม่อาจจะใกล้ชิด
ข้ออ้างมากมายที่ฉันวุ่นวาย
หามันเพื่อกลายเป็นคนที่เธอไม่รัก

เหมือนไม่รู้สึกอะไรทั้งนั้น
ทั้งที่ฉันเจ็บปวดใจทุกวัน
ทุกสิ่งที่เธอฝันฉันทำให้เสียใจ

อยากให้เธอเข้าใจ
ไม่เคยต้องการให้เราสองคนต้องจบแบบนี้
สิ่งหนึ่งที่เธอก็รู้ดี ว่าฉันนั้นต้องการแค่เธอก็พอ

ทางที่เราต้องไปต่อ
ฉันรู้ว่าเรานั้นควรพอ
ไม่อาจบอกเธอให้รอ
อยากให้เธอได้รู้
การที่ชีวิต เธอไม่มีฉันอยู่
เธอเองก็รู้ว่าดีกว่า...
'),

('214','17','105','ฟ้า','5:54',
'เย็น เย็นอยู่รอบกาย
หวิว ใจอยู่ข้างใน
มีสิ่งหนึ่งขาดหาย
ภาพฝันวันเก่า
ไม่มีเลยความหมาย ของสองเรา

ก่อนนั้น เคียงชิดใกล้กัน
คำสัญญาผูกใจ
ที่บอกว่าเราสอง จะรักและเข้าใจ
แต่ในเวลานี้ ใจของเธอ

เหมือนกับท้องฟ้าที่ไม่เคยเป็นเหมือนเดิมเลยสักวัน
ฉันร้องไห้กับความทุกข์ในคืนที่เงียบงัน และ

ยังนึกข้างใน เหตุใดจึงเปลี่ยน
เปลี่ยนทั้งหัวใจ ทำไม ทำไม
เพราะใจของคน สุดท้ายเธอก็คงจางหายไป

เหมือนกับท้องฟ้าที่ไม่เคยเป็นเหมือนเดิมเลยสักวัน
ฟ้าที่ขุ่นมัวจะพ้นผ่านไปได้สักวัน แม้

ยังนึกข้างใน เหตุใดจึงเปลี่ยน
เปลี่ยนทั้งหัวใจ ทำไม ทำไม
เพราะใจของคน สุดท้ายเธอก็คงจางหาย

ถามอยู่ข้างใน เหตุใดจึงเปลี่ยน
ไปหมดทั้งใจ เพราะอะไร

ถามอยู่ข้างใน เหตุใดจึงเปลี่ยน
ไปหมดทั้งใจ เพราะอะไร
'),

('215','17','105','Please be true','5:14',
'ฉันมีท้องฟ้ากว้างใหญ่สีคราม
ฉันมีเมฆขาว เคล้าหยาดฝนพรำ
และมีดอกไม้ มากมายร้อยพัน
มีเก็บไว้ เพื่อซื้อใจเธอทุกทาง

หากมีเวทมนต์ จะเสกดาวพร่างพรายให้เธอ
ถ้าฉันมีพลัง จะเสกเรื่องราวที่มี ให้เป็นจริง

Please be true

ฉันมี รองเท้าวิเศษ คู่ใจ
จะใส่ไว้ เข้าไปในฝันของเธอ
และมี แปรงสีวิเศษด้วยเออ
แต่งเติมฝันดีที่นี้นั้นมีแค่ความรัก

หากมีเวทมนต์จะเสก ดาวพร่างพรายให้เธอ
ถ้าฉันมีพลังจะเสก เรื่องราวที่มีให้เป็นจริง

Please be true

I love you
I hope, please be true
I love you
I hope, please be true
I love you
I hope, please be true
');