/*+ HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate>='2010-09-01 08:35:28'::timestamp AND c.CreationDate<='2014-09-03 17:28:06'::timestamp AND p.Score>=-1 AND p.Score<=20 AND p.ViewCount<=3690 AND p.CommentCount<=11 AND u.DownVotes>=0 AND u.CreationDate>='2010-12-17 11:10:51'::timestamp AND u.CreationDate<='2014-08-20 08:37:38'::timestamp;

