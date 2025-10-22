/*+ HashJoin(pl p u)
 HashJoin(p u)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((pl (p u))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND u.Reputation=6 AND u.Views>=0 AND u.Views<=66 AND u.UpVotes<=368 AND u.CreationDate<='2014-09-08 15:48:59'::timestamp;

