/*+ HashJoin(u v p pl)
 MergeJoin(v p pl)
 HashJoin(p pl)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (v (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate>='2011-11-29 15:13:19'::timestamp AND p.CommentCount>=0 AND v.BountyAmount>=0 AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes<=169;

