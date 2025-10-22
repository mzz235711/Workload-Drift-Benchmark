/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate<='2014-08-22 14:43:39'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CommentCount<=9 AND p.FavoriteCount=0 AND p.CreationDate>='2010-08-13 05:51:02'::timestamp AND p.CreationDate<='2014-09-12 07:47:34'::timestamp AND u.Views>=0 AND u.CreationDate>='2010-11-26 13:15:57'::timestamp;

