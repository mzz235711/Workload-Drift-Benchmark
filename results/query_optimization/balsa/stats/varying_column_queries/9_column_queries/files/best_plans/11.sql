/*+ MergeJoin(v u p)
 HashJoin(u p)
 IndexScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score=1 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount<=18 AND p.FavoriteCount<=11 AND p.CreationDate>='2010-07-19 22:31:12'::timestamp AND u.Views>=0 AND u.Views<=18 AND u.DownVotes=0;

