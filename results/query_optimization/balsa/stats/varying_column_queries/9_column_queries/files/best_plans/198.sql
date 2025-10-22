/*+ HashJoin(v p u pl)
 HashJoin(p u pl)
 HashJoin(p u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 SeqScan(pl)
 Leading((v ((p u) pl))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=22 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND v.VoteTypeId=2 AND u.DownVotes<=1;

