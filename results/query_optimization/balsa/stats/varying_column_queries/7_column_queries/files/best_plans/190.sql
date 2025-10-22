/*+ HashJoin(v u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-10-21 02:42:24'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.AnswerCount<=8 AND p.FavoriteCount<=4 AND u.DownVotes>=0;

