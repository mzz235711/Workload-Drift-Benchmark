/*+ HashJoin(v p pl u)
 HashJoin(v p pl)
 HashJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 SeqScan(u)
 Leading((((v p) pl) u)) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.Score<=20 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.CreationDate>='2010-07-22 13:10:57'::timestamp AND v.VoteTypeId=2 AND u.UpVotes>=0;

