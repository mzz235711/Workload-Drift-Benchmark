/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=46 AND p.AnswerCount<=14 AND p.FavoriteCount<=15 AND u.Views<=20 AND u.DownVotes=0 AND u.CreationDate>='2010-07-26 19:53:07'::timestamp AND u.CreationDate<='2014-07-24 13:51:27'::timestamp AND b.Date>='2010-07-27 09:13:45'::timestamp;

