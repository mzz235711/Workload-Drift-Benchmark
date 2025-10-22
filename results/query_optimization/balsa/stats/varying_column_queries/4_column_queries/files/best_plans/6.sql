/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.CommentCount<=11 AND p.CreationDate>='2010-07-21 15:38:11'::timestamp AND p.CreationDate<='2014-09-09 18:14:50'::timestamp AND u.Views>=0;

