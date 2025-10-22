/*+ HashJoin(v u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((v (u (pl p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate<='2014-08-12 23:19:12'::timestamp AND p.Score>=-9 AND p.CommentCount<=12 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=11 AND u.UpVotes<=7;

