/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate>='2010-07-23 01:44:22'::timestamp AND u.Views>=0 AND u.Views<=112;

