/*+ HashJoin(v pl p u)
 HashJoin(pl p u)
 HashJoin(pl p)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((v ((pl p) u))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate>='2011-07-11 22:44:28'::timestamp AND pl.CreationDate<='2014-09-09 15:01:33'::timestamp AND p.Score<=17 AND u.Views=0 AND u.DownVotes<=0 AND u.CreationDate>='2010-09-16 13:03:52'::timestamp AND u.CreationDate<='2014-08-13 12:54:32'::timestamp;

