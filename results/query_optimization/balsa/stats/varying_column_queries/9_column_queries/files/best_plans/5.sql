/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND pl.CreationDate>='2010-09-24 22:08:31'::timestamp AND pl.CreationDate<='2014-07-08 07:41:36'::timestamp AND u.Reputation>=1 AND u.Reputation<=334 AND u.Views<=134 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=190;

