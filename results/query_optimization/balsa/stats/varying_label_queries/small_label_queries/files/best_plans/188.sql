/*+ HashJoin(p pl u)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading(((p pl) u)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND pl.LinkTypeId=1 AND u.Reputation<=206 AND u.Views>=0 AND u.CreationDate>='2011-03-07 19:10:54'::timestamp AND u.CreationDate<='2014-08-31 23:32:00'::timestamp;

