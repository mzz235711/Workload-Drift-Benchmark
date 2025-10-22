/*+ HashJoin(u pl p v)
 MergeJoin(pl p v)
 HashJoin(p v)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((u (pl (p v)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-27 17:00:27'::timestamp AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CreationDate<='2014-09-05 07:18:43'::timestamp AND v.BountyAmount>=0 AND u.DownVotes=0;

