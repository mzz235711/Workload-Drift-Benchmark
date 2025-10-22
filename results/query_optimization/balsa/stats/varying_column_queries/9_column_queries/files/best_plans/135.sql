/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-12-28 22:01:12'::timestamp AND ph.CreationDate<='2014-09-09 19:53:30'::timestamp AND p.ViewCount<=3839 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-22 05:13:17'::timestamp AND p.CreationDate<='2014-08-29 11:14:26'::timestamp AND u.CreationDate<='2014-08-26 21:35:42'::timestamp;

