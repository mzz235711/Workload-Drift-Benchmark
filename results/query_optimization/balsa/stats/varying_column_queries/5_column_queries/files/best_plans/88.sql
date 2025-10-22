/*+ HashJoin(p pl u)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading(((p pl) u)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score<=68 AND p.CreationDate>='2010-08-09 19:53:30'::timestamp AND p.CreationDate<='2014-09-10 19:39:25'::timestamp AND u.UpVotes>=0 AND u.CreationDate<='2014-08-27 16:20:59'::timestamp;

