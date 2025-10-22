/*+ NestLoop(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading(((c (p pl)) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=1 AND p.PostTypeId=1 AND p.Score<=15 AND pl.CreationDate>='2010-09-21 12:01:49'::timestamp AND u.DownVotes=0 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-11 13:13:07'::timestamp;

